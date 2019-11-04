# Exsiccati tests

context("Numbers")
test_that("Numbers",{
  data <- Numbers(ID=5)
  expect_equal(data,  27)
  expect_is(data, "double")
})
test_that("Numbers",{
  data <- Numbers(page=1)
  expect_equal(length(data),  30)
  expect_is(data, "list")
})


context("Titles")
test_that("Titles",{
  data <- Titles(ID=1)
  expect_equal(length(data),  14)
  expect_is(data, "list")
})
test_that("Titles",{
  data <- Titles(page=1)
  expect_equal(length(data),  26)
  expect_is(data, "list")
})