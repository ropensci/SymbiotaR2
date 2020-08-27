library(testthat)
library(SymbiotaR2)

library(vcr)
invisible(vcr::vcr_configure(dir="./", record="once"))

test_check("SymbiotaR2")
