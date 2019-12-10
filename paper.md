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
specimen-based Symbiota2 data within an R environment. This allows anyone
to establish a connection to a Symbiota2 database anywhere and download 
digitized biological collection data from that database. The downloaded 
data can then be manipulated in the R environment for the purpose of 
whatever analysis is being conducted. 

For instance, the code below demonstrates a user accessing a particular 
Symbiota2 database and pulling coordinate and trait values associated with a 
certain database entry. The specification of the `url` argument allows
for users to use whatever web address corresponds to the webpage hosting the
API of the Symbiota2 database of interest. Then, through using two separate
commands (Coordinates and Traits), data regarding a particular entry within
the database is pulled into R. 
```{R}
# Specify web address from which to access Symbiota2 API
> url <- "http://a02235015-6.bluezone.usu.edu/api/"

# Pull coordinate values associated with database entry (ID=4)
> coordinates <- Coordinates(url=url, ID=4)
> print(coordinates)
[1]   32.2106 -110.9208

# Pull trait values associated with database entry (ID=4)
> traits <- Traits(url=url, ID=4)
> print(traits)
List of 16
 $ @context         : chr "/api/contexts/Traits"
 $ @id              : chr "/api/traits/4"
 $ @type            : chr "Traits"
 $ id               : num 4
 $ traitName        : chr "Phenology: fruiting"
 $ traitType        : chr "UM"
 $ units            : logi NA
 $ description      : logi NA
 $ referenceUrl     : chr "http://purl.org/nevp/vocabulary/reproductive-phenology#11"
 $ notes            : logi NA
 $ dynamicProperties: chr "[{\"controlType\":\"radio\"}]"
 $ modifiedTimestamp: logi NA
 $ initialTimestamp : chr "2019-01-12T10:57:40+00:00"
 $ createdUserId    : logi NA
 $ modifiedUserId   : logi NA
 $ taxaId           : chr "/api/taxa/2075"
```
# References