# %%% SYMBIOTA2 LIBRARY %%%

library(curl)
library(rjson)

ChecklistProjects <- function(webpage,pageNumber,){
  
}

results <- curl("http://a02235015-6.bluezone.usu.edu/api/checklist/checklistprojects?page=1")
str(results)
results

# NEXT STEPS
# 1. Figure out how to structure curl command such that -X GET and -H are included in command, as in API? 
# 2. Figure out range for page numbers?
# 3. Figure out what's returned from curl command (or curl GET command, if you can swing it). 
#    Then, convert that JSON object into an R object (like a data.frame, or a list, or whatever)