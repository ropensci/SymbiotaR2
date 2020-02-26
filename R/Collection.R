#' Retrieves Collection resources from the Symbiota2 server
#' 
#' Functions that retrieve Collection resources from the server previously connected to.
#' Each function either retrieves an individual resource or a page of resources,
#' depending on the arguments provided.
#' 
#' @param url URL of the Symbiota2 portal connected to
#' @param ID ID value (usually \code{numeric}, but not always) 
#' used to refer to the specific resource to pull from the database
#' @param page \code{numeric} value referring to the page of Collection resources to pull. If neither an
#' ID or a page parameter is provided, function will pull the first page of resources (i.e. \code{page=1}`)
#' @return If using \code{ID}, the specific Collection resource specified; 
#' if using page, the \code{page} specified of Collection resources
#' @author Austin Koontz
#' @rdname Collection
#' @name Collection
#' @export
Categories <- function(url=NA, ID=NA, page=NA){
    # Argument handling
    url <- .get.url(url)
    RObject <- .api.scaffold(.check.api.entry("collection/categories"), url, ID, page)

    # ID download
    if(!is.na(ID))
        return(RObject)

    # Page (specified or default) download
    if(!is.na(page)){
      RObject <- .page.to.dataframe(RObject)
    }
    return(RObject)
}

#' @export
#' @rdname Collection
Institutions <- function(url=NA, ID=NA, page=NA){
    # Argument handling
    url <- .get.url(url)
    RObject <- .api.scaffold(.check.api.entry("collection/institutions"), url, ID, page)

    # ID download
    if(!is.na(ID))
        return(RObject)

    # Page (specified or default) download
    if(!is.na(page)){
      RObject <- .page.to.dataframe(RObject)
    }
    return(RObject)
}

#' @export
#' @rdname Collection
Stats <- function(url=NA, ID=NA, page=NA){
    # Argument handling
    url <- .get.url(url)
    RObject <- .api.scaffold(.check.api.entry("collection/stats"), url, ID, page)

    # ID download
    if(!is.na(ID))
        return(RObject)
    
    # Page (specified or default) download
    if(!is.na(page)){
      RObject <- .page.to.dataframe(RObject)
    }
    return(RObject)
}

#' @export
#' @rdname Collection
Collections <- function(url=NA, ID=NA, page=NA){
  # Argument handling
  url <- .get.url(url)
  RObject <- .api.scaffold(.check.api.entry("collections"), url, ID, page)
  
  # ID download
  if(!is.na(ID))
    return(RObject)
  
  # Page (specified or default) download
  if(!is.na(page)){
    RObject <- RObject$`hydra:member`
    output <- as.data.frame(do.call(rbind, RObject))
    return(output)
  }
}
