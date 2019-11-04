#' Retrieves Checklists resources from the Symbiota2 server
#' 
#' Functions that retrieve Checklist resources from the server previously connected to.
#' Each function either retrieves an individual resource or a page of resources,
#' depending on the arguments provided.
#' 
#' @param url URL of the Symbiota2 portal connected to
#' @param ID ID value (usually \code{numeric}, but not always) used to refer to the specific resource to pull from the database
#' @param page \code{numeric} value referring to the page of Checklist resources to pull. If neither an
#' ID or a page parameter is provided, function will pull the first page of resources (i.e. \code{page=1}`)
#' @return If using \code{ID}, the specific Checklist resource specified; If using page, the \code{page} specified
#' of Checklist resources
#' @author Austin Koontz
#' @export
#' @rdname Checklists
#' @name Checklists
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
    RObject <- RObject$`hydra:member`
    RObject <- lapply(RObject, function(x) c(x$decimalLatitude,x$decimalLongitude))
    output <- as.data.frame(do.call(rbind, RObject))
    names(output) <- c("latitude","longitude")
    return(output)
}

#' @rdname Checklists
#' @name Checklists
#' @export
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
    RObject <- RObject$`hydra:member`
    for(i in seq_along(RObject))
        RObject[[i]][sapply(RObject[[i]], is.null)] <- NA
    RObject <- sapply(RObject, as.data.frame)
    return(RObject)
}

#' @rdname Checklists
#' @name Checklists
#' @export
Dynamic <- function(url=NA, ID=NA, page=NA){
    # Argument handling
    url <- .get.url(url)
    RObject <- .api.scaffold(.check.api.entry("checklist/dynamic"), url, ID, page)
    
    # ID Download
    if(!is.na(ID))
        return(RObject)

    # Page (specified or deault) download
    RObject <- RObject$`hydra:member`
    for(i in seq_along(RObject))
        RObject[[i]][sapply(RObject[[i]], is.null)] <- NA
    return(sapply(RObject, as.data.frame))
}

#' @rdname Checklists
#' @name Checklists
#' @export
ProjectCategories <- function(url=NA, ID=NA, page=NA){
    # Argument handling
    url <- .get.url(url)
    RObject <- .api.scaffold(.check.api.entry("checklist/projectcategories"), url, ID, page)

    # ID Download
    if(!is.na(ID))
        return(RObject)
    
    # Page (specified or deault) download
    RObject <- RObject$`hydra:member`
    for(i in seq_along(RObject))
        RObject[[i]][sapply(RObject[[i]], is.null)] <- NA
    return(sapply(RObject, as.data.frame))
}

#' @rdname Checklists
#' @name Checklists
#' @export
TaxaComments <- function(url=NA, ID=NA, page=NA){
    # Argument handling
    url <- .get.url(url)
    RObject <- .api.scaffold(.check.api.entry("checklist/taxacomments"), url, ID, page)

    # ID Download
    if(!is.na(ID))
        return(RObject)

    # Page (specified or deault) download
    RObject <- RObject$`hydra:member`
    for(i in seq_along(RObject))
        RObject[[i]][sapply(RObject[[i]], is.null)] <- NA
    return(sapply(RObject, as.data.frame))
}
