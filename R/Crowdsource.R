#' Retrieves Crowdsource resources from the Symbiota2 server
#'
#' Functions that retrieve Crowdsource resources from the server previously connected to.
#' Each function either retrieves an individual resource or a page of resources,
#' depending on the arguments provided.
#'
#' @template SymbiotaR2
#' @example 
#' \dontrun{
#' # Acquiring a Queue resource (id = 2), from a (nonexistent) dummy portal
#' object <- Queue(id = 2, url = "http://dummy-portal.com/api/")
#' }
#' @rdname Crowdsource
#' @name Crowdsource
#' @export
Central <- function(id, page, url = NULL) {
  # Argument handling
  url <- .get.url(url)
  robject <- .api.scaffold(.check.api.entry("crowdsource/central"), url, id, page)

  # id download
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
#' @rdname Crowdsource
Queue <- function(id, page, url = NULL) {
  # Argument handling
  url <- .get.url(url)
  robject <- .api.scaffold(.check.api.entry("crowdsource/queue"), url, id, page)

  # id download
  if (!missing(id)) {
    return(robject)
  }

  # Page (specified or default) download
  if (!missing(page)) {
    robject <- .page.to.dataframe(robject)
  }
  return(robject)
}
