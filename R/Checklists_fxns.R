# Checklist Category

# Coordinates function
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
test <- Coordinates(ID = 5)
test <- Coordinates(page = 1)
# TaxaLink function
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
test <- TaxaLink(ID = 5) 
test <- TaxaLink(page = 1)
# Dynamic function
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
test <- Dynamic(ID = 5)
test <- Dynamic(page = 1)
# ProjectCategories function
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
test <- ProjectCategories(ID = 5)
test <- ProjectCategories(page = 1)
# TaxaComments function
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
test <- TaxaComments(ID = 16) 
test <- TaxaComments(page = 1)
