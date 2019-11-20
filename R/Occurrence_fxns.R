#' Retrieves Occurrence resources from the Symbiota2 server
#' 
#' Functions that retrieve Occurrence resources from the server previously connected to.
#' Each function either retrieves an individual resource or a page of resources,
#' depending on the arguments provided.
#' 
#' @param url URL of the Symbiota2 portal connected to
#' @param ID ID value (usually \code{numeric}, but not always) used to refer to the specific resource to pull from the database
#' @param page \code{numeric} value referring to the page of Occurrence resources to pull. If neither an
#' ID or a page parameter is provided, function will pull the first page of resources (i.e. \code{page=1}`)
#' @return If using \code{ID}, the specific Occurrence resource specified; If using page, the \code{page} specified
#' of Occurrence resources
#' @author Austin Koontz
#' @rdname Occurrences
#' @name Occurrences
#' @export

#' @rdname Occurrences
#' @name Occurrences
AccessStats <- function(url=NA, ID=NA, page=NA){
  # Argument handling
  url <- .get.url(url)
  RObject <- .api.scaffold(.check.api.entry("occurrence/accessstats"), url, ID, page)
  
  # ID Download
  if(!is.na(ID)){
    return(RObject)
  }
  
  # Page (specified or default) download
  if(!is.na(page)){
    RObject <- .page.to.dataframe(RObject)
  }
  return(RObject)
}

#' @rdname Occurrences
#' @name Occurrences
Determinations <- function(url=NA, ID=NA, page=NA){
  # Argument handling
  url <- .get.url(url)
  RObject <- .api.scaffold(.check.api.entry("occurrence/determinations"), url, ID, page)
  
  # ID Download
  if(!is.na(ID)){
    return(RObject)
  }
  
  # Page (specified or default) download
  if(!is.na(page)){
    RObject <- .page.to.dataframe(RObject)
  }
  return(RObject)
}
  
#' @rdname Occurrences
#' @name Occurrences
Duplicates <- function(url=NA, ID=NA, page=NA){
  # Argument handling
  url <- .get.url(url)
  RObject <- .api.scaffold(.check.api.entry("occurrence/duplicates"), url, ID, page)
  
  # ID Download
  if(!is.na(ID)){
    return(RObject)
  }
  
  # Page (specified or default) download
  if(!is.na(page)){
    RObject <- .page.to.dataframe(RObject)
  }
  return(RObject)
}

#' @rdname Occurrences
#' @name Occurrences
EditLocks <- function(url=NA, ID=NA, page=NA){
  # Argument handling
  url <- .get.url(url)
  RObject <- .api.scaffold(.check.api.entry("occurrence/editlocks"), url, ID, page)
  
  # ID Download
  if(!is.na(ID)){
    return(RObject)
  }
  
  # Page (specified or default) download
  if(!is.na(page)){
    RObject <- .page.to.dataframe(RObject)
  }
  return(RObject)
}

#' @rdname Occurrences
#' @name Occurrences
Edits <- function(url=NA, ID=NA, page=NA){
  # Argument handling
  url <- .get.url(url)
  RObject <- .api.scaffold(.check.api.entry("occurrence/edits"), url, ID, page)
  
  # ID Download
  if(!is.na(ID)){
    return(RObject)
  }
  
  # Page (specified or default) download
  if(!is.na(page)){
    RObject <- .page.to.dataframe(RObject)
  }
  return(RObject)
}

#' @rdname Occurrences
#' @name Occurrences
FullText <- function(url=NA, ID=NA, page=NA){
  # Argument handling
  url <- .get.url(url)
  RObject <- .api.scaffold(.check.api.entry("occurrence/fulltext"), url, ID, page)
  
  # ID Download
  if(!is.na(ID)){
    return(RObject)
  }
  
  # Page (specified or default) download
  if(!is.na(page)){
    RObject <- .page.to.dataframe(RObject)
  }
  return(RObject)
}

