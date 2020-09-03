# Glossary tests
url <- "http://a02235015-6.bluezone.usu.edu/api/"

context("Glossary")
vcr::use_cassette(name="Glossary_ID",{
  data <- Glossary(url=url, ID=5)
})
test_that("Glossary_ID",{
  expect_equal(length(data),  15)
  expect_type(data, "list")
})
vcr::use_cassette(name="Glossary_page",{
  data <- Glossary(url=url, page=1)
})
test_that("Glossary_page",{
  expect_equal(length(data),  420)
  expect_type(data, "list")
})

context("TermLink_ID")
vcr::use_cassette(name="TermLink_ID",{
  data <- TermLink(url=url, ID=1)
})
test_that("TermLink",{
  expect_equal(length(data),  8)
  expect_type(data, "list")
})
vcr::use_cassette(name="TermLink_page",{
  data <- TermLink(url=url, page=1)
})
test_that("TermLink_page",{
  expect_equal(length(data),  210)
  expect_type(data, "list")
})
