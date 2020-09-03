# Crowdsource tests
url <- "http://a02235015-6.bluezone.usu.edu/api/"

context("Central")
use_cassette(name="Central_ID",{
  data <- Central(url=url, ID=1)
})
test_that("Central_ID",{
  expect_equal(length(data),  10)
  expect_type(data, "list")
})
use_cassette(name="Central_page",{
  data <- Central(url=url, page=1)
})
test_that("Central_page",{
  expect_equal(length(data),  18)
  expect_type(data, "list")
})

context("Queue")
use_cassette(name="Queue_ID",{
  data <- Queue(url=url, ID=1)
})
test_that("Queue_ID",{
  expect_equal(length(data),  12)
  expect_type(data, "list")
})
use_cassette(name="Queue_page",{
  data <- Queue(url=url, page=1)
})
test_that("Queue_page",{
  expect_equal(length(data),  55)
  expect_type(data, "list")
})
