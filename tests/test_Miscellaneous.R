# Miscellaneous tests

context("Configurations")
test_that("Configurations",{
  data <- Configurations(ID=5)
  expect_equal(length(data),  7)
  expect_is(data, "list")
})
test_that("Configurations",{
  data <- Configurations(page=1)
  expect_equal(length(data),  180)
  expect_is(data, "list")
})

context("LookupLanguages")
test_that("LookupLanguages",{
  data <- LookupLanguages(ID = 5)
  expect_equal(length(data),  9)
  expect_is(data, "list")
})
test_that("LookupLanguages",{
  data <- LookupLanguages(page=1)
  expect_equal(length(data),  240)
  expect_is(data, "list")
})

context("SchemaVersion")
test_that("SchemaVersion",{
  data <- SchemaVersion(ID = 1)
  expect_equal(length(data),  6)
  expect_is(data, "list")
})
test_that("SchemaVersion",{
  data <- SchemaVersion(page=1)
  expect_equal(length(data),  15)
  expect_is(data, "list")
})