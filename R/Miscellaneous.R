#' Retrieves Miscellaneous resources from the Symbiota2 server
#'
#' Functions that retrieve Miscellaneous resources from the server previously connected to.
#' Each function either retrieves an individual resource or a page of resources,
#' depending on the arguments provided.
#'
#' @template SymbiotaR2
#' \dontrun{
#' # Pulling a Configurations resource (id = 4), from a (nonexistent) dummy portal
#' object <- Configurations(id = 4, url = "http://dummy-portal.com/api/")
#' }
#' @rdname Miscellaneous
#' @name Miscellaneous
#' @export
Configurations <- function(id, page, url = NULL) {
  # Argument handling
  url <- .get.url(url)
  robject <- .api.scaffold(.check.api.entry("configurations"), url, id, page)

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
#' @rdname Miscellaneous
LookupLanguages <- function(id, page, url = NULL) {
  # Argument handling
  url <- .get.url(url)
  robject <- .api.scaffold(.check.api.entry("lookuplanguages"), url, id, page)

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
#' @rdname Miscellaneous
SchemaVersion <- function(id, page, url = NULL) {
  # Argument handling
  url <- .get.url(url)
  robject <- .api.scaffold(.check.api.entry("schemaversion"), url, id, page)

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
