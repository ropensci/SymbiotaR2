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

#' Coordinates
#' @rdname Checklists
#' @name Checklists
Coordinates <- function(url=default.url,ID,page){
  # If ID argument is present, retrieve the specific Coordinates resource corresponding to ID
  if(!missing(ID)){
    # Build a path corresponding to the url to pull from using function arguments
    complete_url <- paste0(url,"checklist/coordinates/",ID)
    # Specify a random file (with the JSON extension) to write the JSON object to in the tmp directory
    sampleDestination <- tempfile()
    # Download the file from the url to the destination file
    download.file(url = complete_url, destfile = sampleDestination)
    # Convert the JSON object into an R object (a list of lists)
    RObject <- fromJSON(file = sampleDestination)
    # Extract and combine latitude and longitude elements from R Object
    RObject <- c(RObject$decimalLatitude,RObject$decimalLongitude)
    return(RObject)
  }else{
    # Otherwise, retrieve a collection of Coordinates resources based on page number
    if(missing(page)){
      # If page number is missing, set page variable equal to 1 (the first page)
      page = 1
    }
    # Build a path corresponding to the url to pull from using function arguments
    complete_url <- paste0(url,"checklist/coordinates?page=",page)
    # Specify a random file (with the JSON extension) to write the JSON object to in the tmp directory
    sampleDestination <- tempfile()
    # Download the file from the url to the destination file
    download.file(url = complete_url, destfile = sampleDestination)
    # Convert the JSON object into an R object (in this case, a list of lists)
    RObject <- fromJSON(file = sampleDestination)
    # Return only hydra:member component of RObject 
    RObject <- RObject$`hydra:member`
    # Extract decimalLatitude and decimalLongitude items from list members of RObject
    RObject <- lapply(RObject, function(x) c(x$decimalLatitude,x$decimalLongitude))
    # Convert RObject into a data.frame and return
    RObject <- sapply(RObject, as.data.frame)
    return(RObject)
  }
}

#' TaxaLink
#' @rdname Checklists
#' @name Checklists
#' @export
TaxaLink <- function(url=default.url,ID,page){
  # If ID argument is present, retrieve the specific TaxaLink resource corresponding to ID
  if(!missing(ID)){
    # Build a path corresponding to the url to pull from using function arguments
    complete_url <- paste0(url,"checklist/taxalink/",ID)
    # Specify a random file (with the JSON extension) to write the JSON object to in the tmp directory
    sampleDestination <- tempfile()
    # Download the file from the url to the destination file
    download.file(url = complete_url, destfile = sampleDestination)
    # Convert the JSON object into an R object (in this case, a list of lists)
    RObject <- fromJSON(file = sampleDestination)
    # Convert NULL within list to NA and return
    RObject[sapply(RObject,is.null)] <- NA
    return(RObject)
  }else{
    # Otherwise, retrieve a collection of TaxaLink resources based on page number
    if(missing(page)){
      # If page number is missing, set page variable equal to 1 (the first page)
      page = 1
    }
    # Build a path corresponding to the url to pull from using function arguments
    complete_url <- paste0(url,"checklist/taxalink?page=",page)
    # Specify a random file (with the JSON extension) to write the JSON object to in the tmp directory
    sampleDestination <- tempfile()
    # Download the file from the url to the destination file
    download.file(url = complete_url, destfile = sampleDestination)
    # Convert the JSON object into an R object (in this case, a list of lists)
    RObject <- fromJSON(file = sampleDestination)
    # Return only hydra:member component of RObject 
    RObject <- RObject$`hydra:member`
    # Convert NULL within list to NA (in order to properly export as a data.frame)
    for(i in seq_along(RObject)){
      RObject[[i]][sapply(RObject[[i]], is.null)] <- NA
    }
    # Convert RObject into a data.frame and return
    RObject <- sapply(RObject, as.data.frame)
    return(RObject)
  }
}

