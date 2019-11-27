# Exsiccati tests

context("Numbers")
use_cassette(name="Numbers_ID", {
  test_that("Numbers_ID",{
    data <- Numbers(url=url, ID=5)
    expect_equal(length(data),  9)
    expect_type(data, "list")
  })
})
use_cassette(name="Numbers_page", {
  test_that("Numbers_page",{
    data <- Numbers(url=url, page=1)
    expect_equal(length(data),  30)
    expect_type(data, "list")
  })
})

context("Titles")
use_cassette(name="Titles_ID", {
  test_that("Titles_ID",{
    data <- Titles(url=url, ID=1)
    expect_equal(length(data),  14)
    expect_type(data, "list")
  })
})
use_cassette(name="Titles_page", {
  test_that("Titles_page",{
    data <- Titles(url=url, page=1)
    expect_equal(length(data),  26)
    expect_type(data, "list")
  })
})
