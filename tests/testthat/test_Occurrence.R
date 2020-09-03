# Occurrence tests
url <- "http://a02235015-6.bluezone.usu.edu/api/"

context("AccessStats")
vcr::use_cassette(name="AccessStats_ID",{
  data <- AccessStats(url=url, ID=4)
})
test_that("AccessStats_ID",{
  expect_equal(length(data),  12)
  expect_type(data, "list")
})
vcr::use_cassette(name="AccessStats_page",{
  data <- AccessStats(url=url, page=1)
})
test_that("AccessStats_page",{
  expect_equal(length(data),  330)
  expect_type(data, "list")
})

context("Determinations")
vcr::use_cassette(name="Determinations_ID",{
  data <- Determinations(url=url, ID=4)
})
test_that("Determinations_ID",{
  expect_equal(length(data),  21)
  expect_type(data, "list")
})
vcr::use_cassette(name="Determinations_page",{
  data <- Determinations(url=url, page=1)
})
test_that("Determinations_page",{
  expect_equal(length(data),  600)
  expect_type(data, "list")
})

context("Duplicates")
vcr::use_cassette(name="Duplicates_ID",{
  data <- Duplicates(url=url, ID=4)
})
test_that("Duplicates_ID",{
  expect_equal(length(data),  10)
  expect_type(data, "list")
})
vcr::use_cassette(name="Duplicates_page",{
  data <- Duplicates(url=url, page=1)
})
test_that("Duplicates_page",{
  expect_equal(length(data),  270)
  expect_type(data, "list")
})

context("Edits")
vcr::use_cassette(name="Edits_ID",{
  data <- Edits(url=url, ID=16)
})
test_that("Edits_ID",{
  expect_equal(length(data),  14)
  expect_type(data, "list")
})
vcr::use_cassette(name="Edits_page",{
  data <- Edits(url=url, page=1)
})
test_that("Edits_page",{
  expect_equal(length(data),  390)
  expect_type(data, "list")
})

context("FullText")
vcr::use_cassette(name="FullText_ID",{
  data <- FullText(url=url, ID=1)
})
test_that("FullText_ID",{
  expect_equal(length(data),  6)
  expect_type(data, "list")
})
vcr::use_cassette(name="FullText_page",{
  data <- FullText(url=url, page=1)
})
test_that("FullText_page",{
  expect_equal(length(data),  150)
  expect_type(data, "list")
})

context("GuidDeterminations")
vcr::use_cassette(name="GuidDeterminations_ID",{
  data <- GuidDeterminations(url=url, ID="00135877-f154-4fdf-965b-3e56118ed747")
})
test_that("GuidDeterminations_ID",{
  expect_equal(length(data),  9)
  expect_type(data, "list")
})
vcr::use_cassette(name="GuidDeterminations_page",{
  data <- GuidDeterminations(url=url, page=1)
})
test_that("GuidDeterminations_page",{
  expect_equal(length(data),  240)
  expect_type(data, "list")
})

context("GuidOccurrences")
vcr::use_cassette(name="GuidOccurrences_ID",{
  data <- GuidOccurrences(url=url, ID="00046309-7f89-4d73-8b36-8ee87d7bb053")
})
test_that("GuidOccurrences_ID",{
  expect_equal(length(data),  9)
  expect_type(data, "list")
})
vcr::use_cassette(name="GuidOccurrences_page",{
  data <- GuidOccurrences(url=url, page=1)
})
test_that("GuidOccurrences_page",{
  expect_equal(length(data),  240)
  expect_type(data, "list")
})

context("LookupChronostratigraphy")
vcr::use_cassette(name="LookupChronostratigraphy_ID",{
  data <- LookupChronostratigraphy(url=url, ID=1)
})
test_that("LookupChronostratigraphy_ID",{
  expect_equal(length(data),  10)
  expect_type(data, "list")
})
vcr::use_cassette(name="LookupChronostratigraphy_page",{
  data <- LookupChronostratigraphy(url=url, page=1)
})
test_that("LookupChronostratigraphy_page",{
  expect_equal(length(data),  9)
  expect_type(data, "list")
})

context("LookupCounties")
vcr::use_cassette(name="LookupCounties_ID",{
  data <- LookupCounties(url=url, ID=1)
})
test_that("LookupCounties_ID",{
  expect_equal(length(data),  7)
  expect_type(data, "list")
})
vcr::use_cassette(name="LookupCounties_page",{
  data <- LookupCounties(url=url, page=1)
})
test_that("LookupCounties_page",{
  expect_equal(length(data),  180)
  expect_type(data, "list")
})

context("LookupCountries")
vcr::use_cassette(name="LookupCountries_ID",{
  data <- LookupCountries(url=url, ID=1)
})
test_that("LookupCountries_ID",{
  expect_equal(length(data),  9)
  expect_type(data, "list")
})
vcr::use_cassette(name="LookupCountries_page",{
  data <- LookupCountries(url=url, page=1)
})
test_that("LookupCountries_page",{
  expect_equal(length(data),  240)
  expect_type(data, "list")
})

