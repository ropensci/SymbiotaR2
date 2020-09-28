# Reference tests
url <- "http://a02235015-6.bluezone.usu.edu/api/"

context("LookupReferenceTypes")
vcr::use_cassette(name = "LookupReferenceTypes_id", {
  data <- LookupReferenceTypes(id = 5, url = url)
})
test_that("LookupReferenceTypes_id", {
  expect_equal(length(data), 25)
  expect_type(data, "list")
})
vcr::use_cassette(name = "LookupReferenceTypes_page", {
  data <- LookupReferenceTypes(page = 1, url = url)
})
test_that("LookupReferenceTypes_page", {
  expect_equal(length(data), 720)
  expect_type(data, "list")
})
