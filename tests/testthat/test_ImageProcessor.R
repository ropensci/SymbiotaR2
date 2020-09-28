# ImageProcessor tests
url <- "http://a02235015-6.bluezone.usu.edu/api/"

context("Projects")
vcr::use_cassette(name = "Projects_id", {
  data <- Projects(id = 5, url = url)
})
test_that("Projects_id", {
  expect_equal(length(data), 27)
  expect_type(data, "list")
})
vcr::use_cassette(name = "Projects_page", {
  data <- Projects(page = 1, url = url)
})
test_that("Projects_page", {
  expect_equal(length(data), 702)
  expect_type(data, "list")
})

context("RawLabels")
vcr::use_cassette(name = "RawLabels_id", {
  data <- RawLabels(id = 124663, url = url)
})
test_that("RawLabels_id", {
  expect_equal(length(data), 13)
  expect_type(data, "list")
})
vcr::use_cassette(name = "RawLabels_page", {
  data <- RawLabels(page = 1, url = url)
})
test_that("RawLabels_page", {
  expect_equal(length(data), 360)
  expect_type(data, "list")
})
