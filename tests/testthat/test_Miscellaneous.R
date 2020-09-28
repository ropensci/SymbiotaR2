# Miscellaneous tests
url <- "http://a02235015-6.bluezone.usu.edu/api/"

context("Configurations")
vcr::use_cassette(name = "Configurations_id", {
  data <- Configurations(id = 5, url = url)
})
test_that("Configurations_id", {
  expect_equal(length(data), 7)
  expect_type(data, "list")
})
vcr::use_cassette(name = "Configurations_page", {
  data <- Configurations(page = 1, url = url)
})
test_that("Configurations_page", {
  expect_equal(length(data), 180)
  expect_type(data, "list")
})

context("LookupLanguages")
vcr::use_cassette(name = "LookupLanguages_id", {
  data <- LookupLanguages(id = 5, url = url)
})
test_that("LookupLanguages_id", {
  expect_equal(length(data), 9)
  expect_type(data, "list")
})
vcr::use_cassette(name = "LookupLanguages_page", {
  data <- LookupLanguages(page = 1, url = url)
})
test_that("LookupLanguages_page", {
  expect_equal(length(data), 240)
  expect_type(data, "list")
})

context("SchemaVersion")
vcr::use_cassette(name = "SchemaVersion_id", {
  data <- SchemaVersion(id = 1, url = url)
})
test_that("SchemaVersion_id", {
  expect_equal(length(data), 6)
  expect_type(data, "list")
})
vcr::use_cassette(name = "SchemaVersion_page", {
  data <- SchemaVersion(page = 1, url = url)
})
test_that("SchemaVersion_page", {
  expect_equal(length(data), 15)
  expect_type(data, "list")
})
