# Functions with different structure 
# (typically, more arugments than just ID and page, or arguments more complext than a simple numeric)

# Vouchers function--ID argument is more complex that a simple numeric; page works
Vouchers <- function(url=default.url,ID,page){
  # If ID argument is present, retrieve the specific Voucher resource corresponding to ID
  if(!missing(ID)){
    # Build a path corresponding to the url to pull from using function arguments
    complete_url <- paste0(url,"checklist/vouchers/",ID)
    # Specify a random file (with the JSON extension) to write the JSON object to in the tmp directory
    sampleDestination <- tempfile()
    # Download the file from the url to the destination file
    download.file(url = complete_url, destfile = sampleDestination)
    # Convert the JSON object into an R object (in this case, a list of lists)
    RObject <- fromJSON(file = sampleDestination)
    return(RObject)
  }else{
    # Otherwise, retrieve a collection of Voucher resources based on page number
    if(missing(page)){
      # If page number is missing, set page variable equal to 1 (the first page)
      page = 1
    }
    # Build a path corresponding to the url to pull from, using function arguments
    complete_url <- paste0(url,"checklist/vouchers/?page=",page)
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
    # Return the Voucher items as a data.frame
    sapply(RObject, as.data.frame)
    return(RObject)
  }
}

# CharacterLanguages function--ID argument is more complex that a simple numeric; page works
CharacterLanguages <- function(url=default.url,ID,page){
  # If ID argument is present, retrieve the specific CharacterLanguages resource corresponding to ID
  if(!missing(ID)){
    # Build a path corresponding to the url to pull from using function arguments
    complete_url <- paste0(url,"key/charactelanguages/",ID)
    # Specify a random file (with the JSON extension) to write the JSON object to in the tmp directory
    sampleDestination <- tempfile()
    # Download the file from the url to the destination file
    download.file(url = complete_url, destfile = sampleDestination)
    # Convert the JSON object into an R object (a list of lists)
    RObject <- fromJSON(file = sampleDestination)
    return(RObject)
  }else{
    # Otherwise, retrieve a collection of CharacterLanguages resources based on page number
    if(missing(page)){
      # If page number is missing, set page variable equal to 1 (the first page)
      page = 1
    }
    # Build a path corresponding to the url to pull from using function arguments
    complete_url <- paste0(url,"key/characterlanguages?page=",page)
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

# CharacterStateLanguages function--ID argument is more complex that a simple numeric; page works
CharacterStateLanguages <- function(url=default.url,ID,page){
  # If ID argument is present, retrieve the specific CharacterStateLanguages resource corresponding to ID
  if(!missing(ID)){
    # Build a path corresponding to the url to pull from using function arguments
    complete_url <- paste0(url,"key/characterstatelanguages/",ID)
    # Specify a random file (with the JSON extension) to write the JSON object to in the tmp directory
    sampleDestination <- tempfile()
    # Download the file from the url to the destination file
    download.file(url = complete_url, destfile = sampleDestination)
    # Convert the JSON object into an R object (a list of lists)
    RObject <- fromJSON(file = sampleDestination)
    return(RObject)
  }else{
    # Otherwise, retrieve a collection of CharacterStateLanguages resources based on page number
    if(missing(page)){
      # If page number is missing, set page variable equal to 1 (the first page)
      page = 1
    }
    # Build a path corresponding to the url to pull from using function arguments
    complete_url <- paste0(url,"key/characterstatelanguages?page=",page)
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

#' @rdname Key
#' @name Key
#' @param character.ID Specifies the character.ID argument to include in the url in order to pull the Descriptions resource
#' @param characterState.ID Specifies the character.ID argument to include in the url in order to pull the Descriptions resource
#' @param taxa.ID Specifies the taxa.ID argument to include in the url in order to pull the Descriptions resource
#' requires multiple arguments for pulling specific resource
Descriptions <- function(url=default.url,character.ID,characterState.ID,taxa.ID,page){
  # If ID argument is present, retrieve the specific Descriptions resource corresponding to ID
  if(!missing(character.ID)){
    if(missing(taxa.ID)){
      stop("taxa.ID argument must be specified (along with character.ID and characterState.ID) to pull a specific Descriptions resource")
    }
    if(missing(characterState.ID)){
      stop("characterState.ID argument must be specified (along with character.ID and taxa.ID) to pull a specific Descriptions resource")
    }
    # Build a path corresponding to the url to pull from using function arguments
    complete_url <- paste0(url,"key/descriptions/characterId=",character.ID,";characterStateId=",characterState.ID,";taxaId=",taxa.ID)
    # Specify a random file (with the JSON extension) to write the JSON object to in the tmp directory
    sampleDestination <- tempfile()
    # Download the file from the url to the destination file
    download.file(url = complete_url, destfile = sampleDestination)
    # Convert the JSON object into an R object (a list of lists)
    RObject <- fromJSON(file = sampleDestination)
    # Convert NULL within list to NA, and return
    RObject[sapply(RObject,is.null)] <- NA
    return(RObject)
  }else{
    # Otherwise, retrieve a collection of Descriptions resources based on page number
    if(missing(page)){
      # If page number is missing, set page variable equal to 1 (the first page)
      page = 1
    }
    # Build a path corresponding to the url to pull from using function arguments
    complete_url <- paste0(url,"key/descriptions?page=",page)
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

#' @rdname Traits
#' @name Traits
# --requires multiple arguments for pulling specific resource, so code not yet refactored
Attributes <- function(url=default.url,state.ID,occurrence.ID,page){
  # If ID argument is present, retrieve the specific Attributes resource corresponding to ID
  if(!missing(occurrence.ID)){
    if(missing(state.ID)){
      stop("state.ID argument must be specified (along with occurrence.ID) to pull a specific Attributes resource")
    }
    # Build a path corresponding to the url to pull from using function arguments
    complete_url <- paste0(url,"traits/attributes/%22stateId%3D",state.ID,"%3BoccurrenceId%3D",occurrence.ID,"%22")
    # Specify a random file (with the JSON extension) to write the JSON object to in the tmp directory
    sampleDestination <- tempfile()
    # Download the file from the url to the destination file
    download.file(url = complete_url, destfile = sampleDestination)
    # Convert the JSON object into an R object (a list of lists)
    RObject <- fromJSON(file = sampleDestination)
    return(RObject)
  }else{
    # Otherwise, retrieve a collection of Attributes resources based on page number
    if(missing(page)){
      # If page number is missing, set page variable equal to 1 (the first page)
      page = 1
    }
    # Build a path corresponding to the url to pull from using function arguments
    complete_url <- paste0(url,"traits/attributes?page=",page)
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
