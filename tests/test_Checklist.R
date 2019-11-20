# Checklist tests

context("ChecklistProjects")
test_that("ChecklistProjects",{
  data <- ChecklistProjects(ID=1)
  expect_equal(length(data),  19)
  expect_is(data, "list")
})
test_that("ChecklistProjects",{
  data <- ChecklistProjects(page=1)
  expect_equal(length(data),  18)
  expect_is(data, "list")
})

context("Children")
#Children

context("Coordinates")
test_that("Coordinates",{
  data <- Coordinates(ID=5)
  expect_equal(length(data),  2)
  expect_is(data, "double")
})
test_that("Coordinates",{
  data <- Coordinates(page=1)
  expect_equal(length(data),  25)
  expect_is(data, "list")
})

context("Dynamic")
#Dynamic

context("ProjectCategories")
#ProjectCategories

context("TaxaComments")
#TaxaComments

context("TaxaLink")
test_that("TaxaLink",{
  data <- TaxaLink(ID=5)
  expect_equal(length(data),  19)
  expect_is(data, "list")
})
test_that("TaxaLink",{
  data <- TaxaLink(page=1)
  expect_equal(length(data),  540)
  expect_is(data, "list")
})

context("Vouchers")
#Vouchers

context("Checklists")
test_that("Checklists",{
  data <- Checklists(ID=1)
  expect_equal(length(data),  31)
  expect_is(data, "list")
})
test_that("Checklists",{
  data <- Checklists(page=1)
  expect_equal(length(data),  30)
  expect_is(data, "list")
})