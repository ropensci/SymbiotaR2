# Reference tests

context("Authors")
#Authors

context("ChecklistTaxaLink")
#ChecklistTaxaLink

context("LookupReferenceTypes")
test_that("LookupReferenceTypes",{
  data <- LookupReferenceTypes(ID = 5)
  expect_equal(length(data),  25)
  expect_is(data, "list")
})
test_that("LookupReferenceTypes",{
  data <- LookupReferenceTypes(page=1)
  expect_equal(length(data),  720)
  expect_is(data, "list")
})

context("References")
#References