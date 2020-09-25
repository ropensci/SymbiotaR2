# Checklist tests
url <- "http://a02235015-6.bluezone.usu.edu/api/"

context("ChecklistProjects")
vcr::use_cassette(name = "ChecklistProjects_id", {
  data <- ChecklistProjects(id = 1, url = url)
})
test_that("ChecklistProjects_id", {
  expect_equal(length(data), 19)
  expect_type(data, "list")
})
vcr::use_cassette(name = "ChecklistProjects_page", {
  data <- ChecklistProjects(page = 1, url = url)
})
test_that("ChecklistProjects_page", {
  expect_equal(length(data), 18)
  expect_type(data, "list")
})

context("Coordinates")
vcr::use_cassette(name = "Coordinates_id", {
  data <- Coordinates(id = 5, url = url)
})
test_that("Coordinates_id", {
  expect_equal(length(data), 2)
  expect_type(data, "double")
})
vcr::use_cassette(name = "Coordinates_page", {
  data <- Coordinates(page = 1, url = url)
})
test_that("Coordinates_page", {
  expect_equal(length(data), 2)
  expect_type(data, "list")
})

context("TaxaLink")
vcr::use_cassette(name = "TaxaLink_id", {
  data <- TaxaLink(id = 5, url = url)
})
test_that("TaxaLink_id", {
  expect_equal(length(data), 19)
  expect_type(data, "list")
})
vcr::use_cassette(name = "TaxaLink_page", {
  data <- TaxaLink(page = 1, url = url)
})
test_that("TaxaLink_page", {
  expect_equal(length(data), 540)
  expect_type(data, "list")
})

context("Checklists")
vcr::use_cassette(name = "Checklists_id", {
  data <- Checklists(id = 1, url = url)
})
test_that("Checklists_id", {
  expect_equal(length(data), 31)
  expect_type(data, "list")
})
vcr::use_cassette(name = "Checklists_page", {
  data <- Checklists(page = 1, url =url)
})
test_that("Checklists_page", {
  expect_equal(length(data), 30)
  expect_type(data, "list")
})
