#' Retrieves Reference resources from the Symbiota2 server
#'
#' Functions that retrieve Reference resources from the server previously connected to.
#' Each function either retrieves an individual resource or a page of resources,
#' depending on the arguments provided.
#'
#' @template SymbiotaR2
#' \dontrun{
#' # Pulling a LookupReferenceType resource (id = 1), 
#' from a (nonexistent) dummy portal
#' object <- LookupReferenceType(id = 1, url = "http://dummy-portal.com/api/")
#' }
#' @rdname Reference
#' @name Reference
#' @export
LookupReferenceTypes <- function(id, page, url = NULL) {
  # Argument handling
  url <- .get.url(url)
  robject <- .api.scaffold(.check.api.entry("reference/lookupreferencetypes"), url, id, page)

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