#' Dynamic function
#' @rdname Checklists
#' @name Checklists
#' @export
Dynamic <- function(url=default.url,ID,page){
  # If ID argument is present, retrieve the specific Dynamic resource corresponding to ID
  if(!missing(ID)){
    # Build a path corresponding to the url to pull from using function arguments
    complete_url <- paste0(url,"checklist/dynamic/",ID)
    # Specify a random file (with the JSON extension) to write the JSON object to in the tmp directory
    sampleDestination <- tempfile()
    # Download the file from the url to the destination file
    # PROBLEM: Webpages for retrieving Dynamic resource of specific ID not found, "because of an invalid identifier configuration"
    download.file(url = complete_url, destfile = sampleDestination)
    # Convert the JSON object into an R object (in this case, a list of lists)
    RObject <- fromJSON(file = sampleDestination)
    return(RObject)
  }else{
    # Otherwise, retrieve a collection of Dynamic resources based on page number
    if(missing(page)){
      # If page number is missing, set page variable equal to 1 (the first page)
      page = 1
    }
    # Build a path corresponding to the url to pull from using function arguments
    complete_url <- paste0(url,"checklist/dynamic?page=",page)
    # Specify a random file (with the JSON extension) to write the JSON object to in the tmp directory
    sampleDestination <- tempfile()
    # Download the file from the url to the destination file
    download.file(url = complete_url, destfile = sampleDestination)
    # Convert the JSON object into an R object (in this case, a list of lists)
    RObject <- fromJSON(file = sampleDestination)
    # Return only hydra:member component of RObject 
    RObject <- RObject$`hydra:member`
    # Convert NULL within list to NA (in order to properly export as a data.frame)
    for(i in seq_along(RObject)){
      RObject[[i]][sapply(RObject[[i]], is.null)] <- NA
    }
    # Convert RObject into a data.frame and return
    RObject <- sapply(RObject, as.data.frame)
    return(RObject)
  }
}

#' ProjectCategories function
#' @rdname Checklists
#' @name Checklists
#' @export
ProjectCategories <- function(url=default.url,ID,page){
  # If ID argument is present, retrieve the specific ProjectCategories resource corresponding to ID
  if(!missing(ID)){
    # Build a path corresponding to the url to pull from using function arguments
    complete_url <- paste0(url,"checklist/projectcategories/",ID)
    # Specify a random file (with the JSON extension) to write the JSON object to in the tmp directory
    sampleDestination <- tempfile()
    # Download the file from the url to the destination file
    # PROBLEM: Webpages for retrieving ProjectCategories resource of specific ID not found, "because of an invalid identifier configuration"
    download.file(url = complete_url, destfile = sampleDestination)
    # Convert the JSON object into an R object (in this case, a list of lists)
    RObject <- fromJSON(file = sampleDestination)
    return(RObject)
  }else{
    # Otherwise, retrieve a collection of ProjectCategories resources based on page number
    if(missing(page)){
      # If page number is missing, set page variable equal to 1 (the first page)
      page = 1
    }
    # Build a path corresponding to the url to pull from using function arguments
    complete_url <- paste0(url,"checklist/projectcategories?page=",page)
    # Specify a random file (with the JSON extension) to write the JSON object to in the tmp directory
    sampleDestination <- tempfile()
    # Download the file from the url to the destination file
    download.file(url = complete_url, destfile = sampleDestination)
    # Convert the JSON object into an R object (in this case, a list of lists)
    RObject <- fromJSON(file = sampleDestination)
    # Return only hydra:member component of RObject 
    RObject <- RObject$`hydra:member`
    # Convert NULL within list to NA (in order to properly export as a data.frame)
    for(i in seq_along(RObject)){
      RObject[[i]][sapply(RObject[[i]], is.null)] <- NA
    }
    # Convert RObject into a data.frame and return
    RObject <- sapply(RObject, as.data.frame)
    return(RObject)
  }
}

#' TaxaComments function
#' @rdname Checklists
#' @name Checklists
#' @export
TaxaComments <- function(url=default.url,ID,page){
  # If ID argument is present, retrieve the specific TaxaComments resource corresponding to ID
  if(!missing(ID)){
    # Build a path corresponding to the url to pull from using function arguments
    complete_url <- paste0(url,"checklist/taxacomments/",ID)
    # Specify a random file (with the JSON extension) to write the JSON object to in the tmp directory
    sampleDestination <- tempfile()
    # Download the file from the url to the destination file
    download.file(url = complete_url, destfile = sampleDestination)
    # Convert the JSON object into an R object (in this case, a list of lists)
    RObject <- fromJSON(file = sampleDestination)
    return(RObject)
  }else{
    # Otherwise, retrieve a collection of TaxaComments resources based on page number
    if(missing(page)){
      # If page number is missing, set page variable equal to 1 (the first page)
      page = 1
    }
    # Build a path corresponding to the url to pull from using function arguments
    complete_url <- paste0(url,"checklist/taxacomments?page=",page)
    # Specify a random file (with the JSON extension) to write the JSON object to in the tmp directory
    sampleDestination <- tempfile()
    # Download the file from the url to the destination file
    download.file(url = complete_url, destfile = sampleDestination)
    # Convert the JSON object into an R object (in this case, a list of lists)
    RObject <- fromJSON(file = sampleDestination)
    # Return only hydra:member component of RObject 
    RObject <- RObject$`hydra:member`
    # Convert NULL within list to NA (in order to properly export as a data.frame)
    for(i in seq_along(RObject)){
      RObject[[i]][sapply(RObject[[i]], is.null)] <- NA
    }
    # Convert RObject into a data.frame and return
    RObject <- sapply(RObject, as.data.frame)
    return(RObject)
  }
}
