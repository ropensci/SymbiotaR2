# Crowdsource tests

context("Central")
use_cassette(name="Central_ID", {
  test_that("Central_ID",{
    data <- Central(url=url, ID=1)
    expect_equal(length(data),  10)
    expect_type(data, "list")
  })
})
use_cassette(name="Central_page", {
  test_that("Central_page",{
    data <- Central(url=url, page=1)
    expect_equal(length(data),  18)
    expect_type(data, "list")
  })
})

context("Queue")
use_cassette(name="Queue_ID", {
  test_that("Queue_ID",{
    data <- Queue(url=url, ID=1)
    expect_equal(length(data),  12)
    expect_type(data, "list")
  })
})
use_cassette(name="Queue_page", {
  test_that("Queue_page",{
    data <- Queue(url=url, page=1)
    expect_equal(length(data),  55)
    expect_type(data, "list")
  })
})
