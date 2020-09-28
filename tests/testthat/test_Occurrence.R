# Occurrence tests
url <- "http://a02235015-6.bluezone.usu.edu/api/"

context("AccessStats")
vcr::use_cassette(name = "AccessStats_id", {
  data <- AccessStats(id = 4, url = url)
})
test_that("AccessStats_id", {
  expect_equal(length(data), 12)
  expect_type(data, "list")
})
vcr::use_cassette(name = "AccessStats_page", {
  data <- AccessStats(page = 1, url = url)
})
test_that("AccessStats_page", {
  expect_equal(length(data), 330)
  expect_type(data, "list")
})

context("Determinations")
vcr::use_cassette(name = "Determinations_id", {
  data <- Determinations(id = 4, url = url)
})
test_that("Determinations_id", {
  expect_equal(length(data), 21)
  expect_type(data, "list")
})
vcr::use_cassette(name = "Determinations_page", {
  data <- Determinations(page = 1, url = url)
})
test_that("Determinations_page", {
  expect_equal(length(data), 600)
  expect_type(data, "list")
})

context("Duplicates")
vcr::use_cassette(name = "Duplicates_id", {
  data <- Duplicates(id = 4, url = url)
})
test_that("Duplicates_id", {
  expect_equal(length(data), 10)
  expect_type(data, "list")
})
vcr::use_cassette(name = "Duplicates_page", {
  data <- Duplicates(page = 1, url = url)
})
test_that("Duplicates_page", {
  expect_equal(length(data), 270)
  expect_type(data, "list")
})

context("Edits")
vcr::use_cassette(name = "Edits_id", {
  data <- Edits(id = 16, url = url)
})
test_that("Edits_id", {
  expect_equal(length(data), 14)
  expect_type(data, "list")
})
vcr::use_cassette(name = "Edits_page", {
  data <- Edits(page = 1, url = url)
})
test_that("Edits_page", {
  expect_equal(length(data), 390)
  expect_type(data, "list")
})

context("FullText")
vcr::use_cassette(name = "FullText_id", {
  data <- FullText(id = 1, url = url)
})
test_that("FullText_id", {
  expect_equal(length(data), 6)
  expect_type(data, "list")
})
vcr::use_cassette(name = "FullText_page", {
  data <- FullText(page = 1, url = url)
})
test_that("FullText_page", {
  expect_equal(length(data), 150)
  expect_type(data, "list")
})

context("GuidDeterminations")
vcr::use_cassette(name = "GuidDeterminations_id", {
  data <- GuidDeterminations(id = "00135877-f154-4fdf-965b-3e56118ed747", url = url)
})
test_that("GuidDeterminations_id", {
  expect_equal(length(data), 9)
  expect_type(data, "list")
})
vcr::use_cassette(name = "GuidDeterminations_page", {
  data <- GuidDeterminations(page = 1, url = url)
})
test_that("GuidDeterminations_page", {
  expect_equal(length(data), 240)
  expect_type(data, "list")
})

context("GuidOccurrences")
vcr::use_cassette(name = "GuidOccurrences_id", {
  data <- GuidOccurrences(id = "00046309-7f89-4d73-8b36-8ee87d7bb053", url = url)
})
test_that("GuidOccurrences_id", {
  expect_equal(length(data), 9)
  expect_type(data, "list")
})
vcr::use_cassette(name = "GuidOccurrences_page", {
  data <- GuidOccurrences(page = 1, url = url)
})
test_that("GuidOccurrences_page", {
  expect_equal(length(data), 240)
  expect_type(data, "list")
})

context("LookupChronostratigraphy")
vcr::use_cassette(name = "LookupChronostratigraphy_id", {
  data <- LookupChronostratigraphy(id = 1, url = url)
})
test_that("LookupChronostratigraphy_id", {
  expect_equal(length(data), 10)
  expect_type(data, "list")
})
vcr::use_cassette(name = "LookupChronostratigraphy_page", {
  data <- LookupChronostratigraphy(page = 1, url = url)
})
test_that("LookupChronostratigraphy_page", {
  expect_equal(length(data), 9)
  expect_type(data, "list")
})

context("LookupCounties")
vcr::use_cassette(name = "LookupCounties_id", {
  data <- LookupCounties(id = 1, url = url)
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
  data <- LookupCountries(id = 1, url = url)
})
test_that("LookupCountries_id", {
  expect_equal(length(data), 9)
  expect_type(data, "list")
})
vcr::use_cassette(name = "LookupCountries_page", {
  data <- LookupCountries(page = 1, url = url)
})
test_that("LookupCountries_page", {
  expect_equal(length(data), 240)
  expect_type(data, "list")
})

