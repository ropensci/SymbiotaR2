#' Retrieves Media resources from the Symbiota2 server
#' 
#' Functions that retrieve Media resources from the server previously connected to.
#' Each function either retrieves an individual resource or a page of resources,
#' depending on the arguments provided.
#' 
#' @template SymbiotaR2
#' @rdname Media
#' @name Media
#' @export
# id must be a string rather than a numeric; consider adding an argument check
TagKey <- function(id, page, url=NULL){
  # Argument handling
  url <- .get.url(url)
  robject <- .api.scaffold(.check.api.entry("media/tagkey"), url, id, page)
  
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
