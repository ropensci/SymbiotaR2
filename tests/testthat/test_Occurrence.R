# Occurrence tests

context("AccessStats")
use_cassette(name="AccessStats_ID", {
  test_that("AccessStats_ID",{
    data <- AccessStats(url=url, ID=4)
    expect_equal(length(data),  12)
    expect_type(data, "list")
  })
})
use_cassette(name="AccessStats_page", {
  test_that("AccessStats_page",{
    data <- AccessStats(url=url, page=1)
    expect_equal(length(data),  330)
    expect_type(data, "list")
  })
})

context("Determinations")
use_cassette(name="Determinations_ID", {
  test_that("Determinations_ID",{
    data <- Determinations(url=url, ID=4)
    expect_equal(length(data),  21)
    expect_type(data, "list")
  })
})
use_cassette(name="Determinations_page", {
  test_that("Determinations_page",{
    data <- Determinations(url=url, page=1)
    expect_equal(length(data),  600)
    expect_type(data, "list")
  })
})

context("Duplicates")
use_cassette(name="Duplicates_ID", {
  test_that("Duplicates_ID",{
    data <- Duplicates(url=url, ID=4)
    expect_equal(length(data),  10)
    expect_type(data, "list")
  })
})
use_cassette(name="Duplicates_page", {
  test_that("Duplicates_page",{
    data <- Duplicates(url=url, page=1)
    expect_equal(length(data),  270)
    expect_type(data, "list")
  })
})

context("Edits")
use_cassette(name="Edits_ID", {
  test_that("Edits_ID",{
    data <- Edits(url=url, ID=16)
    expect_equal(length(data),  14)
    expect_type(data, "list")
  })
})
use_cassette(name="Edits_page", {
  test_that("Edits_page",{
    data <- Edits(url=url, page=1)
    expect_equal(length(data),  390)
    expect_type(data, "list")
  })
})

context("FullText")
use_cassette(name="FullText_ID", {
  test_that("FullText_ID",{
    data <- FullText(url=url, ID=1)
    expect_equal(length(data),  6)
    expect_type(data, "list")
  })
})
use_cassette(name="FullText_page", {
  test_that("FullText_page",{
    data <- FullText(url=url, page=1)
    expect_equal(length(data),  150)
    expect_type(data, "list")
  })
})

context("GuidDeterminations")
use_cassette(name="GuidDeterminations_ID", {
  test_that("GuidDeterminations_ID",{
    data <- GuidDeterminations(url=url, ID="00135877-f154-4fdf-965b-3e56118ed747")
    expect_equal(length(data),  9)
    expect_type(data, "list")
  })
})
use_cassette(name="GuidDeterminations_page", {
  test_that("GuidDeterminations_page",{
    data <- GuidDeterminations(url=url, page=1)
    expect_equal(length(data),  240)
    expect_type(data, "list")
  })
})

context("GuidOccurrences")
use_cassette(name="GuidOccurrences_ID", {
  test_that("GuidOccurrences_ID",{
    data <- GuidOccurrences(url=url, ID="00046309-7f89-4d73-8b36-8ee87d7bb053")
    expect_equal(length(data),  9)
    expect_type(data, "list")
  })
})
use_cassette(name="GuidOccurrences_page", {
  test_that("GuidOccurrences_page",{
    data <- GuidOccurrences(url=url, page=1)
    expect_equal(length(data),  240)
    expect_type(data, "list")
  })
})

context("LookupChronostratigraphy")
use_cassette(name="LookupChronostratigraphy_ID", {
  test_that("LookupChronostratigraphy_ID",{
    data <- LookupChronostratigraphy(url=url, ID=1)
    expect_equal(length(data),  10)
    expect_type(data, "list")
  })
})
use_cassette(name="LookupChronostratigraphy_page", {
  test_that("LookupChronostratigraphy_page",{
    data <- LookupChronostratigraphy(url=url, page=1)
    expect_equal(length(data),  9)
    expect_type(data, "list")
  })
})

context("LookupCounties")
use_cassette(name="LookupCounties_ID", {
  test_that("LookupCounties_ID",{
    data <- LookupCounties(url=url, ID=1)
    expect_equal(length(data),  7)
    expect_type(data, "list")
  })
})
use_cassette(name="LookupCounties_page", {
  test_that("LookupCounties_page",{
    data <- LookupCounties(url=url, page=1)
    expect_equal(length(data),  180)
    expect_type(data, "list")
  })
})

context("LookupCountries")
use_cassette(name="LookupCountries_ID", {
  test_that("LookupCountries_ID",{
    data <- LookupCountries(url=url, ID=1)
    expect_equal(length(data),  9)
    expect_type(data, "list")
  })
})
use_cassette(name="LookupCountries_page", {
  test_that("LookupCountries_page",{
    data <- LookupCountries(url=url, page=1)
    expect_equal(length(data),  240)
    expect_type(data, "list")
  })
})

