#' Retrieves ImageProcessor resources from the Symbiota2 server
#' 
#' Functions that retrieve ImageProcessor resources from the server previously connected to.
#' Each function either retrieves an individual resource or a page of resources,
#' depending on the arguments provided.
#' 
#' @param url URL of the Symbiota2 portal connected to
#' @param id id value (usually \code{numeric}, but not always) used to refer to the specific resource to pull from the database
#' @param page \code{numeric} value referring to the page of ImageProcessor resources to pull. If neither an
#' id or a page parameter is provided, function will pull the first page of resources (i.e. \code{page=1}`)
#' @return If using \code{id}, the specific ImageProcessor resource specified; if using page, the \code{page} specified
#' of ImageProcessor resources
#' @author Austin Koontz
#' @rdname ImagePRocessor
#' @name ImagePRocessor
#' @export
Projects <- function(id, page, url=NULL){
  # Argument handling
  url <- .get.url(url)
  RObject <- .api.scaffold(.check.api.entry("imageprocessor/projects"), url, id, page)
  
  # id Download
  if(!missing(id)){
    return(RObject)
  }
  
  # Page (specified or default) download
  if(!missing(page)){
    RObject <- .page.to.dataframe(RObject)
  }
  return(RObject)
}

#' @export
#' @rdname ImagePRocessor
RawLabels <- function(id, page, url=NULL){
  # Argument handling
  url <- .get.url(url)
  RObject <- .api.scaffold(.check.api.entry("imageprocessor/rawlabels"), url, id, page)
  
  # id Download
  if(!missing(id)){
    return(RObject)
  }
  
  # Page (specified or default) download
  if(!missing(page)){
    RObject <- .page.to.dataframe(RObject)
  }
  return(RObject)
}
