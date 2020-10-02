<!-- badges: start -->
[![CRAN status](https://www.r-pkg.org/badges/version/SymbiotaR2)](https://cran.r-project.org/package=SymbiotaR2)
[![Project Status: WIP – Initial development is in progress, but there has not yet been a stable, usable release suitable for the public.](https://www.repostatus.org/badges/latest/wip.svg)](https://www.repostatus.org/#wip)
[![Build Status](https://api.travis-ci.org/pearselab/Symbiota2.svg)](https://travis-ci.org/pearselab/SymbiotaR2)
[![codecov](https://codecov.io/gh/pearselab/SymbiotaR2/branch/master/graph/badge.svg)](https://codecov.io/gh/pearselab/SymbiotaR2)
<!-- badges: end -->

# SymbiotaR2

Austin Koontz, Benjamin Brandt, Curtis Dyreson, and William D. Pearse

## Overview

Designed to assist students, taxonomists, educators, and anyone
working with biological specimens,
[Symbiota](https://symbiota.org/docs/) is an open-source content
management system designed to integrate virtual biodiversity
databases. Over 750 natural history collections use Symbiota, which
has motivated the development of the Symbiota2 update to the Symbiota
platofrm. This package, _SymbiotaR2_, allows users to access and
download specimen- and observation-based data from a published
Symbiota2 portal. If you're looking for something similar for the
original Symbiota, take a look at
[rSymbiota](https://github.com/FranzKrah/rSymbiota).

More information about Symbiota2 can be found on the
[website](https://symbiota.org/docs/symbiota2-project/). The GitHub
page for Symbiota2 can be found
[here](https://github.com/Symbiota2/Symbiota2); if you want to set up
a new Symbiota2 portal, please follow the instructions on its
[documentation
site](https://symbiota2.github.io/Symbiota2/setup/installation.html).
Finally, a review of the original Symbiota platform is offered in
[Gries et al., 2014](https://bdj.pensoft.net/articles.php?id=1114).

## Example workflow for SymbiotaR2

In general, there are four steps for using SymbiotaR2:

1. Determine the URL of the Symbiota2 portal you wish to access data
   from; its "API endpoint" is probably its web address with "api"
   appended to it (see below). Remember that your particular portal
   may not have enabled data download.
2. Load the SymbiotaR2 package (see [Installation](#inst) below for
   install instructions).
3. Find the function corresponding to the kind of data you wish to
pull from the Symbiota2 portal (e.g., `Coordinates` for co-ordinate
data).
    - Functions are named after the resources they download, and are
  grouped according to the relevant API call.
    - Note that, because each Symbiota2 portal owner can load their
  own plugins into the API, it's possible that not every API endpoint
  will be covered.
    - You can find a full list by typing `library(help=SymbiotaR2)`
4. Call the function, specifying the Symbiota2 portal using the `url`
argument (see [Example](#ex) and [Portal Specification](#portspec)
below).

The R code below provides an example of how to install a `Coordinates` 
resource from an example Symbiota2 portal

```{R}
# Step 1 - Find the URL
myURL <- "http://imaginary-symbiota2-portal.com/api"
# Step 2 - Install the package (only required the first time you're using it)
install.packages("SymbiotaR2") 
# Step 3 - Load the package
library(SymbiotaR2)
# Step 4 - Choose the kind of data you want
library(help=SymbiotaR2)
# Step 5 - Download your data
myCoordinates <- Coordinates(url = myURL)
```

From here, the `myCoordinates` object can be used as desired.

## <a name="portspec"></a>Setting up a default portal for download

Calling `SymbiotaR2_setup` will specify a default portal URL to use for 
all subsequent SymbiotaR2 calls made within your R session.
Specifing a different `url` argument will let you refer to
a portal besides the default. The code below offers an example:

```{R}
SymbiotaR2_setup("http://imaginary-symbiota-portal.com/api")
Coordinates() # Download from http://imaginary-symbiota-portal.com/api
Coordinates("http://another-imaginary-portal.com/api") # Download from a different portal
```

If the `append` argument in your `SymbiotaR2_setup` call is set to 
`TRUE`, then the specified `url` argument will be saved as the default
to your `.Rprofile`, allowing it to be used everytime you start up `R`.

## <a name="inst"></a>Installation

This package is not currently up on CRAN (as it's being developed), 
but it can be downloaded by calling:

```{R}
library(devtools)
install_github("pearselab/SymbiotaR2")
```

Once it has passed peer review, you will be able to install it by
running:

```{R}
install.packages("SymbiotaR2")
```

Load the package using:

```{R}
library(SymbiotaR2)
```

## (For developers) Unit tests

All of the package functions come with tests, for both pulling a
single SymbiotaR2 resource (using the `id` argument), or a collection
of resources (using `page`). Tests for each function are contained in
the `tests/testthat` directory. Running these tests requires you have
access to a fully configured SymbiotaR2 test instance, complete with
demo data, which is both time-consuming to setup and then
time/bandwidth-consuming to run the tests. We therefore release cached
data downloads, generated using `vcr`, for use with this package.

While more information about the `vcr` package can be found on [the
`vcr` page on GitHub](https://github.com/ropensci/vcr), you don't need
to understand how `vcr` works to run the tests for yourself. Instead,
do the following:

1. Build the package as you would normally, with something like `R CMD
   build SymbiotaR2` from the command line.
2. Check the package as you would normally, with something like `R CMD
   check SymbbiotaR2_1.0-0` from the command line.
3. XXX AUSTIN IS THIS CORRECT? XXX
4. YYY WILL No, because all the functions include a `.check.url` call, 
which will fail if the user can't connect to the referenced Symbiota2
portal website--even if a `vcr` cassette exists.

If you want to add new tests, or new functions that address new API
endpoints (perhaps because you have written a Symbiota2 plugin and
want it to work with this package), do the following:

1. Setup a Symbiota2 instance with the canned example data.
2. If you are adding support for a new API endpoint, make a new file
   in `tests/testthat` for your tests. Otherwise, add to one of the
   existing files.
3. Write your test, following the coding style of the other tests,
   particularly with respect to setting up the `vcr` _cassette_. Note
   that the folder `fixtures` contains the cassettes, and that
   `SymbiotaR2` makes use of the file
   `tests/testthat/helper-SymbiotaR2.R` to setup the automatic
   tests. See point 4 below.
4. When writing/checking your test, set the `url` variable at the top
   of the script to be wherever your test instance is. When committing
   your code to submit a pull request (see point 5), change it to the
   address at the top of the other tests (currently
   `http://a02235015-6.bluezone.usu.edu/api/`).
5. When you are finished, submit a pull request to the `master` branch
   of this repository. Please use the pull request template and follow
   the contributor guidelines.

Here is an example of what a piece of testing code may look like:

```{R}
context("AccessStats")
vcr::use_cassette(name = "AccessStats_id", {
  data <- AccessStats(id = 4, url = url)
})
test_that("AccessStats_id", {
  expect_equal(length(data), 12)
  expect_type(data, "list")
})
```

The `data <- AccessStates(url = url, id = 4)` line is the Symbiota2
call, and the `test_that` block below it contains the test
conditions--here, that the `data` object is a `list` of
length 12. These test conditions will vary with the Symbiota2 portal
used, so for tests to pass, the conditions (and possibly the Symbiota2
calls, too) may need to be updated for your particular Symbiota2
portal.

## Contributions

Please check out our [contribution guidelines](https://github.com/pearselab/SymbiotaR2/blob/master/.github/CONTRIBUTING.md).

If you'd like to contribute to the tests in this package (e.g.
to include a test for a new plugin), remember that you'll need an
accessible SymbiotaR2 instance to determine test criteria.

As the underlying Symbiota2 API and the R package are still 
being worked on, we generally recommend holding off
on any package development until these are finalized.
If you're interested in contributing to the
package in the future, though, please [drop one of us an email and
we'll let you know when we're ready](http://pearselab.com/team.html)!
