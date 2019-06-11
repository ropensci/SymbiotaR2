# %%% SYMBIOTA2 LIBRARY %%%

library(curl)
library(utils) # for download.file fxn
library(rjson)

ChecklistProjects <- function(webpage="http://a02235015-6.bluezone.usu.edu/api/checklist/checklistprojects",pageNumber,){
  # Build a path corresponding to the url to pull from using function arguments
  url_path <- paste0(webpage,"?page=",pageNumber)
  # Specify a file (with the JSON extension) to write the JSON object to
  # !!! THIS IS WHERE YOUR TROUBLES ARE !!!
  sampleDestination <- "~/Symbiota2/destination.json"
  # Download the file from the url to the destination file
  download.file(url = url_path, destfile = sampleDestination)
  # Convert the JSON object into an R object (in this case, a list of lists)
  RObject <- fromJSON(file = sampleDestination)
  return(RObject)
}

download.file("http://a02235015-6.bluezone.usu.edu/api/checklist/checklistprojects?page=1",sampleDestination)

RObject <- fromJSON(file = sampleDestination)
print(RObject)
str(RObject)
length(RObject)

# NEXT STEPS
# 1. Figure out how to structure curl command such that -X GET and -H are included in command, as in API? 
# 2. Figure out range for page numbers?
# 3. Figure out what's returned from curl command (or curl GET command, if you can swing it). 
#    Then, convert that JSON object into an R object (like a data.frame, or a list, or whatever)