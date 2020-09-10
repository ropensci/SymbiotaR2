# Occurrence tests
url <- "http://a02235015-6.bluezone.usu.edu/api/"

context("AccessStats")
vcr::use_cassette(name = "AccessStats_id", {
  data <- AccessStats(url = url, id = 4)
})
test_that("AccessStats_id", {
  expect_equal(length(data), 12)
  expect_type(data, "list")
})
vcr::use_cassette(name = "AccessStats_page", {
  data <- AccessStats(url = url, page = 1)
})
test_that("AccessStats_page", {
  expect_equal(length(data), 330)
  expect_type(data, "list")
})

context("Determinations")
vcr::use_cassette(name = "Determinations_id", {
  data <- Determinations(url = url, id = 4)
})
test_that("Determinations_id", {
  expect_equal(length(data), 21)
  expect_type(data, "list")
})
vcr::use_cassette(name = "Determinations_page", {
  data <- Determinations(url = url, page = 1)
})
test_that("Determinations_page", {
  expect_equal(length(data), 600)
  expect_type(data, "list")
})

context("Duplicates")
vcr::use_cassette(name = "Duplicates_id", {
  data <- Duplicates(url = url, id = 4)
})
test_that("Duplicates_id", {
  expect_equal(length(data), 10)
  expect_type(data, "list")
})
vcr::use_cassette(name = "Duplicates_page", {
  data <- Duplicates(url = url, page = 1)
})
test_that("Duplicates_page", {
  expect_equal(length(data), 270)
  expect_type(data, "list")
})

context("Edits")
vcr::use_cassette(name = "Edits_id", {
  data <- Edits(url = url, id = 16)
})
test_that("Edits_id", {
  expect_equal(length(data), 14)
  expect_type(data, "list")
})
vcr::use_cassette(name = "Edits_page", {
  data <- Edits(url = url, page = 1)
})
test_that("Edits_page", {
  expect_equal(length(data), 390)
  expect_type(data, "list")
})

context("FullText")
vcr::use_cassette(name = "FullText_id", {
  data <- FullText(url = url, id = 1)
})
test_that("FullText_id", {
  expect_equal(length(data), 6)
  expect_type(data, "list")
})
vcr::use_cassette(name = "FullText_page", {
  data <- FullText(url = url, page = 1)
})
test_that("FullText_page", {
  expect_equal(length(data), 150)
  expect_type(data, "list")
})

context("GuidDeterminations")
vcr::use_cassette(name = "GuidDeterminations_id", {
  data <- GuidDeterminations(url = url, id = "00135877-f154-4fdf-965b-3e56118ed747")
})
test_that("GuidDeterminations_id", {
  expect_equal(length(data), 9)
  expect_type(data, "list")
})
vcr::use_cassette(name = "GuidDeterminations_page", {
  data <- GuidDeterminations(url = url, page = 1)
})
test_that("GuidDeterminations_page", {
  expect_equal(length(data), 240)
  expect_type(data, "list")
})

context("GuidOccurrences")
vcr::use_cassette(name = "GuidOccurrences_id", {
  data <- GuidOccurrences(url = url, id = "00046309-7f89-4d73-8b36-8ee87d7bb053")
})
test_that("GuidOccurrences_id", {
  expect_equal(length(data), 9)
  expect_type(data, "list")
})
vcr::use_cassette(name = "GuidOccurrences_page", {
  data <- GuidOccurrences(url = url, page = 1)
})
test_that("GuidOccurrences_page", {
  expect_equal(length(data), 240)
  expect_type(data, "list")
})

context("LookupChronostratigraphy")
vcr::use_cassette(name = "LookupChronostratigraphy_id", {
  data <- LookupChronostratigraphy(url = url, id = 1)
})
test_that("LookupChronostratigraphy_id", {
  expect_equal(length(data), 10)
  expect_type(data, "list")
})
vcr::use_cassette(name = "LookupChronostratigraphy_page", {
  data <- LookupChronostratigraphy(url = url, page = 1)
})
test_that("LookupChronostratigraphy_page", {
  expect_equal(length(data), 9)
  expect_type(data, "list")
})

context("LookupCounties")
vcr::use_cassette(name = "LookupCounties_id", {
  data <- LookupCounties(url = url, id = 1)
})
test_that("LookupCounties_id", {
  expect_equal(length(data), 7)
  expect_type(data, "list")
})
vcr::use_cassette(name = "LookupCounties_page", {
  data <- LookupCounties(url = url, page = 1)
})
test_that("LookupCounties_page", {
  expect_equal(length(data), 180)
  expect_type(data, "list")
})

context("LookupCountries")
vcr::use_cassette(name = "LookupCountries_id", {
  data <- LookupCountries(url = url, id = 1)
})
test_that("LookupCountries_id", {
  expect_equal(length(data), 9)
  expect_type(data, "list")
})
vcr::use_cassette(name = "LookupCountries_page", {
  data <- LookupCountries(url = url, page = 1)
})
test_that("LookupCountries_page", {
  expect_equal(length(data), 240)
  expect_type(data, "list")
})

