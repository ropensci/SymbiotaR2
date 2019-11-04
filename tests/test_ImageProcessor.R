# ImageProcessor tests

context("Projects")
test_that("Projects",{
  data <- Projects(ID=5)
  expect_equal(length(data),  27)
  expect_is(data, "list")
})
test_that("Projects",{
  data <- Projects(page=1)
  expect_equal(length(data),  702)
  expect_is(data, "list")
})


context("RawLabels")
test_that("RawLabels",{
  data <- RawLabels(ID=124663)
  expect_equal(length(data),  13)
  expect_is(data, "list")
})
test_that("RawLabels",{
  data <- RawLabels(page=1)
  expect_equal(length(data),  360)
  expect_is(data, "list")
})

