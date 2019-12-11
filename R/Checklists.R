#' Retrieves Checklists resources from the Symbiota2 server
#' 
#' Functions that retrieve Checklist resources from the server previously connected to.
#' Each function either retrieves an individual resource or a page of resources,
#' depending on the arguments provided.
#' 
#' @param url URL of the Symbiota2 portal connected to
#' @param ID ID value (usually \code{numeric}, but not always) 
#' used to refer to the specific resource to pull from the database
#' @param page \code{numeric} value referring to the page of Checklist resources to pull. If neither an
#' ID or a page parameter is provided, function will pull the first page of resources (i.e. \code{page=1}`)
#' @return If using \code{ID}, the specific Checklist resource specified; 
#' if using page, the \code{page} specified of Checklist resources
#' @author Austin Koontz
#' @rdname Checklists
#' @name Checklists
#' @export

#' @rdname Checklists
ChecklistProjects <- function(url=NA, ID=NA, page=NA){
  # Argument handling
  url <- .get.url(url)
  RObject <- .api.scaffold(.check.api.entry("checklist/checklistprojects"), url, ID, page)
  
  # ID Download
  if(!is.na(ID)){
    RObject[sapply(RObject,is.null)] <- NA
    return(RObject)
  }
  
  # Page (specified or default) download
  if(!is.na(page)){
    RObject <- RObject$`hydra:member`
    for(i in seq_along(RObject))
      RObject[[i]][sapply(RObject[[i]], is.null)] <- NA
    output <- as.data.frame(do.call(rbind, RObject))
    return(output)
  }
}

#' @rdname Checklists
Coordinates <- function(url=NA, ID=NA, page=NA){
    # Argument handling
    url <- .get.url(url)
    RObject <- .api.scaffold(.check.api.entry("checklist/coordinates"), url, ID, page)

    # ID download
    if(!is.na(ID)){
        RObject <- c(RObject$decimalLatitude,RObject$decimalLongitude)
        return(RObject)
    }

    # Page (specified or default) download
    if(!is.na(page)){
      RObject <- RObject$`hydra:member`
      RObject <- lapply(RObject, function(x) c(x$decimalLatitude,x$decimalLongitude))
      output <- as.data.frame(do.call(rbind, RObject))
      names(output) <- c("latitude","longitude")
      return(output)
    }
}

#' @rdname Checklists
TaxaLink <- function(url=NA, ID=NA, page=NA){
    # Argument handling
    url <- .get.url(url)
    RObject <- .api.scaffold(.check.api.entry("checklist/taxalink"), url, ID, page)

    # ID Download
    if(!is.na(ID)){
        RObject[sapply(RObject,is.null)] <- NA
        return(RObject)
    }

    # Page (specified or default) download
    if(!is.na(page)){
      RObject <- .page.to.dataframe(RObject)
    }
    return(RObject)
}

#' @rdname Checklists
Checklists <- function(url=NA, ID=NA, page=NA){
  # Argument handling
  url <- .get.url(url)
  RObject <- .api.scaffold(.check.api.entry("checklists"), url, ID, page)
  
  # ID Download
  if(!is.na(ID)){
    RObject[sapply(RObject,is.null)] <- NA
    return(RObject)
  }
  
  # Page (specified or default) download
  if(!is.na(page)){
    RObject <- RObject$`hydra:member`
    for(i in seq_along(RObject))
      RObject[[i]][sapply(RObject[[i]], is.null)] <- NA
    output <- as.data.frame(do.call(rbind, RObject))
    return(output)
  }
}