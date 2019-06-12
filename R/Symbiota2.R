# %%% SYMBIOTA2 LIBRARY %%%

library(curl)
library(utils) # for download.file fxn
library(rjson)

ChecklistProjects <- function(webpage="http://a02235015-6.bluezone.usu.edu/api/checklist/checklistprojects",pageNumber){
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

test <- ChecklistProjects(pageNumber = 1)
str(test)

# NEXT STEPS
# 1. ChecklistProjects
  # a. Dealing with @context, @id, and @type list members...convert names to strings, or remove @ symbol?
  # b. Figuring out difference between pageNumber=1 and pagNumber>1...
# 2. ChecklistProjects/{id}?