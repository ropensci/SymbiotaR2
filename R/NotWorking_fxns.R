# Not working functions

if(FALSE){
  # Children function--not working
  Children <- function(url=default.url,ID,page){
    # If ID argument is present, retrieve the specific Children resource corresponding to ID
    if(!missing(ID)){
      # Build a path corresponding to the url to pull from using function arguments
      complete_url <- paste0(url,"checklist/children/",ID)
      # Specify a random file (with the JSON extension) to write the JSON object to in the tmp directory
      sampleDestination <- tempfile()
      # Download the file from the url to the destination file
      # PROBLEM: Webpages for retrieving Children resource of specific ID not found, "because of an invalid identifier configuration"
      download.file(url = complete_url, destfile = sampleDestination)
      # Convert the JSON object into an R object (in this case, a list of lists)
      RObject <- fromJSON(file = sampleDestination)
      return(RObject)
    }else{
      # Otherwise, retrieve a collection of Children resources based on page number
      if(missing(page)){
        # If page number is missing, set page variable equal to 1 (the first page)
        page = 1
      }
      # Build a path corresponding to the url to pull from using function arguments
      complete_url <- paste0(url,"checklist/children?page=",page)
      # Specify a random file (with the JSON extension) to write the JSON object to in the tmp directory
      sampleDestination <- tempfile()
      # Download the file from the url to the destination file
      download.file(url = complete_url, destfile = sampleDestination)
      # Convert the JSON object into an R object (in this case, a list of lists)
      RObject <- fromJSON(file = sampleDestination)
      # Return only hydra:member component of RObject 
      RObject <- RObject$`hydra:member`
      # Convert RObject into a data.frame and return
      RObject <- sapply(RObject, as.data.frame)
      return(RObject)
    }
  }
  test <- Children(ID = 5) 
  test <- Children(page = 1)
  # Guid function--fails (Not found)
  Guid <- function(url=default.url,ID,page){
    # If ID argument is present, retrieve the specific Guid resource corresponding to ID
    if(!missing(ID)){
      # Build a path corresponding to the url to pull from using function arguments
      complete_url <- paste0(url,"media/guid/",ID)
      # Specify a random file (with the JSON extension) to write the JSON object to in the tmp directory
      sampleDestination <- tempfile()
      # Download the file from the url to the destination file
      download.file(url = complete_url, destfile = sampleDestination)
      # Convert the JSON object into an R object (a list of lists)
      RObject <- fromJSON(file = sampleDestination)
      return(RObject)
    }else{
      # Otherwise, retrieve a collection of Guid resources based on page number
      if(missing(page)){
        # If page number is missing, set page variable equal to 1 (the first page)
        page = 1
      }
      # Build a path corresponding to the url to pull from using function arguments
      complete_url <- paste0(url,"media/guid?page=",page)
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
  test <- Guid(ID = 5)
  test <- Guid(page = 1)
  # GeoIndex function--fails (ID not found; for page, "Unable to generate an IRI for the item of type \"Occurrence\\Entity\\GeoIndex\")
  GeoIndex <- function(url=default.url,ID,page){
    # If ID argument is present, retrieve the specific GeoIndex resource corresponding to ID
    if(!missing(ID)){
      # Build a path corresponding to the url to pull from using function arguments
      complete_url <- paste0(url,"occurrence/geoindex/",ID)
      # Specify a random file (with the JSON extension) to write the JSON object to in the tmp directory
      sampleDestination <- tempfile()
      # Download the file from the url to the destination file
      download.file(url = complete_url, destfile = sampleDestination)
      # Convert the JSON object into an R object (a list of lists)
      RObject <- fromJSON(file = sampleDestination)
      return(RObject)
    }else{
      # Otherwise, retrieve a collection of GeoIndex resources based on page number
      if(missing(page)){
        # If page number is missing, set page variable equal to 1 (the first page)
        page = 1
      }
      # Build a path corresponding to the url to pull from using function arguments
      complete_url <- paste0(url,"occurrence/geoindex?page=",page)
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
  test <- GeoIndex(ID = 1)
  test <- GeoIndex(page = 1)
  # Maps function--fails (Not found)
  Maps <- function(url=default.url,ID,page){
    # If ID argument is present, retrieve the specific Maps resource corresponding to ID
    if(!missing(ID)){
      # Build a path corresponding to the url to pull from using function arguments
      complete_url <- paste0(url,"taxa/maps/",ID)
      # Specify a random file (with the JSON extension) to write the JSON object to in the tmp directory
      sampleDestination <- tempfile()
      # Download the file from the url to the destination file
      download.file(url = complete_url, destfile = sampleDestination)
      # Convert the JSON object into an R object (a list of lists)
      RObject <- fromJSON(file = sampleDestination)
      return(RObject)
    }else{
      # Otherwise, retrieve a collection of Maps resources based on page number
      if(missing(page)){
        # If page number is missing, set page variable equal to 1 (the first page)
        page = 1
      }
      # Build a path corresponding to the url to pull from using function arguments
      complete_url <- paste0(url,"taxa/maps?page=",page)
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
  test <- Maps(ID = 1)
  test <- Maps(page = 1)
  # Relationships function--fails (Not found)
  Relationships <- function(url=default.url,ID,page){
    # If ID argument is present, retrieve the specific Relationships resource corresponding to ID
    if(!missing(ID)){
      # Build a path corresponding to the url to pull from using function arguments
      complete_url <- paste0(url,"taxa/relationships/",ID)
      # Specify a random file (with the JSON extension) to write the JSON object to in the tmp directory
      sampleDestination <- tempfile()
      # Download the file from the url to the destination file
      download.file(url = complete_url, destfile = sampleDestination)
      # Convert the JSON object into an R object (a list of lists)
      RObject <- fromJSON(file = sampleDestination)
      return(RObject)
    }else{
      # Otherwise, retrieve a collection of Relationships resources based on page number
      if(missing(page)){
        # If page number is missing, set page variable equal to 1 (the first page)
        page = 1
      }
      # Build a path corresponding to the url to pull from using function arguments
      complete_url <- paste0(url,"taxa/relationships?page=",page)
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
  test <- Relationships(ID = 1)
  test <- Relationships(page = 1)
  # Upload function--fails (Not found)
  Upload <- function(url=default.url,ID,page){
    # If ID argument is present, retrieve the specific Upload resource corresponding to ID
    if(!missing(ID)){
      # Build a path corresponding to the url to pull from using function arguments
      complete_url <- paste0(url,"taxa/upload/",ID)
      # Specify a random file (with the JSON extension) to write the JSON object to in the tmp directory
      sampleDestination <- tempfile()
      # Download the file from the url to the destination file
      download.file(url = complete_url, destfile = sampleDestination)
      # Convert the JSON object into an R object (a list of lists)
      RObject <- fromJSON(file = sampleDestination)
      return(RObject)
    }else{
      # Otherwise, retrieve a collection of Upload resources based on page number
      if(missing(page)){
        # If page number is missing, set page variable equal to 1 (the first page)
        page = 1
      }
      # Build a path corresponding to the url to pull from using function arguments
      complete_url <- paste0(url,"taxa/upload?page=",page)
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
  test <- Upload(ID = 1)
  test <- Upload(page = 1)
  # UserTaxonomy function--fails (Not found)
  UserTaxonomy <- function(url=default.url,ID,page){
    # If ID argument is present, retrieve the specific UserTaxonomy resource corresponding to ID
    if(!missing(ID)){
      # Build a path corresponding to the url to pull from using function arguments
      complete_url <- paste0(url,"taxa/usertaxonomy/",ID)
      # Specify a random file (with the JSON extension) to write the JSON object to in the tmp directory
      sampleDestination <- tempfile()
      # Download the file from the url to the destination file
      download.file(url = complete_url, destfile = sampleDestination)
      # Convert the JSON object into an R object (a list of lists)
      RObject <- fromJSON(file = sampleDestination)
      return(RObject)
    }else{
      # Otherwise, retrieve a collection of UserTaxonomy resources based on page number
      if(missing(page)){
        # If page number is missing, set page variable equal to 1 (the first page)
        page = 1
      }
      # Build a path corresponding to the url to pull from using function arguments
      complete_url <- paste0(url,"taxa/usertaxonomy?page=",page)
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
  test <- UserTaxonomy(ID = 1)
  test <- UserTaxonomy(page = 1)
  # Dependencies function--fails (Not found)
  Dependencies <- function(url=default.url,ID,page){
    # If ID argument is present, retrieve the specific Dependencies resource corresponding to ID
    if(!missing(ID)){
      # Build a path corresponding to the url to pull from using function arguments
      complete_url <- paste0(url,"traits/dependencies/",ID)
      # Specify a random file (with the JSON extension) to write the JSON object to in the tmp directory
      sampleDestination <- tempfile()
      # Download the file from the url to the destination file
      download.file(url = complete_url, destfile = sampleDestination)
      # Convert the JSON object into an R object (a list of lists)
      RObject <- fromJSON(file = sampleDestination)
      return(RObject)
    }else{
      # Otherwise, retrieve a collection of Dependencies resources based on page number
      if(missing(page)){
        # If page number is missing, set page variable equal to 1 (the first page)
        page = 1
      }
      # Build a path corresponding to the url to pull from using function arguments
      complete_url <- paste0(url,"traits/dependencies?page=",page)
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
  test <- Dependencies(ID = 1)
  test <- Dependencies(page = 1)
}