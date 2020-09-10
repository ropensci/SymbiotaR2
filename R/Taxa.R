#' Retrieves Taxa resources from the Symbiota2 server
#'
#' Functions that retrieve Taxa resources from the server previously connected to.
#' Each function either retrieves an individual resource or a page of resources,
#' depending on the arguments provided.
#'
#' @template SymbiotaR2
#' @rdname Taxa
#' @name Taxa
#' @export
Taxa <- function(id, page, url = NULL) {
  # Argument handling
  url <- .get.url(url)
  robject <- .api.scaffold(.check.api.entry("taxa"), url, id, page)

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
#' @rdname Taxa
Authorities <- function(id, page, url = NULL) {
  # Argument handling
  url <- .get.url(url)
  robject <- .api.scaffold(.check.api.entry("taxa/authorities"), url, id, page)

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
#' @rdname Taxa
DescriptionBlock <- function(id, page, url = NULL) {
  # Argument handling
  url <- .get.url(url)
  robject <- .api.scaffold(.check.api.entry("taxa/descriptionblock"), url, id, page)

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
#' @rdname Taxa
Synonymy <- function(id, page, url = NULL) {
  # Argument handling
  url <- .get.url(url)
  robject <- .api.scaffold(.check.api.entry("taxa/synonymy"), url, id, page)

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
