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
AccessStats <- function(url=default.url,ID,page){
  # Argument handling
  url <- .get.url(url)
  RObject <- .api.scaffold(.check.api.entry("occurence/accessstats"), url, ID, page)
  
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
Determinations <- function(url=default.url,ID,page){
  # Argument handling
  url <- .get.url(url)
  RObject <- .api.scaffold(.check.api.entry("occurence/determinations"), url, ID, page)
  
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
Duplicates <- function(url=default.url,ID,page){
  # Argument handling
  url <- .get.url(url)
  RObject <- .api.scaffold(.check.api.entry("occurence/duplicates"), url, ID, page)
  
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
Edits <- function(url=default.url,ID,page){
  # Argument handling
  url <- .get.url(url)
  RObject <- .api.scaffold(.check.api.entry("occurence/edits"), url, ID, page)
  
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
FullText <- function(url=default.url,ID,page){
  # Argument handling
  url <- .get.url(url)
  RObject <- .api.scaffold(.check.api.entry("occurence/fulltext"), url, ID, page)
  
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
GuidDeterminations <- function(url=default.url,ID,page){
  # Argument handling
  url <- .get.url(url)
  RObject <- .api.scaffold(.check.api.entry("occurence/guiddeterminations"), url, ID, page)
  
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
GuidOccurrences <- function(url=default.url,ID,page){
  # Argument handling
  url <- .get.url(url)
  RObject <- .api.scaffold(.check.api.entry("occurence/guidoccurrences"), url, ID, page)
  
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
LookupCounties <- function(url=default.url,ID,page){
  # Argument handling
  url <- .get.url(url)
  RObject <- .api.scaffold(.check.api.entry("occurence/lookupcounties"), url, ID, page)
  
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
LookupCountries <- function(url=default.url,ID,page){
  # Argument handling
  url <- .get.url(url)
  RObject <- .api.scaffold(.check.api.entry("occurence/lookupcountries"), url, ID, page)
  
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
LookupStateProvinces <- function(url=default.url,ID,page){
  # Argument handling
  url <- .get.url(url)
  RObject <- .api.scaffold(.check.api.entry("occurence/lookupstateprovinces"), url, ID, page)
  
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
Verification <- function(url=default.url,ID,page){
  # Argument handling
  url <- .get.url(url)
  RObject <- .api.scaffold(.check.api.entry("occurence/verification"), url, ID, page)
  
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
Associations <- function(url=default.url,ID,page){
  # Argument handling
  url <- .get.url(url)
  RObject <- .api.scaffold(.check.api.entry("occurence/associations"), url, ID, page)
  
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
Comments <- function(url=default.url,ID,page){
  # Argument handling
  url <- .get.url(url)
  RObject <- .api.scaffold(.check.api.entry("occurence/comments"), url, ID, page)
  
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
DatasetLink <- function(url=default.url,ID,page){
  # Argument handling
  url <- .get.url(url)
  RObject <- .api.scaffold(.check.api.entry("occurence/datasetlink"), url, ID, page)
  
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
Datasets <- function(url=default.url,ID,page){
  # Argument handling
  url <- .get.url(url)
  RObject <- .api.scaffold(.check.api.entry("occurence/datasets"), url, ID, page)
  
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
Exchange <- function(url=default.url,ID,page){
  # Argument handling
  url <- .get.url(url)
  RObject <- .api.scaffold(.check.api.entry("occurence/exchange"), url, ID, page)
  
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
Loans <- function(url=default.url,ID,page){
  # Argument handling
  url <- .get.url(url)
  RObject <- .api.scaffold(.check.api.entry("occurence/loans"), url, ID, page)
  
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
EditLocks <- function(url=default.url,ID,page){
  # Argument handling
  url <- .get.url(url)
  RObject <- .api.scaffold(.check.api.entry("occurence/editlocks"), url, ID, page)
  
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
Identifiers <- function(url=default.url,ID,page){
  # Argument handling
  url <- .get.url(url)
  RObject <- .api.scaffold(.check.api.entry("occurence/identifiers"), url, ID, page)
  
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
LookupMunicipalities <- function(url=default.url,ID,page){
  # Argument handling
  url <- .get.url(url)
  RObject <- .api.scaffold(.check.api.entry("occurence/lookupmunicipalities"), url, ID, page)
  
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
Revisions <- function(url=default.url,ID,page){
  # Argument handling
  url <- .get.url(url)
  RObject <- .api.scaffold(.check.api.entry("occurence/revisions"), url, ID, page)
  
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
UploadDeterminations <- function(url=default.url,ID,page){
  # Argument handling
  url <- .get.url(url)
  RObject <- .api.scaffold(.check.api.entry("occurence/uploaddeterminations"), url, ID, page)
  
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
UploadMappings <- function(url=default.url,ID,page){
  # Argument handling
  url <- .get.url(url)
  RObject <- .api.scaffold(.check.api.entry("occurence/uploadmappings"), url, ID, page)
  
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
UploadOccurrences <- function(url=default.url,ID,page){
  # Argument handling
  url <- .get.url(url)
  RObject <- .api.scaffold(.check.api.entry("occurence/uploadoccurrences"), url, ID, page)
  
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
UploadParameters <- function(url=default.url,ID,page){
  # Argument handling
  url <- .get.url(url)
  RObject <- .api.scaffold(.check.api.entry("occurence/uploadparameters"), url, ID, page)
  
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
Genetic <- function(url=default.url,ID,page){
  # Argument handling
  url <- .get.url(url)
  RObject <- .api.scaffold(.check.api.entry("occurence/genetic"), url, ID, page)
  
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