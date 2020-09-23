#' Retrieves ImageProcessor resources from the Symbiota2 server
#'
#' Functions that retrieve ImageProcessor resources from the server previously connected to.
#' Each function either retrieves an individual resource or a page of resources,
#' depending on the arguments provided.
#'
#' @template SymbiotaR2
#' @example
#' \dontrun{
#' # Acquiring a RawLabels resource (id = 1), from a (nonexistent) dummy portal
#' object <- RawLabels(id = 1, url = "http://dummy-portal.com/api/")
#' }
#' @rdname ImagePRocessor
#' @name ImagePRocessor
#' @export
Projects <- function(id, page, url = NULL) {
  # Argument handling
  url <- .get.url(url)
  robject <- .api.scaffold(.check.api.entry("imageprocessor/projects"), url, id, page)

  # id Download
  if (!missing(id)) {
    return(robject)
  }

  # Page (specified or default) download
  if (!missing(page)) {
    robject <- .page.to.dataframe(robject)
  }
  return(robject)
}

#' @export
#' @rdname ImagePRocessor
RawLabels <- function(id, page, url = NULL) {
  # Argument handling
  url <- .get.url(url)
  robject <- .api.scaffold(.check.api.entry("imageprocessor/rawlabels"), url, id, page)

  # id Download
  if (!missing(id)) {
    return(robject)
  }

  # Page (specified or default) download
  if (!missing(page)) {
    robject <- .page.to.dataframe(robject)
  }
  return(robject)
}
