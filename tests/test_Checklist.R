# Checklist tests

context("ChecklistProjects")
use_cassette(name="ChecklistProjects_ID", {
  test_that("ChecklistProjects_ID",{
    data <- ChecklistProjects(url=url, ID=1)
    expect_equal(length(data),  19)
    expect_type(data, "list")
  })
})
use_cassette(name="ChecklistProjects_page", {
  test_that("ChecklistProjects_page",{
    data <- ChecklistProjects(url=url, page=1)
    expect_equal(length(data),  18)
    expect_type(data, "list")
  })
})

context("Coordinates")
use_cassette(name="Coordinates_ID",{
  test_that("Coordinates_ID",{
    data <- Coordinates(url=url, ID=5)
    expect_equal(length(data),  2)
    expect_type(data, "double")
  })
})
use_cassette(name="Coordinates_page",{
  test_that("Coordinates_page",{
    data <- Coordinates(url=url, page=1)
    expect_equal(length(data),  2)
    expect_type(data, "list")
  })
})

context("TaxaLink")
use_cassette(name="TaxaLink_ID",{
  test_that("TaxaLink_ID",{
    data <- TaxaLink(url=url, ID=5)
    expect_equal(length(data),  19)
    expect_type(data, "list")
  })
})
use_cassette(name="TaxaLink_page",{
  test_that("TaxaLink_page",{
    data <- TaxaLink(url=url, page=1)
    expect_equal(length(data),  540)
    expect_type(data, "list")
  })
})

context("Checklists")
use_cassette(name="Checklists_ID", {
  test_that("Checklists_ID",{
    data <- Checklists(url=url, ID=1)
    expect_equal(length(data),  31)
    expect_type(data, "list")
  })
})
use_cassette(name="Checklists_page", {
  test_that("Checklists_page",{
    data <- Checklists(url=url, page=1)
    expect_equal(length(data),  30)
    expect_type(data, "list")
  })
})
