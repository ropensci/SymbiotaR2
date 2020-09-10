#' Retrieves Occurrence resources from the Symbiota2 server
#'
#' Functions that retrieve Occurrence resources from the server previously connected to.
#' Each function either retrieves an individual resource or a page of resources,
#' depending on the arguments provided.
#'
#' @template SymbiotaR2
#' @rdname Occurrences
#' @name Occurrences
#' @export
AccessStats <- function(id, page, url = NULL) {
  # Argument handling
  url <- .get.url(url)
  robject <- .api.scaffold(.check.api.entry("occurrence/accessstats"), url, id, page)

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
#' @rdname Occurrences
Determinations <- function(id, page, url = NULL) {
  # Argument handling
  url <- .get.url(url)
  robject <- .api.scaffold(.check.api.entry("occurrence/determinations"), url, id, page)

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
#' @rdname Occurrences
Duplicates <- function(id, page, url = NULL) {
  # Argument handling
  url <- .get.url(url)
  robject <- .api.scaffold(.check.api.entry("occurrence/duplicates"), url, id, page)

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
#' @rdname Occurrences
EditLocks <- function(id, page, url = NULL) {
  # Argument handling
  url <- .get.url(url)
  robject <- .api.scaffold(.check.api.entry("occurrence/editlocks"), url, id, page)

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
#' @rdname Occurrences
Edits <- function(id, page, url = NULL) {
  # Argument handling
  url <- .get.url(url)
  robject <- .api.scaffold(.check.api.entry("occurrence/edits"), url, id, page)

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
#' @rdname Occurrences
FullText <- function(id, page, url = NULL) {
  # Argument handling
  url <- .get.url(url)
  robject <- .api.scaffold(.check.api.entry("occurrence/fulltext"), url, id, page)

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
#' @rdname Occurrences
GuidDeterminations <- function(id, page, url = NULL) {
  # Argument handling
  url <- .get.url(url)
  robject <- .api.scaffold(.check.api.entry("occurrence/guiddeterminations"), url, id, page)

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
#' @rdname Occurrences
GuidOccurrences <- function(id, page, url = NULL) {
  # Argument handling
  url <- .get.url(url)
  robject <- .api.scaffold(.check.api.entry("occurrence/guidoccurrences"), url, id, page)

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
#' @rdname Occurrences
LookupChronostratigraphy <- function(id, page, url = NULL) {
  # Argument handling
  url <- .get.url(url)
  robject <- .api.scaffold(.check.api.entry("occurrence/lookupchronostratigraphy"), url, id, page)

  # id Download
  if (!missing(id)) {
    robject[sapply(robject, is.null)] <- NA
    return(robject)
  }

  # Page (specified or default) download
  if (!missing(page)) {
    robject <- robject$`hydra:member`
    output <- as.data.frame(do.call(rbind, robject))
    return(output)
  }
}

#' @export
#' @rdname Occurrences
LookupCounties <- function(id, page, url = NULL) {
  # Argument handling
  url <- .get.url(url)
  robject <- .api.scaffold(.check.api.entry("occurrence/lookupcounties"), url, id, page)

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
#' @rdname Occurrences
LookupCountries <- function(id, page, url = NULL) {
  # Argument handling
  url <- .get.url(url)
  robject <- .api.scaffold(.check.api.entry("occurrence/lookupcountries"), url, id, page)

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
#' @rdname Occurrences
LookupStateProvinces <- function(id, page, url = NULL) {
  # Argument handling
  url <- .get.url(url)
  robject <- .api.scaffold(.check.api.entry("occurrence/lookupstateprovinces"), url, id, page)

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
#' @rdname Occurrences
UploadMappings <- function(id, page, url = NULL) {
  # Argument handling
  url <- .get.url(url)
  robject <- .api.scaffold(.check.api.entry("occurrence/uploadmappings"), url, id, page)

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
#' @rdname Occurrences
UploadParameters <- function(id, page, url = NULL) {
  # Argument handling
  url <- .get.url(url)
  robject <- .api.scaffold(.check.api.entry("occurrence/uploadparameters"), url, id, page)

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
#' @rdname Occurrences
Verification <- function(id, page, url = NULL) {
  # Argument handling
  url <- .get.url(url)
  robject <- .api.scaffold(.check.api.entry("occurrence/verification"), url, id, page)

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
#' @rdname Occurrences
Associations <- function(id, page, url = NULL) {
  # Argument handling
  url <- .get.url(url)
  robject <- .api.scaffold(.check.api.entry("occurrenceassociations/associations"), url, id, page)

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
#' @rdname Occurrences
Comments <- function(id, page, url = NULL) {
  # Argument handling
  url <- .get.url(url)
  robject <- .api.scaffold(.check.api.entry("occurrencecomments/comments"), url, id, page)

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
#' @rdname Occurrences
DatasetLink <- function(id, page, url = NULL) {
  # Argument handling
  url <- .get.url(url)
  robject <- .api.scaffold(.check.api.entry("occurrencedataset/datasetlink"), url, id, page)

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
#' @rdname Occurrences
Datasets <- function(id, page, url = NULL) {
  # Argument handling
  url <- .get.url(url)
  robject <- .api.scaffold(.check.api.entry("occurrencedataset/datasets"), url, id, page)

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
#' @rdname Occurrences
Exchange <- function(id, page, url = NULL) {
  # Argument handling
  url <- .get.url(url)
  robject <- .api.scaffold(.check.api.entry("occurrenceloan/exchange"), url, id, page)

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
#' @rdname Occurrences
Loans <- function(id, page, url = NULL) {
  # Argument handling
  url <- .get.url(url)
  robject <- .api.scaffold(.check.api.entry("occurrenceloan/loans"), url, id, page)

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
#' @rdname Occurrences
Occurrences <- function(id, page, url = NULL) {
  # Argument handling
  url <- .get.url(url)
  robject <- .api.scaffold(.check.api.entry("occurrences"), url, id, page)

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
