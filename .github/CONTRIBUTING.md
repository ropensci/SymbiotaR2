# CONTRIBUTING #

## Bugs

* If there's a bug that you'd like addressed in SymbiotaR2, submit an issue on the [Issues page](https://github.com/pearselab/SymbiotaR2/issues), following the format on the [bug report form](https://github.com/pearselab/SymbiotaR2/blob/master/.github/ISSUE_TEMPLATE/bug_report.md).
* Please try and include as much relevant information on the bug as possible.

## Feature request

* If there are package features you'd like to see, submit an issue on the [Issues page](https://github.com/pearselab/SymbiotaR2/issues), following the format on the [feature request from]](https://github.com/pearselab/SymbiotaR2/blob/master/.github/ISSUE_TEMPLATE/feature_request.md).
* Note that feature requests should be pertinent to the SymbiotaR2 package, not the Symbiota2 software itself. The Github page for the Symbiota2 software can be found [here](https://github.com/Symbiota2/Symbiota2).

## Code contributions

* Pull requests should follow the format shown in the [pull request template](https://github.com/pearselab/SymbiotaR2/blob/master/.github/ISSUE_TEMPLATE/bug_report.md), and can be initiated using the steps below. 
* Please refer to the Tests section below if your pull request updates code that will alter the performance of the SymbiotaR2 package tests.

### Broad overview of contributing workflow

* Fork this repo to your Github account
* Clone your version on your account down to your machine from your account, e.g,. `git clone https://github.com/<yourgithubusername>/SymbiotaR2.git`
* Make sure to track progress upstream (i.e., on our version of `SymbiotaR2` at `pearselab/SymbiotaR2`) by doing `git remote add upstream https://github.com/pearselab/SymbiotaR2.git`. Before making changes make sure to pull changes in from upstream by doing either `git fetch upstream` then merge later or `git pull upstream` to fetch and merge in one step
* Make your changes (consider making changes on a new feature branch)
* If your changes affect code (and not just docs), please write tests for those changes, and include them in a `tests` directory (see Tests below)
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

In addition to changing the code, do make sure to udpate the documentation if applicable. The R packages book book has a [chapter on documentation](http://r-pkgs.had.co.nz/man.html) you should read if you aren't familiar.

After code and documentation has been changed, update documentation by running either `devtools::document()` or `roxygen2::roxygenise()`.

Make sure if you change what packages or even functions within packages are imported, most likely add the package to Imports in the DESCRIPTION file and list what functions are imported in the `taxize-package.R` file.

Be conservative about adding new dependencies.


### Style

* SymbiotaR2 is structured hierarchically:"hidden" worker function reside in `R/utils.R`, and all other functions are roughly grouped according to their API calls. When possible, please try to follow this structure; if you're confused at all, feel free reach out to the package maintainers.
* Make sure code, documentation, and comments are no more than 80 characters in width.
* Use `<-` instead of `=` for assignment

## Code of Conduct
Our [Contributor Covenant Code of Code](https://github.com/pearselab/SymbiotaR2/blob/master/CODE_OF_CONDUCT.md) outlines what constitues acceptable and unacceptable behavior on the part of package contributors and maintainers. 
