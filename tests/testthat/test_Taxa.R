# Taxa tests
url <- "http://a02235015-6.bluezone.usu.edu/api/"

context("Taxa")
vcr::use_cassette(name = "Taxa_id", {
  data <- Taxa(id = 1, url = url)
})
test_that("Taxa_id", {
  expect_equal(length(data), 23)
  expect_type(data, "list")
})
vcr::use_cassette(name = "Taxa_page", {
  data <- Taxa(page = 1, url = url)
})
test_that("Taxa_page", {
  expect_equal(length(data), 22)
  expect_type(data, "list")
})

context("Authorities")
vcr::use_cassette(name = "Authorities_id", {
  data <- Authorities(id = 1, url = url)
})
test_that("Authorities_id", {
  expect_equal(length(data), 15)
  expect_type(data, "list")
})
vcr::use_cassette(name = "Authorities_page", {
  data <- Authorities(page = 1, url = url)
})
test_that("Authorities_page", {
  expect_equal(length(data), 14)
  expect_type(data, "list")
})

context("DescriptionBlock")
vcr::use_cassette(name = "DescriptionBlock_id", {
  data <- DescriptionBlock(id = 1, url = url)
})
test_that("DescriptionBlock_id", {
  expect_equal(length(data), 14)
  expect_type(data, "list")
})
vcr::use_cassette(name = "DescriptionBlock_page", {
  data <- DescriptionBlock(page = 1, url = url)
})
test_that("DescriptionBlock_page", {
  expect_equal(length(data), 390)
  expect_type(data, "list")
})

context("Synonymy")
vcr::use_cassette(name = "Synonymy_id", {
  data <- Synonymy(id = 1, url = url)
})
test_that("Synonymy_id", {
  expect_equal(length(data), 13)
  expect_type(data, "list")
})
vcr::use_cassette(name = "Synonymy_page", {
  data <- Synonymy(page = 1, url = url)
})
test_that("Synonymy_page", {
  expect_equal(length(data), 360)
  expect_type(data, "list")
})
