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

The code below provides an example of a user accessing two different data types
from two different entries within a Symbiota2  database. The first set of commands
demonstrates a user accessing coordinate points from an entry (here, `ID=4`) 
using the "Checklist" API endpoint. The second command set demonstrates a 
retrieval of the reproductive condition of an entry (here, `ID=15`) using the 
"Occurrences" API endpoint. The specification of the `url` argument 
at the beginning allows for users to use whatever web address corresponds to 
the webpage hosting the API of the Symbiota2 database of interest. Then, 
through using two separate commands (`Coordinates` and `Occurrences`), data 
regarding a particular entry within the database is pulled into R. 
```{R}
# Specify web address from which to access Symbiota2 API
> url <- "http://a02235015-6.bluezone.usu.edu/api/"

# Pull coordinate values associated with database entry (ID=4)
> coordinates <- Coordinates(url=url, ID=4)
> print(coordinates)
[1]   32.2106 -110.9208

# Pull occurrence information associated with database entry (ID=15)
> test.occurrence <- Occurrencess(url=url, ID=15)
# Find reproductive condition for entry of interest
> print(test.occurrence$reproductiveCondition)
[1]   "bud"
```
From here, these R objects be manipulated and used for any downstream analysis. 
The library provides built in commands for all of the default API endpoints 
included for any given Symbiota2 portal. These endpoints include access to 
several different resources: trait data, taxonomic classification, 
collector information, and much more. 

# References