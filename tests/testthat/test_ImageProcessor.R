# ImageProcessor tests
url <- "http://a02235015-6.bluezone.usu.edu/api/"

context("Projects")
use_cassette(name="Projects_ID", {
  test_that("Projects_ID",{
    data <- Projects(url=url, ID=5)
    expect_equal(length(data),  27)
    expect_type(data, "list")
  })
})
use_cassette(name="Projects_page", {
  test_that("Projects_page",{
    data <- Projects(url=url, page=1)
    expect_equal(length(data),  702)
    expect_type(data, "list")
  })
})

context("RawLabels")
use_cassette(name="RawLabels_ID", {
  test_that("RawLabels_ID",{
    data <- RawLabels(url=url, ID=124663)
    expect_equal(length(data),  13)
    expect_type(data, "list")
  })
})
use_cassette(name="RawLabels_page", {
  test_that("RawLabels_page",{
    data <- RawLabels(url=url, page=1)
    expect_equal(length(data),  360)
    expect_type(data, "list")
  })
})
