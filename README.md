<!-- badges: start -->
[comment]: <> [![CRAN status](https://www.r-pkg.org/badges/version/SymbiotaR2)](https://cran.r-project.org/package=SymbiotaR2)
[![Project Status: WIP – Initial development is in progress, but there has not yet been a stable, usable release suitable for the public.](https://www.repostatus.org/badges/latest/wip.svg)](https://www.repostatus.org/#wip)
[![Build Status](https://api.travis-ci.org/pearselab/SymbiotaR2.svg)](https://travis-ci.org/pearselab/SymbiotaR2)
<!-- badges: end -->

# SymbiotaR2

Austin Koontz and William D. Pearse

## Overview

The aim of this package is to help when downloading data from a
published Symvbota2 portal. For example:

```{R}
library(SymbiotaR2)
Coordinates("http://imaginary-symbiota-portal.com/api")
```

...would download the first page of data with co-ordinates from our
imaginary Symbiota2 portal.

If you would like to specify a default portal from which to download,
do so like this:

```{R}
SymbiotaR2_setup("http://imaginary-symbiota-portal.com/api", append=TRUE)
Coordinates() # Download from http://imaginary-symbiota-portal.com/api
Coordinates("http://another-imaginary-portal.com/api") # Download from another portal
```

...this will save to your `.Rprofile` a default instance (for use next
time), and also shows that you can still use any portal you like even
if you specify a default.

## How to install and load the package

We are currently developing this package, and so it is not yet up on
CRAN. You can install and load it like this:

```{R}
library(devtools)
install_github("pearselab/SymbiotaR2")
library(SymbiotaR2)
```

## Contributing to SymbiotaR2

Right now, we're still working on the underlying API and then R
package at the same time, so we'd encourage you not to work on the
package right now. If you are interested in contributing to the
package in the future, though, please (drop one of us an email and
we'll let you know when we're ready)[http://pearselab.com/team.html]!
