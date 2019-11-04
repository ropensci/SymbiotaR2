# Checklist Category

# Coordinates function
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

# TaxaLink function
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

# Dynamic function
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

# ProjectCategories function
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

# TaxaComments function
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
