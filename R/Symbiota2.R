# %%% SYMBIOTA2 LIBRARY %%%

library(utils)
library(rjson)

# Declaration for default webpage used in url_path variable of download.file command
default.webpage <- "http://a02235015-6.bluezone.usu.edu/api/checklist/checklistprojects"

ChecklistProjects <- function(webpage=default.webpage,pageNumber){
  # Build a path corresponding to the url to pull from using function arguments
  url_path <- paste0(webpage,"?page=",pageNumber)
  # Specify a random file (with the JSON extension) to write the JSON object to in the tmp directory
  sampleDestination <- tempfile()
  # Download the file from the url to the destination file
  download.file(url = url_path, destfile = sampleDestination)
  # Convert the JSON object into an R object (in this case, a list of lists)
  RObject <- fromJSON(file = sampleDestination)
  # Return only hydra:member component of RObject 
  RObject <- RObject$`hydra:member`
  return(RObject)
}

test <- ChecklistProjects(pageNumber = 1)
str(test)

test <- do.call(rbind, test)
str(test)

# do.call(rbind, test) <-- is this the type of object we want to return? Just one long list?

ChecklistProjectsID <- function(webpage=default.webpage,ID){
  # Build a path corresponding to the url to pull from using function arguments
  url_path <- paste0(webpage,"/",ID)
  print(url_path)
  # Specify a random file (with the JSON extension) to write the JSON object to in the tmp directory
  sampleDestination <- tempfile()
  # Download the file from the url to the destination file
  download.file(url = url_path, destfile = sampleDestination)
  # Convert the JSON object into an R object (in this case, a list of lists)
  RObject <- fromJSON(file = sampleDestination)
  return(RObject)
}

test <- ChecklistProjectsID(ID = 16)
str(test)

test <- do.call(rbind, test)
str(test)
