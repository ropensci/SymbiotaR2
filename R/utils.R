# Internal functions used for SymbiotaR2 package
#' @importFrom rjson fromJSON
#' @importFrom utils download.file
#' @importFrom httr verbose GET stop_for_status
#' @importFrom fs path_home
#' @importFrom curl curl_download

.parse.json <- function(url) {
  json <- stop_for_status(GET(url = url))
  return(fromJSON(json_str = as.character(json)))
}

.api.scaffold <- function(api.entry, url = NULL, id = NULL, page) {
  # Argument handling and setup
  if (is.null(url)) {
    url <- getOption("SymbiotaR2_url")
    if (is.null(url)) {
      stop("No Symbiota2 portal URL specified in defaults or function call")
    }
  }

  # Grab a specific id and return for processing
  if (!missing(id)) {
    if (!inherits(id, "numeric")) {
      stop("id must be a numeric")
    }
    complete_url <- paste0(url, api.entry, "/", id)
    robject <- .parse.json(complete_url)
    for (i in seq_along(robject)) {
      robject[i][sapply(robject[i], is.null)] <- NA
    }
    return(robject)
  }

  # Grabbing all from a page (default: starting at 1) and return for processing
  if (missing(page)) {
    page <- 1
    complete_url <- paste0(url, api.entry, "?page=", page)
    return(.parse.json(complete_url))
  } else {
    if (!inherits(page, "numeric")) {
      stop("Page must be a numeric")
    }
    complete_url <- paste0(url, api.entry, "?page=", page)
    return(.parse.json(complete_url))
  }
}

.page.to.dataframe <- function(robject) {
  # Takes the page robject and converts it to a data.frame to be returned
  robject <- robject$`hydra:member`
  for (i in seq_along(robject)) {
    robject[[i]][sapply(robject[[i]], is.null)] <- NA
  }
  robject <- sapply(robject, as.data.frame)
  return(robject)
}

.get.os <- function() {
  os <- Sys.info()["sysname"]
  if (os == "Darwin") {
    return("mac")
  }
  if (os == "Windows") {
    return("win")
  }
  if (grepl("linux", os, ignore.case = TRUE)) {
    return("linux")
  }
  stop("Cannot auto-detect system")
}

.check.url <- function(url) {
  failed <- TRUE
  # Check that url argument is a string
  if (!inherits(url, "character")) {
    stop("URL must be a character string")
  }
  tryCatch(
    {
      # Check that url refers to a valid website
      stop_for_status(GET(url))
      # Check that url refers to a Symbiota2 portal 
      # (by trying to pull Occurrence resource id = 1 from it)
      api.entry <- .check.api.entry(url)
      .parse.json(url = paste0(api.entry, "/occurrences/1"))
      failed <- FALSE
    },
    error = function(e) NA
  )
  if (failed) {
    stop("URL ", url, " cannot be reached; is it a valid Symbiota2 portal API?")
  }
  if (substr(url, nchar(url), nchar(url)) != "/") {
    url <- paste0(url, "/")
  }
  return(url)
}

# Function for removing trailing backslash from provided string
.check.api.entry <- function(api.entry) {
  if (substr(api.entry, nchar(api.entry), nchar(api.entry)) == "/") {
    api.entry <- substr(api.entry, 0, nchar(api.entry) - 1)
  }
  return(api.entry)
}

.get.url <- function(url = NULL) {
  if (is.null(url)) {
    url <- getOption("SymbiotaR2_url")
    if (is.null(url)) {
      stop("No Symbiota2 portal URL specified in defaults or function call")
    }
  }
  .check.url(url)
  return(url)
}
