#' Retrieves Crowdsource resources from the Symbiota2 server
#' 
#' Functions that retrieve Crowdsource resources from the server previously connected to.
#' Each function either retrieves an individual resource or a page of resources,
#' depending on the arguments provided.
#' 
#' @param url URL of the Symbiota2 portal connected to
#' @param ID ID value (usually \code{numeric}, but not always) 
#' used to refer to the specific resource to pull from the database
#' @param page \code{numeric} value referring to the page of Crowdsource resources to pull. If neither an
#' ID or a page parameter is provided, function will pull the first page of resources (i.e. \code{page=1}`)
#' @return If using \code{ID}, the specific Crowdsource resource specified; 
#' if using page, the \code{page} specified of Crowdsource resources
#' @author Austin Koontz
#' @rdname Crowdsource
#' @name Crowdsource
#' @export
Central <- function(ID, page, url=NULL){
  # Argument handling
  url <- .get.url(url)
  RObject <- .api.scaffold(.check.api.entry("crowdsource/central"), url, ID, page)
  
  # ID download
  if(!missing(ID))
    return(RObject)
  
  # Page (specified or default) download
  if(!missing(page)){
    RObject <- .page.to.dataframe(RObject)
  }
  return(RObject)
}

#' @export
#' @rdname Crowdsource
Queue <- function(ID, page, url=NULL){
  # Argument handling
  url <- .get.url(url)
  RObject <- .api.scaffold(.check.api.entry("crowdsource/queue"), url, ID, page)
  
  # ID download
  if(!missing(ID))
    return(RObject)
  
  # Page (specified or default) download
  if(!missing(page)){
    RObject <- .page.to.dataframe(RObject)
  }
  return(RObject)
}
