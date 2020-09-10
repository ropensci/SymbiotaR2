# Glossary tests
url <- "http://a02235015-6.bluezone.usu.edu/api/"

context("Glossary")
vcr::use_cassette(name = "Glossary_id", {
  data <- Glossary(url = url, id = 5)
})
test_that("Glossary_id", {
  expect_equal(length(data), 15)
  expect_type(data, "list")
})
vcr::use_cassette(name = "Glossary_page", {
  data <- Glossary(url = url, page = 1)
})
test_that("Glossary_page", {
  expect_equal(length(data), 420)
  expect_type(data, "list")
})

context("TermLink_id")
vcr::use_cassette(name = "TermLink_id", {
  data <- TermLink(url = url, id = 1)
})
test_that("TermLink", {
  expect_equal(length(data), 8)
  expect_type(data, "list")
})
vcr::use_cassette(name = "TermLink_page", {
  data <- TermLink(url = url, page = 1)
})
test_that("TermLink_page", {
  expect_equal(length(data), 210)
  expect_type(data, "list")
})
