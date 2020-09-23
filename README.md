<!-- badges: start -->
[![CRAN status](https://www.r-pkg.org/badges/version/SymbiotaR2)](https://cran.r-project.org/package=SymbiotaR2)
[![Project Status: WIP – Initial development is in progress, but there has not yet been a stable, usable release suitable for the public.](https://www.repostatus.org/badges/latest/wip.svg)](https://www.repostatus.org/#wip)
[![Build Status](https://api.travis-ci.org/pearselab/Symbiota2.svg)](https://travis-ci.org/pearselab/SymbiotaR2)
[![codecov](https://codecov.io/gh/pearselab/SymbiotaR2/branch/master/graph/badge.svg)](https://codecov.io/gh/pearselab/SymbiotaR2)
<!-- badges: end -->

# SymbiotaR2

Austin Koontz and William D. Pearse

## Overview

Designed to assist students, taxonomists, educators, and anyone
working with biological specimens, [Symbiota](https://symbiota.org/docs/)
is an open-source content management system built for the purpose of integrating 
virtual biodiversity databases. Over 766 natural history collections
have utilized Symbiota, and their usage has motivated the development
of Symbiota2, an updated version of the Symbiota platform. This package,
SymbiotaR2, allows users to access and download specimen- and 
observation-based data from a published Symbiota2 portal. 

More information about Symbiota2 can be found on the 
[website](https://symbiota.org/docs/symbiota2-project/). The GitHub page for 
Symbiota2 can be found [here](https://github.com/Symbiota2/Symbiota2);
if you want to set up a new Symbiota2 portal, please follow the instructions
on the relevant 
[documentation site](https://symbiota2.github.io/Symbiota2/setup/installation.html).
Finally, a review of the original Symbiota platform is offered in 
[Gries et al., 2014](https://bdj.pensoft.net/articles.php?id=1114).

## Workflow 

Below, we provide a general workflow for accessing Symbiota2 resources in
an R environment:

1. Determine the URL of the Symbiota2 portal you wish to access data from.
    - You will need to be approved access by the portal manager.
2. Install SymbiotaR2 (see [Installation](#inst) below).
3. Find the function corresponding to the resource you wish to pull from the 
Symbiota2 portal. 
    - Functions are named after the resources they download, 
  and are grouped according to the relevant API call.
    - Note that, because each Symbiota2 portal owner can load their 
  own plugins into the API, it's possible that not every API endpoint 
  will be covered.
4. Call the function, specifying the Symbiota2 portal using the `url` 
argument (see [Example](#ex) and [Portal Specification](#portspec) below).

## <a name="ex"></a>Example

The R code below provides an example of how to install a `Coordinates` 
resource from an example Symbiota2 portal

```{R}
library(SymbiotaR2)
myURL <- "http://imaginary-symbiota-portal.com/api"
myCoordinates <- Coordinates(id = 6, url = myURL)
```

From here, the `myCoordinates` object can be used as desired.

## <a name="portspec"></a>Portal Specification

`SymbiotaR2_setup` will save to your `.Rprofile` a default instance 
(to use next time). Specifing a different `url` argument will let you
refer to a portal besides the default. The code below offers an example:

```{R}
SymbiotaR2_setup("http://imaginary-symbiota-portal.com/api", append=TRUE)

Coordinates() # Download from http://imaginary-symbiota-portal.com/api
Coordinates("http://another-imaginary-portal.com/api") # Download from a different portal
```

## <a name="inst"></a>Installation

This package is not currently up on CRAN (as it is being developed), 
but it can be downloaded by calling:

```{R}
library(devtools)
install_github("pearselab/SymbiotaR2")
```

Load the package using:

```{R}
library(SymbiotaR2)
```

## Contributions

Please check out our [contribution guidelines](https://github.com/pearselab/SymbiotaR2/blob/master/.github/CONTRIBUTING.md).
As the underlying API and the R package are still being developed, we'd recommend
holding off any development on the package until these are finalized. 
If you are interested in contributing to the
package in the future, though, please [drop one of us an email and
we'll let you know when we're ready](http://pearselab.com/team.html)!