#' @rdname Occurrences
#' @name Occurrences
GuidDeterminations <- function(url=NA, ID=NA, page=NA){
  # Argument handling
  url <- .get.url(url)
  RObject <- .api.scaffold(.check.api.entry("occurrence/guiddeterminations"), url, ID, page)
  
  # ID Download
  if(!is.na(ID)){
    return(RObject)
  }
  
  # Page (specified or default) download
  if(!is.na(page)){
    RObject <- .page.to.dataframe(RObject)
  }
  return(RObject)
}

#' @rdname Occurrences
#' @name Occurrences
GuidOccurrences <- function(url=NA, ID=NA, page=NA){
  # Argument handling
  url <- .get.url(url)
  RObject <- .api.scaffold(.check.api.entry("occurrence/guidoccurrences"), url, ID, page)
  
  # ID Download
  if(!is.na(ID)){
    return(RObject)
  }
  
  # Page (specified or default) download
  if(!is.na(page)){
    RObject <- .page.to.dataframe(RObject)
  }
  return(RObject)
}

#' @rdname Occurrences
#' @name Occurrences
LookupChronostratigraphy <- function(url=NA, ID=NA, page=NA){
  # Argument handling
  url <- .get.url(url)
  RObject <- .api.scaffold(.check.api.entry("occurrence/lookupchronostratigraphy"), url, ID, page)
  
  # ID Download
  if(!is.na(ID)){
    RObject[sapply(RObject,is.null)] <- NA
    return(RObject)
  }
  
  # Page (specified or default) download
  RObject <- RObject$`hydra:member`
  output <- as.data.frame(do.call(rbind, RObject))
  return(output)
}

#' @rdname Occurrences
#' @name Occurrences
LookupCounties <- function(url=NA, ID=NA, page=NA){
  # Argument handling
  url <- .get.url(url)
  RObject <- .api.scaffold(.check.api.entry("occurrence/lookupcounties"), url, ID, page)
  
  # ID Download
  if(!is.na(ID)){
    return(RObject)
  }
  
  # Page (specified or default) download
  if(!is.na(page)){
    RObject <- .page.to.dataframe(RObject)
  }
  return(RObject)
}

#' @rdname Occurrences
#' @name Occurrences
LookupCountries <- function(url=NA, ID=NA, page=NA){
  # Argument handling
  url <- .get.url(url)
  RObject <- .api.scaffold(.check.api.entry("occurrence/lookupcountries"), url, ID, page)
  
  # ID Download
  if(!is.na(ID)){
    return(RObject)
  }
  
  # Page (specified or default) download
  if(!is.na(page)){
    RObject <- .page.to.dataframe(RObject)
  }
  return(RObject)
}

#' @rdname Occurrences
#' @name Occurrences
LookupStateProvinces <- function(url=NA, ID=NA, page=NA){
  # Argument handling
  url <- .get.url(url)
  RObject <- .api.scaffold(.check.api.entry("occurrence/lookupstateprovinces"), url, ID, page)
  
  # ID Download
  if(!is.na(ID)){
    return(RObject)
  }
  
  # Page (specified or default) download
  if(!is.na(page)){
    RObject <- .page.to.dataframe(RObject)
  }
  return(RObject)
}

#' @rdname Occurrences
#' @name Occurrences
UploadMappings <- function(url=NA, ID=NA, page=NA){
  # Argument handling
  url <- .get.url(url)
  RObject <- .api.scaffold(.check.api.entry("occurrence/uploadmappings"), url, ID, page)
  
  # ID Download
  if(!is.na(ID)){
    return(RObject)
  }
  
  # Page (specified or default) download
  if(!is.na(page)){
    RObject <- .page.to.dataframe(RObject)
  }
  return(RObject)
}

#' @rdname Occurrences
#' @name Occurrences
UploadParameters <- function(url=NA, ID=NA, page=NA){
  # Argument handling
  url <- .get.url(url)
  RObject <- .api.scaffold(.check.api.entry("occurrence/uploadparameters"), url, ID, page)
  
  # ID Download
  if(!is.na(ID)){
    return(RObject)
  }
  
  # Page (specified or default) download
  if(!is.na(page)){
    RObject <- .page.to.dataframe(RObject)
  }
  return(RObject)
}