context("LookupStateProvinces")
vcr::use_cassette(name = "LookupStateProvinces_id", {
  data <- LookupStateProvinces(id = 1, url = url)
})
test_that("LookupStateProvinces_id", {
  expect_equal(length(data), 8)
  expect_type(data, "list")
})
vcr::use_cassette(name = "LookupStateProvinces_page", {
  data <- LookupStateProvinces(page = 1, url = url)
})
test_that("LookupStateProvinces_page", {
  expect_equal(length(data), 210)
  expect_type(data, "list")
})

context("UploadMappings")
vcr::use_cassette(name = "UploadMappings_id", {
  data <- UploadMappings(id = 64, url = url)
})
test_that("UploadMappings_id", {
  expect_equal(length(data), 9)
  expect_type(data, "list")
})
vcr::use_cassette(name = "UploadMappings_page", {
  data <- UploadMappings(page = 1, url = url)
})
test_that("UploadMappings_page", {
  expect_equal(length(data), 240)
  expect_type(data, "list")
})

context("UploadParameters")
vcr::use_cassette(name = "UploadParameters_id", {
  data <- UploadParameters(id = 6, url = url)
})
test_that("UploadParameters_id", {
  expect_equal(length(data), 21)
  expect_type(data, "list")
})
vcr::use_cassette(name = "UploadParameters_page", {
  data <- UploadParameters(page = 1, url = url)
})
test_that("UploadParameters_page", {
  expect_equal(length(data), 600)
  expect_type(data, "list")
})

context("Verification")
vcr::use_cassette(name = "Verification_id", {
  data <- Verification(id = 6, url = url)
})
test_that("Verification_id", {
  expect_equal(length(data), 12)
  expect_type(data, "list")
})
vcr::use_cassette(name = "Verification_page", {
  data <- Verification(page = 1, url = url)
})
test_that("Verification_page", {
  expect_equal(length(data), 330)
  expect_type(data, "list")
})

context("Associations")
vcr::use_cassette(name = "Associations_id", {
  data <- Associations(id = 1, url = url)
})
test_that("Associations_id", {
  expect_equal(length(data), 21)
  expect_type(data, "list")
})
vcr::use_cassette(name = "Associations_page", {
  data <- Associations(page = 1, url = url)
})
test_that("Associations_page", {
  expect_equal(length(data), 600)
  expect_type(data, "list")
})

context("Comments")
vcr::use_cassette(name = "Comments_id", {
  data <- Comments(id = 1, url = url)
})
test_that("Comments_id", {
  expect_equal(length(data), 10)
  expect_type(data, "list")
})
vcr::use_cassette(name = "Comments_page", {
  data <- Comments(page = 1, url = url)
})
test_that("Comments_page", {
  expect_equal(length(data), 9)
  expect_type(data, "list")
})

context("DatasetLink")
vcr::use_cassette(name = "DatasetLink_id", {
  data <- DatasetLink(id = 1, url = url)
})
test_that("DatasetLink_id", {
  expect_equal(length(data), 8)
  expect_type(data, "list")
})
vcr::use_cassette(name = "DatasetLink_page", {
  data <- DatasetLink(page = 1, url = url)
})
test_that("DatasetLink_page", {
  expect_equal(length(data), 210)
  expect_type(data, "list")
})

context("Datasets")
vcr::use_cassette(name = "Datasets_id", {
  data <- Datasets(id = 1, url = url)
})
test_that("Datasets_id", {
  expect_equal(length(data), 10)
  expect_type(data, "list")
})
vcr::use_cassette(name = "Datasets_page", {
  data <- Datasets(page = 1, url = url)
})
test_that("Datasets_page", {
  expect_equal(length(data), 252)
  expect_type(data, "list")
})

context("Exchange")
vcr::use_cassette(name = "Exchange_id", {
  data <- Exchange(id = 1, url = url)
})
test_that("Exchange_id", {
  expect_equal(length(data), 24)
  expect_type(data, "list")
})
vcr::use_cassette(name = "Exchange_page", {
  data <- Exchange(page = 1, url = url)
})
test_that("Exchange_page", {
  expect_equal(length(data), 690)
  expect_type(data, "list")
})

context("Loans")
vcr::use_cassette(name = "Loans_id", {
  data <- Loans(id = 1, url = url)
})
test_that("Loans_id", {
  expect_equal(length(data), 36)
  expect_type(data, "list")
})
vcr::use_cassette(name = "Loans_page", {
  data <- Loans(page = 1, url = url)
})
test_that("Loans_page", {
  expect_equal(length(data), 840)
  expect_type(data, "list")
})

context("Occurrences")
vcr::use_cassette(name = "Occurrences_id", {
  data <- Occurrences(id = 1, url = url)
})
test_that("Occurrences_id", {
  expect_equal(length(data), 108)
  expect_type(data, "list")
})
vcr::use_cassette(name = "Occurrences_page", {
  data <- Occurrences(page = 1, url = url)
})
test_that("Occurrences_page", {
  expect_equal(length(data), 107)
  expect_type(data, "list")
})
