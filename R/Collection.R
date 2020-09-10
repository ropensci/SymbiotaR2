#' Retrieves Collection resources from the Symbiota2 server
#'
#' Functions that retrieve Collection resources from the server previously connected to.
#' Each function either retrieves an individual resource or a page of resources,
#' depending on the arguments provided.
#'
#' @template SymbiotaR2
#' @rdname Collection
#' @name Collection
#' @export
Categories <- function(id, page, url = NULL) {
  # Argument handling
  url <- .get.url(url)
  robject <- .api.scaffold(.check.api.entry("collection/categories"), url, id, page)

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
#' @rdname Collection
Institutions <- function(id, page, url = NULL) {
  # Argument handling
  url <- .get.url(url)
  robject <- .api.scaffold(.check.api.entry("collection/institutions"), url, id, page)

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
#' @rdname Collection
Stats <- function(id, page, url = NULL) {
  # Argument handling
  url <- .get.url(url)
  robject <- .api.scaffold(.check.api.entry("collection/stats"), url, id, page)

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
#' @rdname Collection
Collections <- function(id, page, url = NULL) {
  # Argument handling
  url <- .get.url(url)
  robject <- .api.scaffold(.check.api.entry("collections"), url, id, page)

  # id download
  if (!missing(id)) {
    return(robject)
  }

  # Page (specified or default) download
  if (!missing(page)) {
    robject <- robject$`hydra:member`
    output <- as.data.frame(do.call(rbind, robject))
    return(output)
  }
}
