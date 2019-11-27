# Traits test

context("Traits")
use_cassette(name="Traits_ID", {
  test_that("Traits_ID",{
    data <- Traits(url=url, ID = 1)
    expect_equal(length(data),  16)
    expect_type(data, "list")
  })
})
use_cassette(name="Traits_page", {
  test_that("Traits_page",{
    data <- Traits(url=url, page=1)
    expect_equal(length(data),  60)
    expect_type(data, "list")
  })
})
