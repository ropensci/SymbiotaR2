#' Retrieves Key resources from the Symbiota2 server
#' 
#' Functions that retrieve Key resources from the server previously connected to.
#' Each function either retrieves an individual resource or a page of resources,
#' depending on the arguments provided.
#' 
#' @template SymbiotaR2
#' @rdname Key
#' @name Key
#' @export
CharacterHeading <- function(id, page, url=NULL){
  # Argument handling
  url <- .get.url(url)
  robject <- .api.scaffold(.check.api.entry("key/characterheading"), url, id, page)
  
  # id Download
  if(!missing(id)){
    return(robject)
  }
  
  # Page (specified or default) download
  if(!missing(page)){
    robject <- .page.to.dataframe(robject)
  }
  return(robject)
}

#' @export
#' @rdname Key
Characters <- function(id, page, url=NULL){
  # Argument handling
  url <- .get.url(url)
  robject <- .api.scaffold(.check.api.entry("key/characters"), url, id, page)
  
  # id Download
  if(!missing(id)){
    robject[sapply(robject,is.null)] <- NA
    return(robject)
  }
  
  # Page (specified or default) download
  robject <- robject$`hydra:member`
  output <- as.data.frame(do.call(rbind, robject))
  return(output)
}

#' @export
#' @rdname Key
CharacterStateImages <- function(id, page, url=NULL){
  # Argument handling
  url <- .get.url(url)
  robject <- .api.scaffold(.check.api.entry("key/characterstateimages"), url, id, page)
  
  # id Download
  if(!missing(id)){
    return(robject)
  }
  
  # Page (specified or default) download
  if(!missing(page)){
    robject <- .page.to.dataframe(robject)
  }
  return(robject)
}

#' @export
#' @rdname Key
CharacterStates <- function(id, page, url=NULL){
  # Argument handling
  url <- .get.url(url)
  robject <- .api.scaffold(.check.api.entry("key/characterstates"), url, id, page)
  
  # id Download
  if(!missing(id)){
    robject[sapply(robject,is.null)] <- NA
    return(robject)
  }
  
  # Page (specified or default) download
  if(!missing(page)){
    robject <- robject$`hydra:member`
    output <- as.data.frame(do.call(rbind, robject))
    return(output)
  }
}

#' @export
#' @rdname Key
DescriptionDeletions <- function(id, page, url=NULL){
  # Argument handling
  url <- .get.url(url)
  robject <- .api.scaffold(.check.api.entry("key/descriptiondeletions"), url, id, page)
  
  # id Download
  if(!missing(id)){
    return(robject)
  }
  
  # Page (specified or default) download
  if(!missing(page)){
    robject <- .page.to.dataframe(robject)
  }
  return(robject)
}
