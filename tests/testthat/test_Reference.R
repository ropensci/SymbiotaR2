# Reference tests
url <- "http://a02235015-6.bluezone.usu.edu/api/"

context("LookupReferenceTypes")
use_cassette(name="LookupReferenceTypes_ID",{
  data <- LookupReferenceTypes(url=url, ID=5)
})
test_that("LookupReferenceTypes_ID",{
  expect_equal(length(data),  25)
  expect_type(data, "list")
})
use_cassette(name="LookupReferenceTypes_page",{
  data <- LookupReferenceTypes(url=url, page=1)
})
test_that("LookupReferenceTypes_page",{
  expect_equal(length(data),  720)
  expect_type(data, "list")
})
