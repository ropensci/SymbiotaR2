#' Retrieves Traits resources from the Symbiota2 server
#'
#' Functions that retrieve Traits resources from the server previously connected to.
#' Each function either retrieves an individual resource or a page of resources,
#' depending on the arguments provided.
#'
#' @template SymbiotaR2
#' \dontrun{
#' # Pulling a Traits resource (id = 4), from a (nonexistent) dummy portal
#' object <- Traits(id = 4, url = "http://dummy-portal.com/api/")
#' }
#' @rdname Traits
#' @name Traits
#' @export
Traits <- function(id, page, url = NULL) {
  # Argument handling
  url <- .get.url(url)
  robject <- .api.scaffold(.check.api.entry("traits"), url, id, page)

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
