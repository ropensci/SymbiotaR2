library(testthat)
library(SymbiotaR2)

library(vcr)
invisible(vcr::vcr_configure(dir="./tests/fixtures/", record="once"))

test_check("SymbiotaR2")
