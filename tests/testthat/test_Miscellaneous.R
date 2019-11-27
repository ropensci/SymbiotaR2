# Miscellaneous tests

context("Configurations")
use_cassette(name="Configurations_ID", {
  test_that("Configurations_ID",{
    data <- Configurations(url=url, ID=5)
    expect_equal(length(data),  7)
    expect_type(data, "list")
  })
})
use_cassette(name="Configurations_page", {
  test_that("Configurations_page",{
    data <- Configurations(url=url, page=1)
    expect_equal(length(data),  180)
    expect_type(data, "list")
  })
})

context("LookupLanguages")
use_cassette(name="LookupLanguages_ID", {
  test_that("LookupLanguages_ID",{
    data <- LookupLanguages(url=url, ID=5)
    expect_equal(length(data),  9)
    expect_type(data, "list")
  })
})
use_cassette(name="LookupLanguages_page", {
  test_that("LookupLanguages_page",{
    data <- LookupLanguages(url=url, page=1)
    expect_equal(length(data),  240)
    expect_type(data, "list")
  })
})

context("SchemaVersion")
use_cassette(name="SchemaVersion_ID", {
  test_that("SchemaVersion_ID",{
    data <- SchemaVersion(url=url, ID=1)
    expect_equal(length(data),  6)
    expect_type(data, "list")
  })
})
use_cassette(name="SchemaVersion_page", {
  test_that("SchemaVersion_page",{
    data <- SchemaVersion(url=url, page=1)
    expect_equal(length(data),  15)
    expect_type(data, "list")
  })
})
