#' Retrieves UserRoles resources from the Symbiota2 server
#' 
#' Functions that retrieve UserRoles resources from the server previously connected to.
#' Each function either retrieves an individual resource or a page of resources,
#' depending on the arguments provided.
#' 
#' @param url URL of the Symbiota2 portal connected to
#' @param ID ID value (usually \code{numeric}, but not always) used to refer to the specific resource to pull from the database
#' @param permissions \code{numeric} value referring to permissions argument used to pull reource.
#' @return UserRoles resource requested
#' @author Austin Koontz
#' @export

# UserRoles function--permissions argument is a binary (presence/absence)--need to reflect this in argument checks
UserRoles <- function(url=NA, ID=NA , permissions=NA){
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
