#' Retrieves ImageProcessor resources from the Symbiota2 server
#' 
#' Functions that retrieve ImageProcessor resources from the server previously connected to.
#' Each function either retrieves an individual resource or a page of resources,
#' depending on the arguments provided.
#' 
#' @param url URL of the Symbiota2 portal connected to
#' @param ID ID value (usually \code{numeric}, but not always) used to refer to the specific resource to pull from the database
#' @param page \code{numeric} value referring to the page of ImageProcessor resources to pull. If neither an
#' ID or a page parameter is provided, function will pull the first page of resources (i.e. \code{page=1}`)
#' @return If using \code{ID}, the specific ImageProcessor resource specified; If using page, the \code{page} specified
#' of ImageProcessor resources
#' @author Austin Koontz
#' @rdname ImagePRocessor
#' @name ImagePRocessor
#' @export

#' @rdname ImagePRocessor
#' @name ImagePRocessor
Projects <- function(url=NA, ID=NA, page=NA){
  # Argument handling
  url <- .get.url(url)
  RObject <- .api.scaffold(.check.api.entry("imageprocessor/projects"), url, ID, page)
  
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

#' @rdname ImagePRocessor
#' @name ImagePRocessor
RawLabels <- function(url=NA, ID=NA, page=NA){
  # Argument handling
  url <- .get.url(url)
  RObject <- .api.scaffold(.check.api.entry("imageprocessor/rawlabels"), url, ID, page)
  
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