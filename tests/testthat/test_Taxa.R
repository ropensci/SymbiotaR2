# Taxa tests
url <- "http://a02235015-6.bluezone.usu.edu/api/"

context("Taxa")
use_cassette(name="Taxa_ID", {
  test_that("Taxa_ID",{
    data <- Taxa(url=url, ID= 1)
    expect_equal(length(data),  23)
    expect_type(data, "list")
  })
})
use_cassette(name="Taxa_page", {
  test_that("Taxa_page",{
    data <- Taxa(url=url, page=1)
    expect_equal(length(data),  22)
    expect_type(data, "list")
  })
})

context("Authorities")
use_cassette(name="Authorities_ID", {
  test_that("Authorities_ID",{
    data <- Authorities(url=url, ID= 1)
    expect_equal(length(data),  15)
    expect_type(data, "list")
  })
})
use_cassette(name="Authorities_page", {
  test_that("Authorities_page",{
    data <- Authorities(url=url, page=1)
    expect_equal(length(data),  14)
    expect_type(data, "list")
  })
})

context("DescriptionBlock")
use_cassette(name="DescriptionBlock_ID", {
  test_that("DescriptionBlock_ID",{
    data <- DescriptionBlock(url=url, ID= 1)
    expect_equal(length(data),  14)
    expect_type(data, "list")
  })
})
use_cassette(name="DescriptionBlock_page", {
  test_that("DescriptionBlock_page",{
    data <- DescriptionBlock(url=url, page=1)
    expect_equal(length(data),  390)
    expect_type(data, "list")
  })
})

context("Synonymy")
use_cassette(name="Synonymy_ID", {
  test_that("Synonymy_ID",{
    data <- Synonymy(url=url, ID= 1)
    expect_equal(length(data),  13)
    expect_type(data, "list")
  })
})
use_cassette(name="Synonymy_page", {
  test_that("Synonymy_page",{
    data <- Synonymy(url=url, page=1)
    expect_equal(length(data),  360)
    expect_type(data, "list")
  })
})