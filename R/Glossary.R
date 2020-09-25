#' Retrieves Glossary resources from the Symbiota2 server
#'
#' Functions that retrieve Glossary resources from the server previously connected to.
#' Each function either retrieves an individual resource or a page of resources,
#' depending on the arguments provided.
#'
#' @template SymbiotaR2
#' @examples
#' \dontrun{
#' # Acquiring a page of Glossary resources, from a (nonexistent) dummy portal
#' glossPage <- Glossary(page = 1, url = "http://dummy-portal.com/api/")
#' }
#' @rdname Glossary
#' @name Glossary
#' @export
Glossary <- function(id, page, url = NULL) {
  # Argument handling
  url <- .get.url(url)
  robject <- .api.scaffold(.check.api.entry("glossary"), url, id, page)

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
#' @rdname Glossary
TermLink <- function(id, page, url = NULL) {
  # Argument handling
  url <- .get.url(url)
  robject <- .api.scaffold(.check.api.entry("glossary/termlink"), url, id, page)

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
