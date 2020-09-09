# CONTRIBUTING #

## Bugs

* If there's a bug that you'd like addressed in SymbiotaR2, submit an issue on the [Issues page](https://github.com/pearselab/SymbiotaR2/issues), following the format on the [bug report form](https://github.com/pearselab/SymbiotaR2/blob/master/.github/ISSUE_TEMPLATE/bug_report.md).
* Because SymbiotaR2 uses HTTP calls to pull information from a Symbiota2 portal, it's important to determine whether errors are originating from the referenced Symbiota2 portal or from the SymbiotaR2 package. For that reason, providing the URL of the relevant Symbiota2 portal can assist maintainers in addressing any problems.

## Feature request

* If there are package features you'd like to see, submit an issue on the [Issues page](https://github.com/pearselab/SymbiotaR2/issues), following the format on the [feature request form](https://github.com/pearselab/SymbiotaR2/blob/master/.github/ISSUE_TEMPLATE/feature_request.md).
* Note that feature requests should be pertinent to the SymbiotaR2 package, not the Symbiota2 software itself. The Github page for the Symbiota2 software can be found [here](https://github.com/Symbiota2/Symbiota2).

## Code contributions

* Pull requests should follow the format shown in the [pull request template](https://github.com/pearselab/SymbiotaR2/blob/master/.github/PULL_REQUEST_TEMPLATE/pull_request_template.md).
* To submit a pull request, follow the workflow outlined below in the 'Overview' section.
* If your pull request updates code that will alter the performance of the package tests, refer to the 'Tests' section below.

### Overview

* Fork this repo to your Github account
* Clone your version on your account down to your machine from your account, e.g,. `git clone https://github.com/<yourgithubusername>/SymbiotaR2.git`
* Make sure to track progress upstream (i.e., on our version of `SymbiotaR2` at `pearselab/SymbiotaR2`) by calling `git remote add upstream https://github.com/pearselab/SymbiotaR2.git`. Before making changes make sure to pull changes in from upstream by doing either `git fetch upstream` then merge later or `git pull upstream` to fetch and merge in one step
* Make your changes (consider making changes on a new feature branch)
* If your changes affect code (and not just documentation), please write tests for those changes, and include them in a `tests` directory (see 'Tests' below)
* Push up to your account
* Submit a pull request to `pearselab/SymbiotaR2`

### Tests

To add tests, go to the folder `tests/testthat/`. Tests are generally organized as individual files for each exported function from the package (that is, listed as an export in the `NAMESPACE` file). If you are adding a new exported function, add a new test file. If you are changing an existing function, look in the tests file for that function; if a function doesn't have tests written for it, make a new test file.

Note that for all SymbiotaR2 functions, tests utilize the [vcr](https://github.com/ropensci/vcr) package for repeated HTTP requests. If you're making tests for a new or updated function, be sure to follow the format used for the current tests: 
* Encase the function call in a `vcr::use_cassette` call (being sure to namespace `use_cassette`)
* After closing `use_casstte`, include the relevant `test_that` lines
* Generated cassettes go into the `tests/fixtures` directory

The easiest set up to run tests is from within an R session:

```r
library(devtools)
library(testthat)
# loads the package
load_all()
```

To test an individual test file

```r
test_file("tests/testthat/test-foobar.R")
```

To run all tests

```r
devtools::test()
```

If you aren't familiar with testing in R, the R packages book has [a chapter on testing](http://r-pkgs.had.co.nz/tests.html).


### Making changes

In addition to changing the code, make sure to udpate the documentation if applicable. For more information on documentation, the R packages book has a [chapter on documentation](http://r-pkgs.had.co.nz/man.html).

After code and documentation has been changed, update documentation by running either `devtools::document()` or `roxygen2::roxygenise()`.

If you change what packages or even functions within packages are imported, then you most likely need to add the package to Imports in the DESCRIPTION file and list what functions are imported in the `SymbiotaR2-package.R` file.

Be conservative about adding new dependencies.


### Style

* SymbiotaR2 follows a certain structure, which is outlined below. Please try to follow this structure when possible; if you have any confusion, feel free to contact the package maintainers.
  * "Worker" functions, including the actual API calls and URL checks, reside in `utils.R`. All other package functions are built based off the functions in this file.
  * Package functions are roughly grouped into scripts based on the URL used to query the SymbiotaR2 portal. So, if a function is pulling a 'Reference' resource, it would be included in the `Reference.R` file.
  * For each function, either a single resource can be retrieved (by specifying an `id` argument), or an entire page of resources (by specifying `page`). Using the `.api.scaffold` function allows for resources to be consistently accessed in this way.
* Make sure code, documentation, and comments are no more than 80 characters in width.
* Use `<-` instead of `=` for assignment

## Code of Conduct
Our [Contributor Covenant Code of Code](https://github.com/pearselab/SymbiotaR2/blob/master/CODE_OF_CONDUCT.md) outlines what constitues acceptable and unacceptable behavior on the part of package contributors and maintainers. 
