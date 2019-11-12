# Collection tests

context("Categories")
test_that("Categories",{
  data <- Categories(ID=1)
  expect_equal(length(data),  12)
  expect_is(data, "list")
})
test_that("Categories",{
  data <- Categories(page=1)
  expect_equal(length(data),  110)
  expect_is(data, "list")
})

context("Institutions")
test_that("Institutions",{
  data <- Institutions(ID=5)
  expect_equal(length(data),  21)
  expect_is(data, "list")
})
test_that("Institutions",{
  data <- Institutions(page=1)
  expect_equal(length(data),  600)
  expect_is(data, "list")
})

context("Stats")
test_that("Stats",{
  data <- Stats(ID=5)
  expect_equal(length(data),  14)
  expect_is(data, "list")
})
test_that("Stats",{
  data <- Stats(page=1)
  expect_equal(length(data),  390)
  expect_is(data, "list")
})