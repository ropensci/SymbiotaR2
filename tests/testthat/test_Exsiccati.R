# Exsiccati tests
url <- "http://a02235015-6.bluezone.usu.edu/api/"

context("Numbers")
vcr::use_cassette(name = "Numbers_id", {
  data <- Numbers(url = url, id = 5)
})
test_that("Numbers_id", {
  expect_equal(length(data), 9)
  expect_type(data, "list")
})
vcr::use_cassette(name = "Numbers_page", {
  data <- Numbers(url = url, page = 1)
})
test_that("Numbers_page", {
  expect_equal(length(data), 30)
  expect_type(data, "list")
})

context("Titles")
vcr::use_cassette(name = "Titles_id", {
  data <- Titles(url = url, id = 1)
})
test_that("Titles_id", {
  expect_equal(length(data), 14)
  expect_type(data, "list")
})
vcr::use_cassette(name = "Titles_page", {
  data <- Titles(url = url, page = 1)
})
test_that("Titles_page", {
  expect_equal(length(data), 26)
  expect_type(data, "list")
})
