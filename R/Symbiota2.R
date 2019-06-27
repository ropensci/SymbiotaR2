# %%% SYMBIOTA2 LIBRARY %%%

library(utils)
library(rjson)

# Declaration for default webpage used in url_path variable of download.file command
default.url <- "http://a02235015-6.bluezone.usu.edu/api/checklist/"

# ChecklistProjects function
ChecklistProjects <- function(url=default.url,ID,page){
  #browser()
  # If ID argument is present, retrieve the specific ChecklistProjects resource corresponding to ID
    if(!missing(ID)){
      # Build a path corresponding to the url to pull from using function arguments
      complete_url <- paste0(url,"checklistprojects/",ID)
      # Specify a random file (with the JSON extension) to write the JSON object to in the tmp directory
      sampleDestination <- tempfile()
      # Download the file from the url to the destination file
      download.file(url = complete_url, destfile = sampleDestination)
      # Convert the JSON object into an R object (in this case, a list of lists)
      RObject <- fromJSON(file = sampleDestination)
      return(RObject)
    }else{
      # Otherwise, retrieve a collection of ChecklistProjects resources based on page number
      if(missing(page)){
        # If page number is missing, set page variable equal to 1 (the first page)
        page = 1
      }
        # Build a path corresponding to the url to pull from using function arguments
        complete_url <- paste0(url,"checklistprojects/?page=",page)
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
        # PROBLEM: differing lengths of checklistId parameter
        # Convert RObject into a data.frame and return
        #sapply(RObject, as.data.frame)
        return(RObject)
    }
}
test <- ChecklistProjects(ID = 5)
test <- ChecklistProjects(page = 1) # fails

# for(i in seq_along(test)){
#   for(j in seq_along(test[[i]])){
#     test[[i]][[j]] <- ifelse(is.null(test[[i]][[j]]), NA, test[[i]][[j]])
#     if(length(test[[i]][[j]])>1)
#       test[[i]][[j]] <- paste(test[[i]][[j]], collapse="-")
#   }
# }

# Children function
Children <- function(url=default.url,ID,page){
  # If ID argument is present, retrieve the specific Children resource corresponding to ID
  if(!missing(ID)){
    # Build a path corresponding to the url to pull from using function arguments
    complete_url <- paste0(url,"children/",ID)
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
    complete_url <- paste0(url,"children?page=",page)
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

test <- Children(ID = 5) # fails

test <- Children(page = 1)
str(test)

