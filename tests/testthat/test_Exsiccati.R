# Exsiccati tests
url <- "http://a02235015-6.bluezone.usu.edu/api/"

context("Numbers")
vcr::use_cassette(name = "Numbers_id", {
  data <- Numbers(id = 5, url = url)
})
test_that("Numbers_id", {
  expect_equal(length(data), 9)
  expect_type(data, "list")
})
vcr::use_cassette(name = "Numbers_page", {
  data <- Numbers(page = 1, url = url)
})
test_that("Numbers_page", {
  expect_equal(length(data), 30)
  expect_type(data, "list")
})

context("Titles")
vcr::use_cassette(name = "Titles_id", {
  data <- Titles(id = 1, url = url)
})
test_that("Titles_id", {
  expect_equal(length(data), 14)
  expect_type(data, "list")
})
vcr::use_cassette(name = "Titles_page", {
  data <- Titles(page = 1, url = url)
})
test_that("Titles_page", {
  expect_equal(length(data), 26)
  expect_type(data, "list")
})
