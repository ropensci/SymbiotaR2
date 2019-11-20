# Not working functions

if(FALSE){
  # Children function--no API endpoint
  Children <- function(url=NA, ID=NA, page=NA){
    # Argument handling
    url <- .get.url(url)
    RObject <- .api.scaffold(.check.api.entry("checklist/children"), url, ID, page)
    
    # ID Download
    if(!is.na(ID)){
      RObject[sapply(RObject,is.null)] <- NA
      return(RObject)
    }
    
    # Page (specified or default) download
    RObject <- RObject$`hydra:member`
    output <- as.data.frame(do.call(rbind, RObject))
    return(output)
  }
  # Dynamic function--no API endpoint
  Dynamic <- function(url=NA, ID=NA, page=NA){
    # Argument handling
    url <- .get.url(url)
    RObject <- .api.scaffold(.check.api.entry("checklist/dynamic"), url, ID, page)
    
    # ID Download
    if(!is.na(ID))
      return(RObject)
    
    # Page (specified or default) download
    if(!is.na(page)){
      RObject <- .page.to.dataframe(RObject)
    }
    return(RObject)
  }
  # ProjectCategories function--no API endpoint
  ProjectCategories <- function(url=NA, ID=NA, page=NA){
    # Argument handling
    url <- .get.url(url)
    RObject <- .api.scaffold(.check.api.entry("checklist/projectcategories"), url, ID, page)
    
    # ID Download
    if(!is.na(ID))
      return(RObject)
    
    # Page (specified or default) download
    if(!is.na(page)){
      RObject <- .page.to.dataframe(RObject)
    }
    return(RObject)
  }
  # TaxaComments function--no API endpoint
  TaxaComments <- function(url=NA, ID=NA, page=NA){
    # Argument handling
    url <- .get.url(url)
    RObject <- .api.scaffold(.check.api.entry("checklist/taxacomments"), url, ID, page)
    
    # ID Download
    if(!is.na(ID))
      return(RObject)
    
    # Page (specified or default) download
    if(!is.na(page)){
      RObject <- .page.to.dataframe(RObject)
    }
    return(RObject)
  }
  # Sources function--no API endpoint
  Sources <- function(url=NA, ID=NA, page=NA){
    # Argument handling
    url <- .get.url(url)
    RObject <- .api.scaffold(.check.api.entry("glossary/sources"), url, ID, page)
    
    # ID Download
    if(!is.na(ID))
      return(RObject)
    
    # Page (specified or default) download
    if(!is.na(page)){
      RObject <- .page.to.dataframe(RObject)
    }
    return(RObject)
  }
  # Nlp function--no API endpoint
  Nlp <- function(url=NA, ID=NA, page=NA){
    # Argument handling
    url <- .get.url(url)
    RObject <- .api.scaffold(.check.api.entry("imageprocessor/nlp"), url, ID, page)
    
    # ID Download
    if(!is.na(ID)){
      return(RObject)
    }
    
    # Page (specified or default) download
    if(!is.na(page)){
      RObject <- .page.to.dataframe(RObject)
    }
    return(RObject)
  }
  # NlpFragment function--no API endpoint
  NlpFragment <- function(url=NA, ID=NA, page=NA){
    # Argument handling
    url <- .get.url(url)
    RObject <- .api.scaffold(.check.api.entry("imageprocessor/nlpfragment"), url, ID, page)
    
    # ID Download
    if(!is.na(ID)){
      return(RObject)
    }
    
    # Page (specified or default) download
    if(!is.na(page)){
      RObject <- .page.to.dataframe(RObject)
    }
    return(RObject)
  }
  # NlpVersion function--no API endpoint
  NlpVersion <- function(url=NA, ID=NA, page=NA){
    # Argument handling
    url <- .get.url(url)
    RObject <- .api.scaffold(.check.api.entry("imageprocessor/nlpversion"), url, ID, page)
    
    # ID Download
    if(!is.na(ID)){
      return(RObject)
    }
    
    # Page (specified or default) download
    if(!is.na(page)){
      RObject <- .page.to.dataframe(RObject)
    }
    return(RObject)
  }
  # OcrFragment function--no API endpoint
  OcrFragment <- function(url=NA, ID=NA, page=NA){
    # Argument handling
    url <- .get.url(url)
    RObject <- .api.scaffold(.check.api.entry("imageprocessor/ocrfragment"), url, ID, page)
    
    # ID Download
    if(!is.na(ID)){
      return(RObject)
    }
    
    # Page (specified or default) download
    if(!is.na(page)){
      RObject <- .page.to.dataframe(RObject)
    }
    return(RObject)
  }
  # Media function--no API endpoint
  Media <- function(url=NA, ID=NA, page=NA){
    # Argument handling
    url <- .get.url(url)
    RObject <- .api.scaffold(.check.api.entry("media"), url, ID, page)
    
    # ID Download
    if(!is.na(ID)){
      return(RObject)
    }
    
    # Page (specified or default) download
    if(!is.na(page)){
      RObject <- .page.to.dataframe(RObject)
    }
    return(RObject)
  }
  # Guid function--no API endpoint
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
  # Images function--ID works; page not found
  Images <- function(url=default.url,ID,page){
    # If ID argument is present, retrieve the specific Images resource corresponding to ID
    if(!missing(ID)){
      # Build a path corresponding to the url to pull from using function arguments
      complete_url <- paste0(url,"media/images/",ID)
      # Specify a random file (with the JSON extension) to write the JSON object to in the tmp directory
      sampleDestination <- tempfile()
      # Download the file from the url to the destination file
      download.file(url = complete_url, destfile = sampleDestination)
      # Convert the JSON object into an R object (a list of lists)
      RObject <- fromJSON(file = sampleDestination)
      return(RObject)
    }else{
      # Otherwise, retrieve a collection of Images resources based on page number
      if(missing(page)){
        # If page number is missing, set page variable equal to 1 (the first page)
        page = 1
      }
      # Build a path corresponding to the url to pull from using function arguments
      complete_url <- paste0(url,"media/images?page=",page)
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
  test <- Images(ID = 5)
  test <- Images(page = 1)
  # Keywords function--no API endpoint
  Keywords <- function(url=NA, ID=NA, page=NA){
    # Argument handling
    url <- .get.url(url)
    RObject <- .api.scaffold(.check.api.entry("media/keywords"), url, ID, page)
    
    # ID Download
    if(!is.na(ID)){
      return(RObject)
    }
    
    # Page (specified or default) download
    if(!is.na(page)){
      RObject <- .page.to.dataframe(RObject)
    }
    return(RObject)
  }
  # Tag function--ID works; page not found
  Tag <- function(url=default.url,ID,page){
    # If ID argument is present, retrieve the specific Tag resource corresponding to ID
    if(!missing(ID)){
      # Build a path corresponding to the url to pull from using function arguments
      complete_url <- paste0(url,"media/tag/",ID)
      # Specify a random file (with the JSON extension) to write the JSON object to in the tmp directory
      sampleDestination <- tempfile()
      # Download the file from the url to the destination file
      download.file(url = complete_url, destfile = sampleDestination)
      # Convert the JSON object into an R object (a list of lists)
      RObject <- fromJSON(file = sampleDestination)
      return(RObject)
    }else{
      # Otherwise, retrieve a collection of Tag resources based on page number
      if(missing(page)){
        # If page number is missing, set page variable equal to 1 (the first page)
        page = 1
      }
      # Build a path corresponding to the url to pull from using function arguments
      complete_url <- paste0(url,"media/tag?page=",page)
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
  test <- Tag(ID = 5)
  test <- Tag(page = 1)
  # EditLocks function--no API endpoint
  EditLocks <- function(url=NA, ID=NA, page=NA){
    # Argument handling
    url <- .get.url(url)
    RObject <- .api.scaffold(.check.api.entry("occurrence/editlocks"), url, ID, page)
    
    # ID Download
    if(!is.na(ID)){
      return(RObject)
    }
    
    # Page (specified or default) download
    if(!is.na(page)){
      RObject <- .page.to.dataframe(RObject)
    }
    return(RObject)
  }
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
  # Identifiers function--no API endpoint
  Identifiers <- function(url=NA, ID=NA, page=NA){
    # Argument handling
    url <- .get.url(url)
    RObject <- .api.scaffold(.check.api.entry("occurrence/identifiers"), url, ID, page)
    
    # ID Download
    if(!is.na(ID)){
      return(RObject)
    }
    
    # Page (specified or default) download
    if(!is.na(page)){
      RObject <- .page.to.dataframe(RObject)
    }
    return(RObject)
  }
  # LookupMunicipalities function--no API endpoint
  LookupMunicipalities <- function(url=NA, ID=NA, page=NA){
    # Argument handling
    url <- .get.url(url)
    RObject <- .api.scaffold(.check.api.entry("occurrence/lookupmunicipalities"), url, ID, page)
    
    # ID Download
    if(!is.na(ID)){
      return(RObject)
    }
    
    # Page (specified or default) download
    if(!is.na(page)){
      RObject <- .page.to.dataframe(RObject)
    }
    return(RObject)
  }
  # Revisions function--no API endpoint
  Revisions <- function(url=NA, ID=NA, page=NA){
    # Argument handling
    url <- .get.url(url)
    RObject <- .api.scaffold(.check.api.entry("occurrence/revisions"), url, ID, page)
    
    # ID Download
    if(!is.na(ID)){
      return(RObject)
    }
    
    # Page (specified or default) download
    if(!is.na(page)){
      RObject <- .page.to.dataframe(RObject)
    }
    return(RObject)
  }
  # UploadDeterminations function--no API endpoint
  UploadDeterminations <- function(url=NA, ID=NA, page=NA){
    # Argument handling
    url <- .get.url(url)
    RObject <- .api.scaffold(.check.api.entry("occurrence/uploaddeterminations"), url, ID, page)
    
    # ID Download
    if(!is.na(ID)){
      return(RObject)
    }
    
    # Page (specified or default) download
    if(!is.na(page)){
      RObject <- .page.to.dataframe(RObject)
    }
    return(RObject)
  }
  # UploadOccurrences function--no API endpoint
  UploadOccurrences <- function(url=NA, ID=NA, page=NA){
    # Argument handling
    url <- .get.url(url)
    RObject <- .api.scaffold(.check.api.entry("occurrence/uploadoccurrences"), url, ID, page)
    
    # ID Download
    if(!is.na(ID)){
      return(RObject)
    }
    
    # Page (specified or default) download
    if(!is.na(page)){
      RObject <- .page.to.dataframe(RObject)
    }
    return(RObject)
  }
  # Genetic function--no API endpoint
  Genetic <- function(url=NA, ID=NA, page=NA){
    # Argument handling
    url <- .get.url(url)
    RObject <- .api.scaffold(.check.api.entry("occurrencegenetic/genetic"), url, ID, page)
    
    # ID Download
    if(!is.na(ID)){
      return(RObject)
    }
    
    # Page (specified or default) download
    if(!is.na(page)){
      RObject <- .page.to.dataframe(RObject)
    }
    return(RObject)
  }
  
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