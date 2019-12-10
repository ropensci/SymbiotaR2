# Reference tests
url <- "http://a02235015-6.bluezone.usu.edu/api/"

context("LookupReferenceTypes")
use_cassette(name="LookupReferenceTypes_ID", {
  test_that("LookupReferenceTypes_ID",{
    data <- LookupReferenceTypes(url=url, ID=5)
    expect_equal(length(data),  25)
    expect_type(data, "list")
  })
})
use_cassette(name="LookupReferenceTypes_page", {
  test_that("LookupReferenceTypes_page",{
    data <- LookupReferenceTypes(url=url, page=1)
    expect_equal(length(data),  720)
    expect_type(data, "list")
  })
})