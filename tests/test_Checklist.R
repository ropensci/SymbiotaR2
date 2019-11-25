# Checklist tests

context("ChecklistProjects")
use_cassette(name="ChecklistProjects_ID", {
  test_that("ChecklistProjects_ID",{
    data <- ChecklistProjects(ID=1)
    expect_equal(length(data),  19)
    expect_is(data, "list")
  })
})
use_cassette(name="ChecklistProjects_page", {
  test_that("ChecklistProjects_page",{
    data <- ChecklistProjects(page=1)
    expect_equal(length(data),  18)
    expect_is(data, "list")
  })
})

context("Children")
#Children

context("Coordinates")
use_cassette(name="Coordinates_ID",{
  test_that("Coordinates_ID",{
    data <- Coordinates(ID=5)
    expect_equal(length(data),  2)
    expect_is(data, "double")
  })
})
use_cassette(name="Coordinates_page",{
  test_that("Coordinates_page",{
    data <- Coordinates(page=1)
    expect_equal(length(data),  2)
    expect_is(data, "list")
  })
})

context("Dynamic")
#Dynamic

context("ProjectCategories")
#ProjectCategories

context("TaxaComments")
#TaxaComments

context("TaxaLink")
use_cassette(name="TaxaLink_ID",{
  test_that("TaxaLink_ID",{
    data <- TaxaLink(ID=5)
    expect_equal(length(data),  19)
    expect_is(data, "list")
  })
})
use_cassette(name="TaxaLink_page",{
  test_that("TaxaLink_page",{
    data <- TaxaLink(page=1)
    expect_equal(length(data),  540)
    expect_is(data, "list")
  })
})

context("Vouchers")
#Vouchers

context("Checklists")
use_cassette(name="Checklists_ID", {
  test_that("Checklists_ID",{
    data <- Checklists(ID=1)
    expect_equal(length(data),  31)
    expect_is(data, "list")
  })
})
use_cassette(name="Checklists_page", {
  test_that("Checklists_page",{
    data <- Checklists(page=1)
    expect_equal(length(data),  30)
    expect_is(data, "list")
  })
})