context("LookupStateProvinces")
vcr::use_cassette(name = "LookupStateProvinces_id", {
  data <- LookupStateProvinces(url = url, id = 1)
})
test_that("LookupStateProvinces_id", {
  expect_equal(length(data), 8)
  expect_type(data, "list")
})
vcr::use_cassette(name = "LookupStateProvinces_page", {
  data <- LookupStateProvinces(url = url, page = 1)
})
test_that("LookupStateProvinces_page", {
  expect_equal(length(data), 210)
  expect_type(data, "list")
})

context("UploadMappings")
vcr::use_cassette(name = "UploadMappings_id", {
  data <- UploadMappings(url = url, id = 64)
})
test_that("UploadMappings_id", {
  expect_equal(length(data), 9)
  expect_type(data, "list")
})
vcr::use_cassette(name = "UploadMappings_page", {
  data <- UploadMappings(url = url, page = 1)
})
test_that("UploadMappings_page", {
  expect_equal(length(data), 240)
  expect_type(data, "list")
})

context("UploadParameters")
vcr::use_cassette(name = "UploadParameters_id", {
  data <- UploadParameters(url = url, id = 6)
})
test_that("UploadParameters_id", {
  expect_equal(length(data), 21)
  expect_type(data, "list")
})
vcr::use_cassette(name = "UploadParameters_page", {
  data <- UploadParameters(url = url, page = 1)
})
test_that("UploadParameters_page", {
  expect_equal(length(data), 600)
  expect_type(data, "list")
})

context("Verification")
vcr::use_cassette(name = "Verification_id", {
  data <- Verification(url = url, id = 6)
})
test_that("Verification_id", {
  expect_equal(length(data), 12)
  expect_type(data, "list")
})
vcr::use_cassette(name = "Verification_page", {
  data <- Verification(url = url, page = 1)
})
test_that("Verification_page", {
  expect_equal(length(data), 330)
  expect_type(data, "list")
})

context("Associations")
vcr::use_cassette(name = "Associations_id", {
  data <- Associations(url = url, id = 1)
})
test_that("Associations_id", {
  expect_equal(length(data), 21)
  expect_type(data, "list")
})
vcr::use_cassette(name = "Associations_page", {
  data <- Associations(url = url, page = 1)
})
test_that("Associations_page", {
  expect_equal(length(data), 600)
  expect_type(data, "list")
})

context("Comments")
vcr::use_cassette(name = "Comments_id", {
  data <- Comments(url = url, id = 1)
})
test_that("Comments_id", {
  expect_equal(length(data), 10)
  expect_type(data, "list")
})
vcr::use_cassette(name = "Comments_page", {
  data <- Comments(url = url, page = 1)
})
test_that("Comments_page", {
  expect_equal(length(data), 9)
  expect_type(data, "list")
})

context("DatasetLink")
vcr::use_cassette(name = "DatasetLink_id", {
  data <- DatasetLink(url = url, id = 1)
})
test_that("DatasetLink_id", {
  expect_equal(length(data), 8)
  expect_type(data, "list")
})
vcr::use_cassette(name = "DatasetLink_page", {
  data <- DatasetLink(url = url, page = 1)
})
test_that("DatasetLink_page", {
  expect_equal(length(data), 210)
  expect_type(data, "list")
})

context("Datasets")
vcr::use_cassette(name = "Datasets_id", {
  data <- Datasets(url = url, id = 1)
})
test_that("Datasets_id", {
  expect_equal(length(data), 10)
  expect_type(data, "list")
})
vcr::use_cassette(name = "Datasets_page", {
  data <- Datasets(url = url, page = 1)
})
test_that("Datasets_page", {
  expect_equal(length(data), 252)
  expect_type(data, "list")
})

context("Exchange")
vcr::use_cassette(name = "Exchange_id", {
  data <- Exchange(url = url, id = 1)
})
test_that("Exchange_id", {
  expect_equal(length(data), 24)
  expect_type(data, "list")
})
vcr::use_cassette(name = "Exchange_page", {
  data <- Exchange(url = url, page = 1)
})
test_that("Exchange_page", {
  expect_equal(length(data), 690)
  expect_type(data, "list")
})

context("Loans")
vcr::use_cassette(name = "Loans_id", {
  data <- Loans(url = url, id = 1)
})
test_that("Loans_id", {
  expect_equal(length(data), 36)
  expect_type(data, "list")
})
vcr::use_cassette(name = "Loans_page", {
  data <- Loans(url = url, page = 1)
})
test_that("Loans_page", {
  expect_equal(length(data), 840)
  expect_type(data, "list")
})

context("Occurrences")
vcr::use_cassette(name = "Occurrences_id", {
  data <- Occurrences(url = url, id = 1)
})
test_that("Occurrences_id", {
  expect_equal(length(data), 108)
  expect_type(data, "list")
})
vcr::use_cassette(name = "Occurrences_page", {
  data <- Occurrences(url = url, page = 1)
})
test_that("Occurrences_page", {
  expect_equal(length(data), 107)
  expect_type(data, "list")
})
