# Occurrence tests

context("AccessStats")
test_that("AccessStats",{
  data <- AccessStats(ID = 4)
  expect_equal(length(data),  12)
  expect_is(data, "list")
})
test_that("AccessStats",{
  data <- AccessStats(page=1)
  expect_equal(length(data),  330)
  expect_is(data, "list")
})

context("Determinations")
test_that("Determinations",{
  data <- Determinations(ID = 4)
  expect_equal(length(data),  21)
  expect_is(data, "list")
})
test_that("Determinations",{
  data <- Determinations(page=1)
  expect_equal(length(data),  600)
  expect_is(data, "list")
})

context("Duplicates")
test_that("Duplicates",{
  data <- Duplicates(ID = 4)
  expect_equal(length(data),  10)
  expect_is(data, "list")
})
test_that("Duplicates",{
  data <- Duplicates(page=1)
  expect_equal(length(data),  270)
  expect_is(data, "list")
})

context("Edits")
test_that("Edits",{
  data <- Edits(ID = 16)
  expect_equal(length(data),  14)
  expect_is(data, "list")
})
test_that("Edits",{
  data <- Edits(page=1)
  expect_equal(length(data),  390)
  expect_is(data, "list")
})

context("FullText")
test_that("FullText",{
  data <- FullText(ID = 1)
  expect_equal(length(data),  6)
  expect_is(data, "list")
})
test_that("FullText",{
  data <- FullText(page=1)
  expect_equal(length(data),  150)
  expect_is(data, "list")
})

context("GuidDeterminations")
test_that("GuidDeterminations",{
  data <- GuidDeterminations(ID = "00135877-f154-4fdf-965b-3e56118ed747")
  expect_equal(length(data),  9)
  expect_is(data, "list")
})
test_that("GuidDeterminations",{
  data <- GuidDeterminations(page=1)
  expect_equal(length(data),  240)
  expect_is(data, "list")
})

context("GuidOccurrences")
test_that("GuidOccurrences",{
  data <- GuidOccurrences(ID = "00046309-7f89-4d73-8b36-8ee87d7bb053")
  expect_equal(length(data),  9)
  expect_is(data, "list")
})
test_that("GuidOccurrences",{
  data <- GuidOccurrences(page=1)
  expect_equal(length(data),  240)
  expect_is(data, "list")
})

context("LookupCounties")
test_that("LookupCounties",{
  data <- LookupCounties(ID = 1)
  expect_equal(length(data),  7)
  expect_is(data, "list")
})
test_that("LookupCounties",{
  data <- LookupCounties(page=1)
  expect_equal(length(data),  180)
  expect_is(data, "list")
})

context("LookupCountries")
test_that("LookupCountries",{
  data <- LookupCountries(ID = 1)
  expect_equal(length(data),  9)
  expect_is(data, "list")
})
test_that("LookupCountries",{
  data <- LookupCountries(page=1)
  expect_equal(length(data),  240)
  expect_is(data, "list")
})

context("LookupStateProvinces")
test_that("LookupStateProvinces",{
  data <- LookupStateProvinces(ID = 1)
  expect_equal(length(data),  8)
  expect_is(data, "list")
})
test_that("LookupStateProvinces",{
  data <- LookupStateProvinces(page=1)
  expect_equal(length(data),  210)
  expect_is(data, "list")
})

context("Verification")
test_that("Verifications",{
  data <- Verifications(ID = 6)
  expect_equal(length(data),  12)
  expect_is(data, "list")
})
test_that("Verifications",{
  data <- Verifications(page=1)
  expect_equal(length(data),  330)
  expect_is(data, "list")
})

context("Associations")
test_that("Associations",{
  data <- Associations(ID = 1)
  expect_equal(length(data),  21)
  expect_is(data, "list")
})
test_that("Associations",{
  data <- Associations(page=1)
  expect_equal(length(data),  600)
  expect_is(data, "list")
})

context("Comments")
test_that("Comments",{
  data <- Comments(ID = 1)
  expect_equal(length(data),  10)
  expect_is(data, "list")
})
test_that("Comments",{
  data <- Comments(page=1)
  expect_equal(length(data),  9)
  expect_is(data, "list")
})

context("DatasetLink")
test_that("DatasetLink",{
  data <- DatasetLink(ID = 1)
  expect_equal(length(data),  8)
  expect_is(data, "list")
})
test_that("DatasetLink",{
  data <- DatasetLink(page=1)
  expect_equal(length(data),  210)
  expect_is(data, "list")
})

context("Datasets")
test_that("Datasets",{
  data <- Datasets(ID = 1)
  expect_equal(length(data),  10)
  expect_is(data, "list")
})
test_that("Datasets",{
  data <- Datasets(page=1)
  expect_equal(length(data),  252)
  expect_is(data, "list")
})

context("Exchange")
test_that("Exchange",{
  data <- Exchange(ID = 1)
  expect_equal(length(data),  24)
  expect_is(data, "list")
})
test_that("Exchange",{
  data <- Exchange(page=1)
  expect_equal(length(data),  690)
  expect_is(data, "list")
})

context("Loans")
test_that("Loans",{
  data <- Loans(ID = 1)
  expect_equal(length(data),  36)
  expect_is(data, "list")
})
test_that("Loans",{
  data <- Loans(page=1)
  expect_equal(length(data),  840)
  expect_is(data, "list")
})

context("EditLocks")
#EditLocks

context("Identifiers")
#Identifiers

context("LookupMunicipalities")
#LookupMunicipalities

context("Revisions")
#Revisions

context("UploadDeterminations")
#UploadDeterminations

context("UploadMappings")
#AccessStats

context("UploadOccurrences")
#UploadOccurrences

context("UploadParameters")
#UploadParameters

context("Genetic")
#Genetic