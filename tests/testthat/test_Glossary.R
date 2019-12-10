# Glossary tests
url <- "http://a02235015-6.bluezone.usu.edu/api/"

context("Glossary")
use_cassette(name="Glossary_ID", {
  test_that("Glossary_ID",{
    data <- Glossary(url=url, ID=5)
    expect_equal(length(data),  15)
    expect_type(data, "list")
  })
})
use_cassette(name="Glossary_page", {
  test_that("Glossary_page",{
    data <- Glossary(url=url, page=1)
    expect_equal(length(data),  420)
    expect_type(data, "list")
  })
})

context("TermLink_ID")
use_cassette(name="TermLink_ID", {
  test_that("TermLink",{
    data <- TermLink(url=url, ID=1)
    expect_equal(length(data),  8)
    expect_type(data, "list")
  })
})
use_cassette(name="TermLink_page", {
  test_that("TermLink_page",{
    data <- TermLink(url=url, page=1)
    expect_equal(length(data),  210)
    expect_type(data, "list")
  })
})
