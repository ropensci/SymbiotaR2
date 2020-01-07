---
title: "SymbiotaR2: An R Package for Accessing Symbiota2 Data"
author: 
- affiliation: 1
  name: Austin Koontz
  orcid: 0000-0002-6103-5894
- affiliation: 2
  name: William D Pearse
  orcid: 0000-0002-6241-3164
date: "11/20/2019"
output: html_document
tags:
- 
affiliations:
- index: 1
  name: Department of Biology & Ecology Center, Utah State University, Logan, Utah,
    USA
- index: 2
  name: Department of Biology & Ecology Center, Utah State University, Logan, Utah,
    USA
---
# Summary

`SymbiotaR2` is an R [@R2018] package for easily accessing and handling 
specimen-based Symbiota2 data within an R environment, allowing anyone
to download digitized biological collection data from any established 
database. Symbiota2 is the updated version of Symbiota [Symbiota2014], a
widely used software platform that grants access to data from hundreds of
museums and herbaria across the United States. Through a complete refactoring
of the Symbiota code, the structure of Symbiota2 places an emphasis on modularity
and accessibility.

The code below provides an example of a user accessing two different attributes
from the same entry within a Symbiota2  database. First, data from a particular 
entry (here, `ID=28`) is pulled into R using the "Occurrences" API endpoint. 
Then, different attributes associated with this entry (`reproductiveCondition`,
`decimalLatitude`, and `decimalLongitude`) are printed. The specification of the 
`url` argument (at the beginning of the example) allows for users to reference 
the web address corresponding to any Symbiota2 portal of interest.
```{R}
# Specify web address from which to access Symbiota2 API
> url <- "http://a02235015-6.bluezone.usu.edu/api/"

# Pull occurrence information associated with database entry (ID=28)
> test.Occ <- Occurrences(url=url, ID=28)

# Find reproductive condition for entry of interest
> print(test.Occ$reproductiveCondition)
[1]   "bud"
# Retrieve and concatenate coordinates for entry of interest
> test.coord <- c(test.Occ$decimalLatitude, test.Occ$decimalLongitude)
> print(test.coord)
[1]   50.70 -103.65
```
From here, these R objects be manipulated and used for any downstream analysis. 
The library provides built in commands for all of the default API endpoints 
included for any given Symbiota2 portal. These endpoints include access to 
several different resources: trait data, taxonomic classification, 
collector information, and much more. 

# References