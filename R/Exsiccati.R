#' Retrieves Exsiccati resources from the Symbiota2 server
#'
#' Functions that retrieve Exsiccati resources from the server previously connected to.
#' Each function either retrieves an individual resource or a page of resources,
#' depending on the arguments provided.
#'
#' @template SymbiotaR2
#' @example
#' \dontrun{
#' # Acquiring a Titles resource (id = 3), from a (nonexistent) dummy portal
#' object <- Titles(id = 3, url = "http://dummy-portal.com/api/")
#' }
#' @rdname Exsiccati
#' @name Exsiccati
#' @export
Numbers <- function(id, page, url = NULL) {
  # Argument handling
  url <- .get.url(url)
  robject <- .api.scaffold(.check.api.entry("exsiccati/numbers"), url, id, page)

  # id Download
  if (!missing(id)) {
    return(robject)
  }

  # Page (specified or default) download
  if (!missing(page)) {
    robject <- robject$`hydra:member`
    for (i in seq_along(robject)) {
      robject[[i]][sapply(robject[[i]], is.null)] <- NA
    }
    robject <- as.numeric(lapply(robject, function(x) x$exsiccatiNumber))
    robject <- sapply(robject, as.data.frame)
    return(robject)
  }
}

#' @export
#' @rdname Exsiccati
Titles <- function(id, page, url = NULL) {
  # Argument handling
  url <- .get.url(url)
  robject <- .api.scaffold(.check.api.entry("exsiccati/titles"), url, id, page)

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
