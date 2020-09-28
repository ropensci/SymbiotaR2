# Media tests
url <- "http://a02235015-6.bluezone.usu.edu/api/"

context("TagKey")
vcr::use_cassette(name = "TagKey_id", {
  data <- TagKey(id = "Diagnostic", url = url)
})
test_that("TagKey_id", {
  expect_equal(length(data), 8)
  expect_type(data, "list")
})
vcr::use_cassette(name = "TagKey_page", {
  data <- TagKey(page = 1, url = url)
})
test_that("TagKey_page", {
  expect_equal(length(data), 70)
  expect_type(data, "list")
})
