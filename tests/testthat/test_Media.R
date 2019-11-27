# Media tests

context("TagKey")
use_cassette(name="TagKey_ID", {
  test_that("TagKey_ID",{
    data <- TagKey(url=url, ID="Diagnostic")
    expect_equal(length(data),  8)
    expect_type(data, "list")
  })
})
use_cassette(name="TagKey_page", {
  test_that("TagKey_page",{
    data <- TagKey(url=url, page=1)
    expect_equal(length(data),  70)
    expect_type(data, "list")
  })
})
