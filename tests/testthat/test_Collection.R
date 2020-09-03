# Collection tests
url <- "http://a02235015-6.bluezone.usu.edu/api/"

context("Categories")
vcr::use_cassette(name="Categories_id",{
  data <- Categories(url=url, id=1)
})
test_that("Categories_id",{
  expect_equal(length(data),  12)
  expect_type(data, "list")
})
vcr::use_cassette(name="Categories_page",{
  data <- Categories(url=url, page=1)
})
test_that("Categories_page",{
  expect_equal(length(data),  110)
  expect_type(data, "list")
})

context("Institutions")
vcr::use_cassette(name="Institutions_id",{
  data <- Institutions(url=url, id=5)
})
test_that("Institutions_id",{
  expect_equal(length(data),  21)
  expect_type(data, "list")
})
vcr::use_cassette(name="Institutions_page",{
  data <- Institutions(url=url, page=1)
})
test_that("Institutions_page",{
  expect_equal(length(data),  600)
  expect_type(data, "list")
})

context("Stats")
vcr::use_cassette(name="Stats_id",{
  data <- Stats(url=url, id=1)
})
test_that("Stats_id",{
  expect_equal(length(data),  14)
  expect_type(data, "list")
})
vcr::use_cassette(name="Stats_page",{
  data <- Stats(url=url, page=1)
})
test_that("Stats_page",{
  expect_equal(length(data),  390)
  expect_type(data, "list")
})

context("Collections")
vcr::use_cassette(name="Collections_id",{
  data <- Collections(url=url, id=1)
})
test_that("Collections_id",{
  expect_equal(length(data),  37)
  expect_type(data, "list")
})
vcr::use_cassette(name="Collections_page",{
  data <- Collections(url=url, page=1)
})
test_that("Collections_page",{
  expect_equal(length(data),  36)
  expect_type(data, "list")
})
