library(testthat)

test_that("Coordinates", {
  data <- Coordinates(ID=1)
  expect_equal(length(data),  2)
})