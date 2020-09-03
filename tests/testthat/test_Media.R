# Media tests
url <- "http://a02235015-6.bluezone.usu.edu/api/"

context("TagKey")
vcr::use_cassette(name="TagKey_ID",{
  data <- TagKey(url=url, ID="Diagnostic")
})
test_that("TagKey_ID",{
  expect_equal(length(data),  8)
  expect_type(data, "list")
})
vcr::use_cassette(name="TagKey_page",{
  data <- TagKey(url=url, page=1)
})
test_that("TagKey_page",{
  expect_equal(length(data),  70)
  expect_type(data, "list")
})
