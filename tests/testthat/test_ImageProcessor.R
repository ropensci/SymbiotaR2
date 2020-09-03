# ImageProcessor tests
url <- "http://a02235015-6.bluezone.usu.edu/api/"

context("Projects")
vcr::use_cassette(name="Projects_ID",{
  data <- Projects(url=url, ID=5)
})
test_that("Projects_ID",{
  expect_equal(length(data),  27)
  expect_type(data, "list")
})
vcr::use_cassette(name="Projects_page",{
  data <- Projects(url=url, page=1)
})
test_that("Projects_page",{
  expect_equal(length(data),  702)
  expect_type(data, "list")
})

context("RawLabels")
vcr::use_cassette(name="RawLabels_ID",{
  data <- RawLabels(url=url, ID=124663)
})
test_that("RawLabels_ID",{
  expect_equal(length(data),  13)
  expect_type(data, "list")
})
vcr::use_cassette(name="RawLabels_page",{
  data <- RawLabels(url=url, page=1)
})
test_that("RawLabels_page",{
  expect_equal(length(data),  360)
  expect_type(data, "list")
})