context("LookupStateProvinces")
vcr::use_cassette(name="LookupStateProvinces_ID",{
  data <- LookupStateProvinces(url=url, ID=1)
})
test_that("LookupStateProvinces_ID",{
  expect_equal(length(data),  8)
  expect_type(data, "list")
})
vcr::use_cassette(name="LookupStateProvinces_page",{
  data <- LookupStateProvinces(url=url, page=1)
})
test_that("LookupStateProvinces_page",{
  expect_equal(length(data),  210)
  expect_type(data, "list")
})

context("UploadMappings")
vcr::use_cassette(name="UploadMappings_ID",{
  data <- UploadMappings(url=url, ID=64)
})
test_that("UploadMappings_ID",{
  expect_equal(length(data),  9)
  expect_type(data, "list")
})
vcr::use_cassette(name="UploadMappings_page",{
  data <- UploadMappings(url=url, page=1)
})
test_that("UploadMappings_page",{
  expect_equal(length(data),  240)
  expect_type(data, "list")
})

context("UploadParameters")
vcr::use_cassette(name="UploadParameters_ID",{
  data <- UploadParameters(url=url, ID=6)
})
test_that("UploadParameters_ID",{
  expect_equal(length(data),  21)
  expect_type(data, "list")
})
vcr::use_cassette(name="UploadParameters_page",{
  data <- UploadParameters(url=url, page=1)
})
test_that("UploadParameters_page",{
  expect_equal(length(data),  600)
  expect_type(data, "list")
})

context("Verification")
vcr::use_cassette(name="Verification_ID",{
  data <- Verification(url=url, ID=6)
})
test_that("Verification_ID",{
  expect_equal(length(data),  12)
  expect_type(data, "list")
})
vcr::use_cassette(name="Verification_page",{
  data <- Verification(url=url, page=1)
})
test_that("Verification_page",{
  expect_equal(length(data),  330)
  expect_type(data, "list")
})

context("Associations")
vcr::use_cassette(name="Associations_ID",{
  data <- Associations(url=url, ID=1)
})
test_that("Associations_ID",{
  expect_equal(length(data),  21)
  expect_type(data, "list")
})
vcr::use_cassette(name="Associations_page",{
  data <- Associations(url=url, page=1)
})
test_that("Associations_page",{
  expect_equal(length(data),  600)
  expect_type(data, "list")
})

context("Comments")
vcr::use_cassette(name="Comments_ID",{
  data <- Comments(url=url, ID=1)
})
test_that("Comments_ID",{
  expect_equal(length(data),  10)
  expect_type(data, "list")
})
vcr::use_cassette(name="Comments_page",{
  data <- Comments(url=url, page=1)
})
test_that("Comments_page",{
  expect_equal(length(data),  9)
  expect_type(data, "list")
})

context("DatasetLink")
vcr::use_cassette(name="DatasetLink_ID",{
  data <- DatasetLink(url=url, ID=1)
})
test_that("DatasetLink_ID",{
  expect_equal(length(data),  8)
  expect_type(data, "list")
})
vcr::use_cassette(name="DatasetLink_page",{
  data <- DatasetLink(url=url, page=1)
})
test_that("DatasetLink_page",{
  expect_equal(length(data),  210)
  expect_type(data, "list")
})

context("Datasets")
vcr::use_cassette(name="Datasets_ID",{
  data <- Datasets(url=url, ID=1)
})
test_that("Datasets_ID",{
  expect_equal(length(data),  10)
  expect_type(data, "list")
})
vcr::use_cassette(name="Datasets_page",{
  data <- Datasets(url=url, page=1)
})
test_that("Datasets_page",{
  expect_equal(length(data),  252)
  expect_type(data, "list")
})

context("Exchange")
vcr::use_cassette(name="Exchange_ID",{
  data <- Exchange(url=url, ID=1)
})
test_that("Exchange_ID",{
  expect_equal(length(data),  24)
  expect_type(data, "list")
})
vcr::use_cassette(name="Exchange_page",{
  data <- Exchange(url=url, page=1)
})
test_that("Exchange_page",{
  expect_equal(length(data),  690)
  expect_type(data, "list")
})

context("Loans")
vcr::use_cassette(name="Loans_ID",{
  data <- Loans(url=url, ID=1)
})
test_that("Loans_ID",{
  expect_equal(length(data),  36)
  expect_type(data, "list")
})
vcr::use_cassette(name="Loans_page",{
  data <- Loans(url=url, page=1)
})
test_that("Loans_page",{
  expect_equal(length(data),  840)
  expect_type(data, "list")
})

context("Occurrences")
vcr::use_cassette(name="Occurrences_ID",{
  data <- Occurrences(url=url, ID=1)
})
test_that("Occurrences_ID",{
  expect_equal(length(data),  108)
  expect_type(data, "list")
})
vcr::use_cassette(name="Occurrences_page",{
  data <- Occurrences(url=url, page=1)
})
test_that("Occurrences_page",{
  expect_equal(length(data),  107)
  expect_type(data, "list")
})
