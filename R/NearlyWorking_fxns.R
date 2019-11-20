# Nearly working functions

# Taxa function--ID works; page output as a list rather than data.frame
Taxa <- function(url=default.url,ID,page){
  # If ID argument is present, retrieve the specific Taxa resource corresponding to ID
  if(!missing(ID)){
    # Build a path corresponding to the url to pull from using function arguments
    complete_url <- paste0(url,"taxa/",ID)
    # Specify a random file (with the JSON extension) to write the JSON object to in the tmp directory
    sampleDestination <- tempfile()
    # Download the file from the url to the destination file
    download.file(url = complete_url, destfile = sampleDestination)
    # Convert the JSON object into an R object (in this case, a list of lists)
    RObject <- fromJSON(file = sampleDestination)
    # Convert RObject into a data.frame and return
    RObject <- sapply(RObject, as.data.frame)
    return(RObject)
  }else{
    # Otherwise, retrieve a collection of Taxa resources based on page number
    if(missing(page)){
      # If page number is missing, set page variable equal to 1 (the first page)
      page = 1
    }
    # Build a path corresponding to the url to pull from using function arguments
    complete_url <- paste0(url,"taxa?page=",page)
    # Specify a random file (with the JSON extension) to write the JSON object to in the tmp directory
    sampleDestination <- tempfile()
    # Download the file from the url to the destination file
    download.file(url = complete_url, destfile = sampleDestination)
    # Convert the JSON object into an R object (in this case, a list of lists)
    RObject <- fromJSON(file = sampleDestination)
    # Return only hydra:member component of RObject 
    RObject <- RObject$`hydra:member`
    # Convert NULL within list to NA, and return
    for(i in seq_along(RObject)){
      RObject[[i]][sapply(RObject[[i]], is.null)] <- NA
    }
    return(RObject)
  }
}
test <- Taxa(ID = 5) 
test <- Taxa(page = 1)
# Authorities function--ID works; page output as a list rather than data.frame
Authorities <- function(url=default.url,ID,page){
  # If ID argument is present, retrieve the specific Authorities resource corresponding to ID
  if(!missing(ID)){
    # Build a path corresponding to the url to pull from using function arguments
    complete_url <- paste0(url,"taxa/authorities/",ID)
    # Specify a random file (with the JSON extension) to write the JSON object to in the tmp directory
    sampleDestination <- tempfile()
    # Download the file from the url to the destination file
    download.file(url = complete_url, destfile = sampleDestination)
    # Convert the JSON object into an R object (a list of lists)
    RObject <- fromJSON(file = sampleDestination)
    return(RObject)
  }else{
    # Otherwise, retrieve a collection of Authorities resources based on page number
    if(missing(page)){
      # If page number is missing, set page variable equal to 1 (the first page)
      page = 1
    }
    # Build a path corresponding to the url to pull from using function arguments
    complete_url <- paste0(url,"taxa/authorities?page=",page)
    # Specify a random file (with the JSON extension) to write the JSON object to in the tmp directory
    sampleDestination <- tempfile()
    # Download the file from the url to the destination file
    download.file(url = complete_url, destfile = sampleDestination)
    # Convert the JSON object into an R object (in this case, a list of lists)
    RObject <- fromJSON(file = sampleDestination)
    # Return only hydra:member component of RObject 
    RObject <- RObject$`hydra:member`
    # Convert NULL within list to NA, and return
    for(i in seq_along(RObject)){
      RObject[[i]][sapply(RObject[[i]], is.null)] <- NA
    }
    return(RObject)
  }
}
test <- Authorities(ID = 1)
test <- Authorities(page = 1)
# DescriptionStatements function--ID works; page not found
DescriptionStatements <- function(url=default.url,ID,page){
  # If ID argument is present, retrieve the specific DescriptionStatements resource corresponding to ID
  if(!missing(ID)){
    # Build a path corresponding to the url to pull from using function arguments
    complete_url <- paste0(url,"taxa/descriptionstatements/",ID)
    # Specify a random file (with the JSON extension) to write the JSON object to in the tmp directory
    sampleDestination <- tempfile()
    # Download the file from the url to the destination file
    download.file(url = complete_url, destfile = sampleDestination)
    # Convert the JSON object into an R object (a list of lists)
    RObject <- fromJSON(file = sampleDestination)
    return(RObject)
  }else{
    # Otherwise, retrieve a collection of DescriptionStatements resources based on page number
    if(missing(page)){
      # If page number is missing, set page variable equal to 1 (the first page)
      page = 1
    }
    # Build a path corresponding to the url to pull from using function arguments
    complete_url <- paste0(url,"taxa/descriptionstatements?page=",page)
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
test <- DescriptionStatements(ID = 1)
test <- DescriptionStatements(page = 1)
# Links function--ID works; page not found
Links <- function(url=default.url,ID,page){
  # If ID argument is present, retrieve the specific Links resource corresponding to ID
  if(!missing(ID)){
    # Build a path corresponding to the url to pull from using function arguments
    complete_url <- paste0(url,"taxa/links/",ID)
    # Specify a random file (with the JSON extension) to write the JSON object to in the tmp directory
    sampleDestination <- tempfile()
    # Download the file from the url to the destination file
    download.file(url = complete_url, destfile = sampleDestination)
    # Convert the JSON object into an R object (a list of lists)
    RObject <- fromJSON(file = sampleDestination)
    return(RObject)
  }else{
    # Otherwise, retrieve a collection of Links resources based on page number
    if(missing(page)){
      # If page number is missing, set page variable equal to 1 (the first page)
      page = 1
    }
    # Build a path corresponding to the url to pull from using function arguments
    complete_url <- paste0(url,"taxa/links?page=",page)
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
test <- Links(ID = 1)
test <- Links(page = 1)
# Ranks function--ID works; page not found
Ranks <- function(url=default.url,ID,page){
  # If ID argument is present, retrieve the specific Ranks resource corresponding to ID
  if(!missing(ID)){
    # Build a path corresponding to the url to pull from using function arguments
    complete_url <- paste0(url,"taxa/ranks/",ID)
    # Specify a random file (with the JSON extension) to write the JSON object to in the tmp directory
    sampleDestination <- tempfile()
    # Download the file from the url to the destination file
    download.file(url = complete_url, destfile = sampleDestination)
    # Convert the JSON object into an R object (a list of lists)
    RObject <- fromJSON(file = sampleDestination)
    return(RObject)
  }else{
    # Otherwise, retrieve a collection of Ranks resources based on page number
    if(missing(page)){
      # If page number is missing, set page variable equal to 1 (the first page)
      page = 1
    }
    # Build a path corresponding to the url to pull from using function arguments
    complete_url <- paste0(url,"taxa/ranks?page=",page)
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
test <- Ranks(ID = 1)
test <- Ranks(page = 1)
# ResourceLinks function--ID works; page not found
ResourceLinks <- function(url=default.url,ID,page){
  # If ID argument is present, retrieve the specific ResourceLinks resource corresponding to ID
  if(!missing(ID)){
    # Build a path corresponding to the url to pull from using function arguments
    complete_url <- paste0(url,"taxa/resourcelinks/",ID)
    # Specify a random file (with the JSON extension) to write the JSON object to in the tmp directory
    sampleDestination <- tempfile()
    # Download the file from the url to the destination file
    download.file(url = complete_url, destfile = sampleDestination)
    # Convert the JSON object into an R object (a list of lists)
    RObject <- fromJSON(file = sampleDestination)
    return(RObject)
  }else{
    # Otherwise, retrieve a collection of ResourceLinks resources based on page number
    if(missing(page)){
      # If page number is missing, set page variable equal to 1 (the first page)
      page = 1
    }
    # Build a path corresponding to the url to pull from using function arguments
    complete_url <- paste0(url,"taxa/resourcelinks?page=",page)
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
test <- ResourceLinks(ID = 1)
test <- ResourceLinks(page = 1)
# Vernaculars function--ID works; page not found
Vernaculars <- function(url=default.url,ID,page){
  # If ID argument is present, retrieve the specific Vernaculars resource corresponding to ID
  if(!missing(ID)){
    # Build a path corresponding to the url to pull from using function arguments
    complete_url <- paste0(url,"taxa/vernaculars/",ID)
    # Specify a random file (with the JSON extension) to write the JSON object to in the tmp directory
    sampleDestination <- tempfile()
    # Download the file from the url to the destination file
    download.file(url = complete_url, destfile = sampleDestination)
    # Convert the JSON object into an R object (a list of lists)
    RObject <- fromJSON(file = sampleDestination)
    return(RObject)
  }else{
    # Otherwise, retrieve a collection of Vernaculars resources based on page number
    if(missing(page)){
      # If page number is missing, set page variable equal to 1 (the first page)
      page = 1
    }
    # Build a path corresponding to the url to pull from using function arguments
    complete_url <- paste0(url,"taxa/vernaculars?page=",page)
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
test <- Vernaculars(ID = 1)
test <- Vernaculars(page = 1)
# States function--ID works; page not found
States <- function(url=default.url,ID,page){
  # If ID argument is present, retrieve the specific States resource corresponding to ID
  if(!missing(ID)){
    # Build a path corresponding to the url to pull from using function arguments
    complete_url <- paste0(url,"traits/states/",ID)
    # Specify a random file (with the JSON extension) to write the JSON object to in the tmp directory
    sampleDestination <- tempfile()
    # Download the file from the url to the destination file
    download.file(url = complete_url, destfile = sampleDestination)
    # Convert the JSON object into an R object (a list of lists)
    RObject <- fromJSON(file = sampleDestination)
    return(RObject)
  }else{
    # Otherwise, retrieve a collection of States resources based on page number
    if(missing(page)){
      # If page number is missing, set page variable equal to 1 (the first page)
      page = 1
    }
    # Build a path corresponding to the url to pull from using function arguments
    complete_url <- paste0(url,"traits/states?page=",page)
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
test <- States(ID = 1)
test <- States(page = 1)
# Users function--ID not authorized; page works
Users <- function(url=default.url,ID,page){
  # If ID argument is present, retrieve the specific Users resource corresponding to ID
  if(!missing(ID)){
    # Build a path corresponding to the url to pull from using function arguments
    complete_url <- paste0(url,"users/",ID)
    # Specify a random file (with the JSON extension) to write the JSON object to in the tmp directory
    sampleDestination <- tempfile()
    # Download the file from the url to the destination file
    download.file(url = complete_url, destfile = sampleDestination)
    # Convert the JSON object into an R object (a list of lists)
    RObject <- fromJSON(file = sampleDestination)
    return(RObject)
  }else{
    # Otherwise, retrieve a collection of Users resources based on page number
    if(missing(page)){
      # If page number is missing, set page variable equal to 1 (the first page)
      page = 1
    }
    # Build a path corresponding to the url to pull from using function arguments
    complete_url <- paste0(url,"users?page=",page)
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
test <- Users(ID = 1)
test <- Users(page = 1)