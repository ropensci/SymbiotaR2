# Collection tests
url <- "http://a02235015-6.bluezone.usu.edu/api/"

context("Categories")
use_cassette(name="Categories_ID",{
  data <- Categories(url=url, ID=1)
})
test_that("Categories_ID",{
  expect_equal(length(data),  12)
  expect_type(data, "list")
})
use_cassette(name="Categories_page",{
  data <- Categories(url=url, page=1)
})
test_that("Categories_page",{
  expect_equal(length(data),  110)
  expect_type(data, "list")
})

context("Institutions")
use_cassette(name="Institutions_ID",{
  data <- Institutions(url=url, ID=5)
})
test_that("Institutions_ID",{
  expect_equal(length(data),  21)
  expect_type(data, "list")
})
use_cassette(name="Institutions_page",{
  data <- Institutions(url=url, page=1)
})
test_that("Institutions_page",{
  expect_equal(length(data),  600)
  expect_type(data, "list")
})

context("Stats")
use_cassette(name="Stats_ID",{
  data <- Stats(url=url, ID=1)
})
test_that("Stats_ID",{
  expect_equal(length(data),  14)
  expect_type(data, "list")
})
use_cassette(name="Stats_page",{
  data <- Stats(url=url, page=1)
})
test_that("Stats_page",{
  expect_equal(length(data),  390)
  expect_type(data, "list")
})

context("Collections")
use_cassette(name="Collections_ID",{
  data <- Collections(url=url, ID=1)
})
test_that("Collections_ID",{
  expect_equal(length(data),  37)
  expect_type(data, "list")
})
use_cassette(name="Collections_page",{
  data <- Collections(url=url, page=1)
})
test_that("Collections_page",{
  expect_equal(length(data),  36)
  expect_type(data, "list")
})
