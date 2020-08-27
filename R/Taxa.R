#' Retrieves Taxa resources from the Symbiota2 server
#' 
#' Functions that retrieve Taxa resources from the server previously connected to.
#' Each function either retrieves an individual resource or a page of resources,
#' depending on the arguments provided.
#' 
#' @param url URL of the Symbiota2 portal connected to
#' @param ID ID value (usually \code{numeric}, but not always) used to refer to the specific resource to pull from the database
#' @param page \code{numeric} value referring to the page of Taxa resources to pull. If neither an
#' ID or a page parameter is provided, function will pull the first page of resources (i.e. \code{page=1}`)
#' @return If using \code{ID}, the specific Taxa resource specified; If using page, the \code{page} specified
#' of Taxa resources
#' @author Austin Koontz
#' @rdname Taxa
#' @name Taxa
#' @export
Taxa <- function(ID, page, url=NULL){
  # Argument handling
  url <- .get.url(url)
  RObject <- .api.scaffold(.check.api.entry("taxa"), url, ID, page)
  
  # ID Download
  if(!missing(ID)){
    RObject[sapply(RObject,is.null)] <- NA
    return(RObject)
  }
  
  # Page (specified or default) download
  if(!missing(page)){
    RObject <- RObject$`hydra:member`
    for(i in seq_along(RObject))
      RObject[[i]][sapply(RObject[[i]], is.null)] <- NA
    output <- as.data.frame(do.call(rbind, RObject))
    return(output)
  }
}

#' @export
#' @rdname Taxa
Authorities <- function(ID, page, url=NULL){
  # Argument handling
  url <- .get.url(url)
  RObject <- .api.scaffold(.check.api.entry("taxa/authorities"), url, ID, page)
  
  # ID Download
  if(!missing(ID)){
    RObject[sapply(RObject,is.null)] <- NA
    return(RObject)
  }
  
  # Page (specified or default) download
  if(!missing(page)){
    RObject <- RObject$`hydra:member`
    for(i in seq_along(RObject))
      RObject[[i]][sapply(RObject[[i]], is.null)] <- NA
    output <- as.data.frame(do.call(rbind, RObject))
    return(output)
  }
}

#' @export
#' @rdname Taxa
DescriptionBlock <- function(ID, page, url=NULL){
  # Argument handling
  url <- .get.url(url)
  RObject <- .api.scaffold(.check.api.entry("taxa/descriptionblock"), url, ID, page)
  
  # ID Download
  if(!missing(ID)){
    return(RObject)
  }
  
  # Page (specified or default) download
  if(!missing(page)){
    RObject <- .page.to.dataframe(RObject)
  }
  return(RObject)
}

#' @export
#' @rdname Taxa
Synonymy <- function(ID, page, url=NULL){
  # Argument handling
  url <- .get.url(url)
  RObject <- .api.scaffold(.check.api.entry("taxa/synonymy"), url, ID, page)
  
  # ID Download
  if(!missing(ID)){
    return(RObject)
  }
  
  # Page (specified or default) download
  if(!missing(page)){
    RObject <- .page.to.dataframe(RObject)
  }
  return(RObject)
}
