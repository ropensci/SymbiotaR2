#' Retrieves Miscellaneous resources from the Symbiota2 server
#' 
#' Functions that retrieve Miscellaneous resources from the server previously connected to.
#' Each function either retrieves an individual resource or a page of resources,
#' depending on the arguments provided.
#' 
#' @param url URL of the Symbiota2 portal connected to
#' @param ID ID value (usually \code{numeric}, but not always) used to refer to the specific resource to pull from the database
#' @param page \code{numeric} value referring to the page of Miscellaneous resources to pull. If neither an
#' ID or a page parameter is provided, function will pull the first page of resources (i.e. \code{page=1}`)
#' @return If using \code{ID}, the specific Miscellaneous resource specified; if using page, the \code{page} specified
#' of Miscellaneous resources
#' @author Austin Koontz
#' @rdname Miscellaneous
#' @name Miscellaneous
#' @export

#' @rdname Miscellaneous
Configurations <- function(url=NA, ID=NA, page=NA){
  # Argument handling
  url <- .get.url(url)
  RObject <- .api.scaffold(.check.api.entry("configurations"), url, ID, page)
  
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

#' @export
#' @rdname Miscellaneous
LookupLanguages <- function(url=NA, ID=NA, page=NA){
  # Argument handling
  url <- .get.url(url)
  RObject <- .api.scaffold(.check.api.entry("lookuplanguages"), url, ID, page)
  
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

#' @export
#' @rdname Miscellaneous
SchemaVersion <- function(url=NA, ID=NA, page=NA){
  # Argument handling
  url <- .get.url(url)
  RObject <- .api.scaffold(.check.api.entry("schemaversion"), url, ID, page)
  
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
