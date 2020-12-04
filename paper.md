---
title: 'SymbiotaR2: An R Package for Accessing Symbiota2 Data'
authors: 
- affiliation: 1
  name: Austin Koontz
  orcid: 0000-0002-6103-5894
- affiliation: 3
  name: Benjamin Brandt
- affiliation: 4
  name: Curtis Dyreson
- affiliation: "1,2"
  name: William D Pearse
  orcid: 0000-0002-6241-3164
affiliations:
- index: 1
  name: Department of Biology & Ecology Center, Utah State University, Logan, Utah,
    USA
- index: 2
  name: Department of Life Sciences, Imperial College London, Silwood Park Campus, 
    Buckhurst Rd., Ascot, Berkshire, SL5 7PY UK
- index: 3
  name: Northern Arizona University, Arizona, USA
- index: 4
  name: Department of Computer Science, Utah State University, Logan, Utah, USA
date: "10/08/2020"
output: html_document
bibliography: paper.bib
tags:
  - R
  - Symbiota
  - specimen-records
  - biodiversity
---
# Summary

`SymbiotaR2` is an R [@R2018] package for easily accessing and
handling specimen-based Symbiota2 data within an R environment,
allowing anyone to download digitized biological collection data from
any established database. Symbiota2 is the updated version of Symbiota
[@Symbiota2014], a widely used software platform that grants access to
data from >750 museums and herbaria worldwide. Through a complete
refactoring of the Symbiota code, the structure of Symbiota2 places an
emphasis on modularity and accessibility.

# Statement of need

The release of `SymbiotaR2` is motivated by the ongoing development 
of Symbiota2. Several R packages already exist for accessing 
data from standard Symbiota portals; because Symbiota2 
is a complete refactoring of the original framework, 
a new package is required to interface with new Symbiota2 portals.

The goal of this package is to allow users to access digitized 
biological specimen data hosted via Symbiota2 portals quickly and 
efficiently. This data could include geographic, taxonomic, or genetic 
information tied to a recorded specimen, as well as pertinent collection 
information, images, and publications. By making this data accessible in R, 
`SymbiotaR2` is part of the broader Symbiota effort of creating a 
collaborative environment to share biodiversity data more widely. 

# Demonstration

The code below provides an example of a user accessing two different attributes
from the same entry within a Symbiota2  database. First, data from a particular 
entry (here, `id=28`) is pulled into R using the "Occurrences" API endpoint. 
Then, different attributes associated with this entry (`reproductiveCondition`,
`decimalLatitude`, and `decimalLongitude`) are printed. The specification of the 
`url` argument (at the beginning of the example) allows for users to reference 
the web address corresponding to any Symbiota2 portal of interest.
```{R}
# Specify web address from which to access Symbiota2 API
> url <- "http://demo.portal.address/api/"

# Pull occurrence information associated with database entry (id=28)
> test.Occ <- Occurrences(id=28, url=url)

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
