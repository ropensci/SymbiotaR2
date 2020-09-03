#' Retrieves Exsiccati resources from the Symbiota2 server
#' 
#' Functions that retrieve Exsiccati resources from the server previously connected to.
#' Each function either retrieves an individual resource or a page of resources,
#' depending on the arguments provided.
#' 
#' @param url URL of the Symbiota2 portal connected to
#' @param id id value (usually \code{numeric}, but not always) used to refer to the specific resource to pull from the database
#' @param page \code{numeric} value referring to the page of Exsiccati resources to pull. If neither an
#' id or a page parameter is provided, function will pull the first page of resources (i.e. \code{page=1}`)
#' @return If using \code{id}, the specific Exsiccati resource specified; if using page, the \code{page} specified
#' of Exsiccati resources
#' @author Austin Koontz
#' @name Exsiccati
#' @export
#' @rdname Exsiccati
Numbers <- function(id, page, url=NULL){
  # Argument handling
  url <- .get.url(url)
  RObject <- .api.scaffold(.check.api.entry("exsiccati/numbers"), url, id, page)
  
  # id Download
  if(!missing(id)){
    return(RObject)
  }
  
  # Page (specified or default) download
  if(!missing(page)){
    RObject <- RObject$`hydra:member`
    for(i in seq_along(RObject))
      RObject[[i]][sapply(RObject[[i]], is.null)] <- NA
    RObject <- as.numeric(lapply(RObject, function(x) x$exsiccatiNumber))
    RObject <- sapply(RObject, as.data.frame)
    return(RObject)
  }
}

#' @export
#' @rdname Exsiccati 
Titles <- function(id, page, url=NULL){
  # Argument handling
  url <- .get.url(url)
  RObject <- .api.scaffold(.check.api.entry("exsiccati/titles"), url, id, page)
  
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
