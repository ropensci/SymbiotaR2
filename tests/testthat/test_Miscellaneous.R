# Miscellaneous tests
url <- "http://a02235015-6.bluezone.usu.edu/api/"

context("Configurations")
vcr::use_cassette(name = "Configurations_id", {
  data <- Configurations(url = url, id = 5)
})
test_that("Configurations_id", {
  expect_equal(length(data), 7)
  expect_type(data, "list")
})
vcr::use_cassette(name = "Configurations_page", {
  data <- Configurations(url = url, page = 1)
})
test_that("Configurations_page", {
  expect_equal(length(data), 180)
  expect_type(data, "list")
})

context("LookupLanguages")
vcr::use_cassette(name = "LookupLanguages_id", {
  data <- LookupLanguages(url = url, id = 5)
})
test_that("LookupLanguages_id", {
  expect_equal(length(data), 9)
  expect_type(data, "list")
})
vcr::use_cassette(name = "LookupLanguages_page", {
  data <- LookupLanguages(url = url, page = 1)
})
test_that("LookupLanguages_page", {
  expect_equal(length(data), 240)
  expect_type(data, "list")
})

context("SchemaVersion")
vcr::use_cassette(name = "SchemaVersion_id", {
  data <- SchemaVersion(url = url, id = 1)
})
test_that("SchemaVersion_id", {
  expect_equal(length(data), 6)
  expect_type(data, "list")
})
vcr::use_cassette(name = "SchemaVersion_page", {
  data <- SchemaVersion(url = url, page = 1)
})
test_that("SchemaVersion_page", {
  expect_equal(length(data), 15)
  expect_type(data, "list")
})
