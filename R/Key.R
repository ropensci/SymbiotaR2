#' Retrieves Key resources from the Symbiota2 server
#' 
#' Functions that retrieve Key resources from the server previously connected to.
#' Each function either retrieves an individual resource or a page of resources,
#' depending on the arguments provided.
#' 
#' @param url URL of the Symbiota2 portal connected to
#' @param id id value (usually \code{numeric}, but not always) used to refer to the specific resource to pull from the database
#' @param page \code{numeric} value referring to the page of Key resources to pull. If neither an
#' id or a page parameter is provided, function will pull the first page of resources (i.e. \code{page=1}`)
#' @return If using \code{id}, the specific Key resource specified; if using page, the \code{page} specified
#' of Key resources
#' @author Austin Koontz
#' @rdname Key
#' @name Key
#' @export
CharacterHeading <- function(id, page, url=NULL){
  # Argument handling
  url <- .get.url(url)
  RObject <- .api.scaffold(.check.api.entry("key/characterheading"), url, id, page)
  
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
#' @rdname Key
Characters <- function(id, page, url=NULL){
  # Argument handling
  url <- .get.url(url)
  RObject <- .api.scaffold(.check.api.entry("key/characters"), url, id, page)
  
  # id Download
  if(!missing(id)){
    RObject[sapply(RObject,is.null)] <- NA
    return(RObject)
  }
  
  # Page (specified or default) download
  RObject <- RObject$`hydra:member`
  output <- as.data.frame(do.call(rbind, RObject))
  return(output)
}

#' @export
#' @rdname Key
CharacterStateImages <- function(id, page, url=NULL){
  # Argument handling
  url <- .get.url(url)
  RObject <- .api.scaffold(.check.api.entry("key/characterstateimages"), url, id, page)
  
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
#' @rdname Key
CharacterStates <- function(id, page, url=NULL){
  # Argument handling
  url <- .get.url(url)
  RObject <- .api.scaffold(.check.api.entry("key/characterstates"), url, id, page)
  
  # id Download
  if(!missing(id)){
    RObject[sapply(RObject,is.null)] <- NA
    return(RObject)
  }
  
  # Page (specified or default) download
  if(!missing(page)){
    RObject <- RObject$`hydra:member`
    output <- as.data.frame(do.call(rbind, RObject))
    return(output)
  }
}

#' @export
#' @rdname Key
DescriptionDeletions <- function(id, page, url=NULL){
  # Argument handling
  url <- .get.url(url)
  RObject <- .api.scaffold(.check.api.entry("key/descriptiondeletions"), url, id, page)
  
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