#' @rdname Occurrences
#' @name Occurrences
Verification <- function(url=NA, ID=NA, page=NA){
  # Argument handling
  url <- .get.url(url)
  RObject <- .api.scaffold(.check.api.entry("occurrence/verification"), url, ID, page)
  
  # ID Download
  if(!is.na(ID)){
    return(RObject)
  }
  
  # Page (specified or default) download
  if(!is.na(page)){
    RObject <- .page.to.dataframe(RObject)
  }
  return(RObject)
}

#' @rdname Occurrences
#' @name Occurrences
Associations <- function(url=NA, ID=NA, page=NA){
  # Argument handling
  url <- .get.url(url)
  RObject <- .api.scaffold(.check.api.entry("occurrenceassociations/associations"), url, ID, page)
  
  # ID Download
  if(!is.na(ID)){
    return(RObject)
  }
  
  # Page (specified or default) download
  if(!is.na(page)){
    RObject <- .page.to.dataframe(RObject)
  }
  return(RObject)
}

#' @rdname Occurrences
#' @name Occurrences
Comments <- function(url=NA, ID=NA, page=NA){
  # Argument handling
  url <- .get.url(url)
  RObject <- .api.scaffold(.check.api.entry("occurrencecomments/comments"), url, ID, page)
  
  # ID Download
  if(!is.na(ID)){
    return(RObject)
  }
  
  # Page (specified or default) download
  if(!is.na(page)){
    RObject <- .page.to.dataframe(RObject)
  }
  return(RObject)
}

#' @rdname Occurrences
#' @name Occurrences
DatasetLink <- function(url=NA, ID=NA, page=NA){
  # Argument handling
  url <- .get.url(url)
  RObject <- .api.scaffold(.check.api.entry("occurrencedataset/datasetlink"), url, ID, page)
  
  # ID Download
  if(!is.na(ID)){
    return(RObject)
  }
  
  # Page (specified or default) download
  if(!is.na(page)){
    RObject <- .page.to.dataframe(RObject)
  }
  return(RObject)
}

#' @rdname Occurrences
#' @name Occurrences
Datasets <- function(url=NA, ID=NA, page=NA){
  # Argument handling
  url <- .get.url(url)
  RObject <- .api.scaffold(.check.api.entry("occurrencedataset/datasets"), url, ID, page)
  
  # ID Download
  if(!is.na(ID)){
    return(RObject)
  }
  
  # Page (specified or default) download
  if(!is.na(page)){
    RObject <- .page.to.dataframe(RObject)
  }
  return(RObject)
}

#' @rdname Occurrences
#' @name Occurrences
Exchange <- function(url=NA, ID=NA, page=NA){
  # Argument handling
  url <- .get.url(url)
  RObject <- .api.scaffold(.check.api.entry("occurrenceloan/exchange"), url, ID, page)
  
  # ID Download
  if(!is.na(ID)){
    return(RObject)
  }
  
  # Page (specified or default) download
  if(!is.na(page)){
    RObject <- .page.to.dataframe(RObject)
  }
  return(RObject)
}

#' @rdname Occurrences
#' @name Occurrences
Loans <- function(url=NA, ID=NA, page=NA){
  # Argument handling
  url <- .get.url(url)
  RObject <- .api.scaffold(.check.api.entry("occurrenceloan/loans"), url, ID, page)
  
  # ID Download
  if(!is.na(ID)){
    return(RObject)
  }
  
  # Page (specified or default) download
  if(!is.na(page)){
    RObject <- .page.to.dataframe(RObject)
  }
  return(RObject)
}

#' @rdname Occurrences
#' @name Occurrences
Occurrences <- function(url=NA, ID=NA, page=NA){
  # Argument handling
  url <- .get.url(url)
  RObject <- .api.scaffold(.check.api.entry("occurrences"), url, ID, page)
  
  # ID Download
  if(!is.na(ID)){
    RObject[sapply(RObject,is.null)] <- NA
    return(RObject)
  }
  
  # Page (specified or default) download
  RObject <- RObject$`hydra:member`
  output <- as.data.frame(do.call(rbind, RObject))
  return(output)
}
