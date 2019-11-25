.api.scaffold <- function(api.entry, url=NA, ID=NA, page=NA){
    # Argument handling and setup
    if(is.na(url)){
        url <- getOption("SymbiotaR2_url")
        if(is.null(url))
            stop("No Symbiota2 portal URL specified in defaults or function call")
    }
    dwn_file <- tempfile()

    # Grab a specific ID and return for processing
    if(!is.na(ID)){
        complete_url <- paste0(url,api.entry,"/",ID)
        download.file(url = complete_url, destfile = dwn_file)
        RObject <- fromJSON(file = dwn_file)
        for(i in seq_along(RObject))
          RObject[i][sapply(RObject[i], is.null)] <- NA
        return(RObject)
    }

    # Grabbing all from a page (default: starting at 1) and return for processing
    if(is.na(page))
        page <- 1
    complete_url <- paste0(url,api.entry,"?page=",page)
    download.file(url = complete_url, destfile = dwn_file)
    RObject <- fromJSON(file = dwn_file)
    return(RObject)
}

.page.to.dataframe <- function(RObject){
  # Takes the page RObject and converts it to a data.frame to be returned
  RObject <- RObject$`hydra:member`
  for(i in seq_along(RObject))
    RObject[[i]][sapply(RObject[[i]], is.null)] <- NA
  RObject <- sapply(RObject, as.data.frame)
  return(RObject)
}

.get.os <- function(){
    os <- Sys.info()["sysname"]
    if(os == "Darwin")
        return("mac")
    if(os == "Windows")
        return("win")
    if(grepl("linux", os, ignore.case=TRUE))
        return("linux")
    stop("Cannot auto-detect system")
}

.check.url <- function(url){
    failed <- TRUE
    tryCatch({
        download.file(url, tempfile(), quiet=TRUE)
        failed <- FALSE
    }, error = function(e) NA)
    if(failed)
        stop("URL ", url, " cannot be reached; is it a valid Symbiota2 portal API?")
    if(substr(url, nchar(url), nchar(url)) != "/")
        url <- paste0(url, "/")
    return(url)
}

.check.api.entry <- function(api.entry){
    if(substr(api.entry, nchar(api.entry), nchar(api.entry)) == "/")
        api.entry <- substr(api.entry, 0, nchar(api.entry)-1)
    return(api.entry)
}

.get.url <- function(url=NA){
    if(is.na(url)){
        url <- getOption("SymbiotaR2_url")
        if(is.null(url))
            stop("No Symbiota2 portal URL specified in defaults or function call")
    }
    .check.url(url)
    return(url)
}
