# ImageProcessor tests
url <- "http://a02235015-6.bluezone.usu.edu/api/"

context("Projects")
vcr::use_cassette(name="Projects_id",{
  data <- Projects(url=url, id=5)
})
test_that("Projects_id",{
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
vcr::use_cassette(name="RawLabels_id",{
  data <- RawLabels(url=url, id=124663)
})
test_that("RawLabels_id",{
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
