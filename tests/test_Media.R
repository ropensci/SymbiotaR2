# Media tests

context("Media")
#Media

context("Guid")
#Guid

context("Images")
#Images

context("Keywords")
#Keywords

context("Tag")
#Tag

context("TagKey")
test_that("TagKey",{
  data <- TagKey(ID = "Diagnostic")
  expect_equal(length(data),  8)
  expect_is(data, "list")
})
test_that("TagKey",{
  data <- TagKey(page=1)
  expect_equal(length(data),  70)
  expect_is(data, "list")
})