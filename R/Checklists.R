#' Retrieves Checklists resources from the Symbiota2 server
#'
#' Functions that retrieve Checklist resources
#' from the server previously connected to.
#' Each function either retrieves an individual resource or a page of resources,
#' depending on the arguments provided.
#'
#' @template SymbiotaR2
#' @name Checklists
#' @rdname Checklists
#' @export
ChecklistProjects <- function(id, page, url = NULL) {
  # Argument handling
  url <- .get.url(url)
  robject <- .api.scaffold(.check.api.entry("checklist/checklistprojects"), url, id, page)

  # id Download
  if (!missing(id)) {
    robject[sapply(robject, is.null)] <- NA
    return(robject)
  }

  # Page (specified or default) download
  if (!missing(page)) {
    robject <- robject$`hydra:member`
    for (i in seq_along(robject)) {
      robject[[i]][sapply(robject[[i]], is.null)] <- NA
    }
    output <- as.data.frame(do.call(rbind, robject))
    return(output)
  }
}

#' @export
#' @rdname Checklists
Coordinates <- function(id, page, url = NULL) {
  # Argument handling
  url <- .get.url(url)
  robject <- .api.scaffold(.check.api.entry("checklist/coordinates"), url, id, page)

  # id download
  if (!missing(id)) {
    robject <- c(robject$decimalLatitude, robject$decimalLongitude)
    return(robject)
  }

  # Page (specified or default) download
  if (!missing(page)) {
    robject <- robject$`hydra:member`
    robject <- lapply(robject, function(x) c(x$decimalLatitude, x$decimalLongitude))
    output <- as.data.frame(do.call(rbind, robject))
    names(output) <- c("latitude", "longitude")
    return(output)
  }
}

#' @export
#' @rdname Checklists
TaxaLink <- function(id, page, url = NULL) {
  # Argument handling
  url <- .get.url(url)
  robject <- .api.scaffold(.check.api.entry("checklist/taxalink"), url, id, page)

  # id Download
  if (!missing(id)) {
    robject[sapply(robject, is.null)] <- NA
    return(robject)
  }

  # Page (specified or default) download
  if (!missing(page)) {
    robject <- .page.to.dataframe(robject)
  }
  return(robject)
}

#' @export
#' @rdname Checklists
Checklists <- function(id, page, url = NULL) {
  # Argument handling
  url <- .get.url(url)
  robject <- .api.scaffold(.check.api.entry("checklists"), url, id, page)

  # id Download
  if (!missing(id)) {
    robject[sapply(robject, is.null)] <- NA
    return(robject)
  }

  # Page (specified or default) download
  if (!missing(page)) {
    robject <- robject$`hydra:member`
    for (i in seq_along(robject)) {
      robject[[i]][sapply(robject[[i]], is.null)] <- NA
    }
    output <- as.data.frame(do.call(rbind, robject))
    return(output)
  }
}