context("LookupStateProvinces")
use_cassette(name="LookupStateProvinces_ID", {
  test_that("LookupStateProvinces_ID",{
    data <- LookupStateProvinces(url=url, ID=1)
    expect_equal(length(data),  8)
    expect_type(data, "list")
  })
})
use_cassette(name="LookupStateProvinces_page", {
  test_that("LookupStateProvinces_page",{
    data <- LookupStateProvinces(url=url, page=1)
    expect_equal(length(data),  210)
    expect_type(data, "list")
  })
})

context("UploadMappings")
use_cassette(name="UploadMappings_ID", {
  test_that("UploadMappings_ID",{
    data <- UploadMappings(url=url, ID=64)
    expect_equal(length(data),  9)
    expect_type(data, "list")
  })
})
use_cassette(name="UploadMappings_page", {
  test_that("UploadMappings_page",{
    data <- UploadMappings(url=url, page=1)
    expect_equal(length(data),  240)
    expect_type(data, "list")
  })
})

context("UploadParameters")
use_cassette(name="UploadParameters_ID", {
  test_that("UploadParameters_ID",{
    data <- UploadParameters(url=url, ID=6)
    expect_equal(length(data),  21)
    expect_type(data, "list")
  })
})
use_cassette(name="UploadParameters_page", {
  test_that("UploadParameters_page",{
    data <- UploadParameters(url=url, page=1)
    expect_equal(length(data),  600)
    expect_type(data, "list")
  })
})

context("Verification")
use_cassette(name="Verification_ID", {
  test_that("Verification_ID",{
    data <- Verification(url=url, ID=6)
    expect_equal(length(data),  12)
    expect_type(data, "list")
  })
})
use_cassette(name="Verification_page", {
  test_that("Verification_page",{
    data <- Verification(url=url, page=1)
    expect_equal(length(data),  330)
    expect_type(data, "list")
  })
})

context("Associations")
use_cassette(name="Associations_ID", {
  test_that("Associations_ID",{
    data <- Associations(url=url, ID=1)
    expect_equal(length(data),  21)
    expect_type(data, "list")
  })
})
use_cassette(name="Associations_page", {
  test_that("Associations_page",{
    data <- Associations(url=url, page=1)
    expect_equal(length(data),  600)
    expect_type(data, "list")
  })
})

context("Comments")
use_cassette(name="Comments_ID", {
  test_that("Comments_ID",{
    data <- Comments(url=url, ID=1)
    expect_equal(length(data),  10)
    expect_type(data, "list")
  })
})
use_cassette(name="Comments_page", {
  test_that("Comments_page",{
    data <- Comments(url=url, page=1)
    expect_equal(length(data),  9)
    expect_type(data, "list")
  })
})

context("DatasetLink")
use_cassette(name="DatasetLink_ID", {
  test_that("DatasetLink_ID",{
    data <- DatasetLink(url=url, ID=1)
    expect_equal(length(data),  8)
    expect_type(data, "list")
  })
})
use_cassette(name="DatasetLink_page", {
  test_that("DatasetLink_page",{
    data <- DatasetLink(url=url, page=1)
    expect_equal(length(data),  210)
    expect_type(data, "list")
  })
})

context("Datasets")
use_cassette(name="Datasets_ID", {
  test_that("Datasets_ID",{
    data <- Datasets(url=url, ID=1)
    expect_equal(length(data),  10)
    expect_type(data, "list")
  })
})
use_cassette(name="Datasets_page", {
  test_that("Datasets_page",{
    data <- Datasets(url=url, page=1)
    expect_equal(length(data),  252)
    expect_type(data, "list")
  })
})

context("Exchange")
use_cassette(name="Exchange_ID", {
  test_that("Exchange_ID",{
    data <- Exchange(url=url, ID=1)
    expect_equal(length(data),  24)
    expect_type(data, "list")
  })
})
use_cassette(name="Exchange_page", {
  test_that("Exchange_page",{
    data <- Exchange(url=url, page=1)
    expect_equal(length(data),  690)
    expect_type(data, "list")
  })
})

context("Loans")
use_cassette(name="Loans_ID", {
  test_that("Loans_ID",{
    data <- Loans(url=url, ID=1)
    expect_equal(length(data),  36)
    expect_type(data, "list")
  })
})
use_cassette(name="Loans_page", {
  test_that("Loans_page",{
    data <- Loans(url=url, page=1)
    expect_equal(length(data),  840)
    expect_type(data, "list")
  })
})

context("Occurrences")
use_cassette(name="Occurrences_ID", {
  test_that("Occurrences_ID",{
    data <- Occurrences(url=url, ID=1)
    expect_equal(length(data),  108)
    expect_type(data, "list")
  })
})
use_cassette(name="Occurrences_page", {
  test_that("Occurrences_page",{
    data <- Occurrences(url=url, page=1)
    expect_equal(length(data),  107)
    expect_type(data, "list")
  })
})
