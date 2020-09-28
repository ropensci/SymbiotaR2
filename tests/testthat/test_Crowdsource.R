# Crowdsource tests
url <- "http://a02235015-6.bluezone.usu.edu/api/"

context("Central")
vcr::use_cassette(name = "Central_id", {
  data <- Central(id = 1, url = url)
})
test_that("Central_id", {
  expect_equal(length(data), 10)
  expect_type(data, "list")
})
vcr::use_cassette(name = "Central_page", {
  data <- Central(page = 1, url = url)
})
test_that("Central_page", {
  expect_equal(length(data), 18)
  expect_type(data, "list")
})

context("Queue")
vcr::use_cassette(name = "Queue_id", {
  data <- Queue(id = 1, url = url)
})
test_that("Queue_id", {
  expect_equal(length(data), 12)
  expect_type(data, "list")
})
vcr::use_cassette(name = "Queue_page", {
  data <- Queue(page = 1, url = url)
})
test_that("Queue_page", {
  expect_equal(length(data), 55)
  expect_type(data, "list")
})
