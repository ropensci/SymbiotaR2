# Collection Category

# Categories function
Categories <- function(url=NA, ID=NA, page=NA){
    # Argument handling
    url <- .get.url(url)
    RObject <- .api.scaffold(.check.api.entry("collection/categories"), url, ID, page)

    # ID download
    if(!is.na(ID))
        return(RObject)

    # Page (specified or default) download
    RObject <- RObject$`hydra:member`
    for(i in seq_along(RObject))
        RObject[[i]][sapply(RObject[[i]], is.null)] <- NA
    return(sapply(RObject, as.data.frame))
}

# Institutions function
Institutions <- function(url=NA, ID=NA, page=NA){
    # Argument handling
    url <- .get.url(url)
    RObject <- .api.scaffold(.check.api.entry("collection/institutions"), url, ID, page)

    # ID download
    if(!is.na(ID))
        return(RObject)

    # Page (specified or default) download
    RObject <- RObject$`hydra:member`
    for(i in seq_along(RObject))
        RObject[[i]][sapply(RObject[[i]], is.null)] <- NA
    return(sapply(RObject, as.data.frame))
}

# Stats function
Stats <- function(url=NA, ID=NA, page=NA){
    # Argument handling
    url <- .get.url(url)
    RObject <- .api.scaffold(.check.api.entry("collection/stats"), url, ID, page)

    # ID download
    if(!is.na(ID))
        return(RObject)
    
    # Page (specified or default) download    
    RObject <- RObject$`hydra:member`
    for(i in seq_along(RObject))
        RObject[[i]][sapply(RObject[[i]], is.null)] <- NA
    return(sapply(RObject, as.data.frame))
}
