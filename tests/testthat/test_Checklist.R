# Checklist tests
url <- "http://a02235015-6.bluezone.usu.edu/api/"

context("ChecklistProjects")
vcr::use_cassette(name="ChecklistProjects_ID",{
  data <- ChecklistProjects(url=url, ID=1)
})
test_that("ChecklistProjects_ID",{
  expect_equal(length(data),  19)
  expect_type(data, "list")
})
vcr::use_cassette(name="ChecklistProjects_page",{
  data <- ChecklistProjects(url=url, page=1)
})
test_that("ChecklistProjects_page",{
  expect_equal(length(data),  18)
  expect_type(data, "list")
})

context("Coordinates")
vcr::use_cassette(name="Coordinates_ID",{
  data <- Coordinates(url=url, ID=5)
})
test_that("Coordinates_ID",{
  expect_equal(length(data),  2)
  expect_type(data, "double")
})
vcr::use_cassette(name="Coordinates_page",{
  data <- Coordinates(url=url, page=1)
})
test_that("Coordinates_page",{
  expect_equal(length(data),  2)
  expect_type(data, "list")
})

context("TaxaLink")
vcr::use_cassette(name="TaxaLink_ID",{
  data <- TaxaLink(url=url, ID=5)
})
test_that("TaxaLink_ID",{
  expect_equal(length(data),  19)
  expect_type(data, "list")
})
vcr::use_cassette(name="TaxaLink_page",{
  data <- TaxaLink(url=url, page=1)
})
test_that("TaxaLink_page",{
  expect_equal(length(data),  540)
  expect_type(data, "list")
})

context("Checklists")
vcr::use_cassette(name="Checklists_ID",{
  data <- Checklists(url=url, ID=1)
})
test_that("Checklists_ID",{
  expect_equal(length(data),  31)
  expect_type(data, "list")
})
vcr::use_cassette(name="Checklists_page",{
  data <- Checklists(url=url, page=1)
})
test_that("Checklists_page",{
  expect_equal(length(data),  30)
  expect_type(data, "list")
})
