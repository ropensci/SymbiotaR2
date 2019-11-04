# UserRoles Category

# UserRoles function--permissions argument is a binary (presence/absence)--need to reflect this in argument checks
UserRoles <- function(url=default.url,ID,permissions){
  # If permissions argument is absent, retrieve the specific UserRoles resource corresponding to ID
  if(missing(permissions)){
    # Build a path corresponding to the url to pull from using function arguments
    complete_url <- paste0(url,"userroles/",ID)
    # Specify a random file (with the JSON extension) to write the JSON object to in the tmp directory
    sampleDestination <- tempfile()
    # Download the file from the url to the destination file
    download.file(url = complete_url, destfile = sampleDestination)
    # Convert the JSON object into an R object (a list of lists)
    RObject <- fromJSON(file = sampleDestination)
    return(RObject)
  }else{
    # Otherwise, retrieve a collection of UserRoles resources based on permissions argument
    # Build a path corresponding to the url to pull from using function arguments
    complete_url <- paste0(url,"users/",ID,"/permissions")
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
test <- UserRoles(ID = 1)
test <- UserRoles(ID = 1, permissions = 1)