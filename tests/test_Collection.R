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

context("Collections")
test_that("Collections",{
  data <- Collection(ID=1)
  expect_equal(length(data),  37)
  expect_is(data, "list")
})
test_that("Collections",{
  data <- Collections(page=1)
  expect_equal(length(data),  36)
  expect_is(data, "list")
})