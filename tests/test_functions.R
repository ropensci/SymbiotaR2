library(testthat)
context("Symbiota2.R")

# test_that("Coordinates",{
#   data <- Coordinates(ID=5)
#   expect_equal(length(data),  2)
#   expect_is(data, "double")
#   
#   data <- Coordinates(page=1)
#   expect_equal(length(data),  25)
#   expect_is(data, "list")
# })

# test_that("TaxaLink",{
#   data <- TaxaLink(ID=5)
#   expect_equal(length(data),  19)
#   expect_is(data, "list")
#   
#   data <- TaxaLink(page=1)
#   expect_equal(length(data),  540)
#   expect_is(data, "list")
# })

# test_that("Categories",{
#   data <- Categories(ID=1)
#   expect_equal(length(data),  12)
#   expect_is(data, "list")
#   
#   data <- Categories(page=1)
#   expect_equal(length(data),  110)
#   expect_is(data, "list")
# })
# 
# test_that("Institutions",{
#   data <- Institutions(ID=5)
#   expect_equal(length(data),  21)
#   expect_is(data, "list")
#   
#   data <- Institutions(page=1)
#   expect_equal(length(data),  600)
#   expect_is(data, "list")
# })
# 
# test_that("Stats",{
#   data <- Stats(ID=5)
#   expect_equal(length(data),  14)
#   expect_is(data, "list")
#   
#   data <- Stats(page=1)
#   expect_equal(length(data),  390)
#   expect_is(data, "list")
# })

# test_that("Central",{
#   data <- Central(ID=1)
#   expect_equal(length(data),  10)
#   expect_is(data, "list")
#   
#   data <- Central(page=1)
#   expect_equal(length(data),  18)
#   expect_is(data, "list")
# })
# 
# test_that("Queue",{
#   data <- Queue(ID=1)
#   expect_equal(length(data),  12)
#   expect_is(data, "list")
#   
#   data <- Queue(page=1)
#   expect_equal(length(data),  55)
#   expect_is(data, "list")
# })

# test_that("Numbers",{
#   data <- Numbers(ID=5)
#   expect_equal(data,  27)
#   expect_is(data, "double")
#   
#   data <- Numbers(page=1)
#   expect_equal(length(data),  30)
#   expect_is(data, "list")
# })
# 
# test_that("Titles",{
#   data <- Titles(ID=1)
#   expect_equal(length(data),  14)
#   expect_is(data, "list")
#   
#   data <- Titles(page=1)
#   expect_equal(length(data),  26)
#   expect_is(data, "list")
# })

# test_that("Glossary",{
#   data <- Glossary(ID=5)
#   expect_equal(length(data),  15)
#   expect_is(data, "list")
#   
#   data <- Glossary(page=1)
#   expect_equal(length(data),  420)
#   expect_is(data, "list")
# })

# test_that("Configurations",{
#   data <- Configurations(ID=5)
#   expect_equal(length(data),  7)
#   expect_is(data, "list")
#   
#   data <- Configurations(page=1)
#   expect_equal(length(data),  180)
#   expect_is(data, "list")
# })

# test_that("TermLink",{
#   data <- TermLink(ID=1)
#   expect_equal(length(data),  8)
#   expect_is(data, "list")
#   
#   data <- TermLink(page=1)
#   expect_equal(length(data),  210)
#   expect_is(data, "list")
# })

# test_that("Projects",{
#   data <- Projects(ID=5)
#   expect_equal(length(data),  27)
#   expect_is(data, "list")
#   
#   data <- Projects(page=1)
#   expect_equal(length(data),  702)
#   expect_is(data, "list")
# })
# 
# test_that("RawLabels",{
#   data <- RawLabels(ID=124663)
#   expect_equal(length(data),  13)
#   expect_is(data, "list")
#   
#   data <- RawLabels(page=1)
#   expect_equal(length(data),  360)
#   expect_is(data, "list")
# })

# test_that("CharacterHeading",{
#   data <- CharacterHeading(ID=1)
#   expect_equal(length(data),  10)
#   expect_is(data, "list")
#   
#   data <- CharacterHeading(page=1)
#   expect_equal(length(data),  216)
#   expect_is(data, "list")
# })

# test_that("CharacterStateImages",{
#   data <- CharacterStateImages(ID=1)
#   expect_equal(length(data),  10)
#   expect_is(data, "list")
#   
#   data <- CharacterStateImages(page=1)
#   expect_equal(length(data),  108)
#   expect_is(data, "list")
# })

# test_that("DescriptionDeletions",{
#   data <- DescriptionDeletions(ID=638)
#   expect_equal(length(data),  18)
#   expect_is(data, "list")
#   
#   data <- DescriptionDeletions(page=1)
#   expect_equal(length(data),  153)
#   expect_is(data, "list")
# })

# test_that("Descriptions",{
#   data <- Descriptions(character.ID = 2, characterState.ID = 229, taxa.ID = 33)
#   expect_equal(length(data),  17)
#   expect_is(data, "list")
#   
#   data <- Descriptions(page=1)
#   expect_equal(length(data),  480)
#   expect_is(data, "list")
# })

# test_that("LookupLanguages",{
#   data <- LookupLanguages(ID = 5)
#   expect_equal(length(data),  9)
#   expect_is(data, "list")
#   
#   data <- LookupLanguages(page=1)
#   expect_equal(length(data),  240)
#   expect_is(data, "list")
# })

# test_that("TagKey",{
#   data <- TagKey(ID = "Diagnostic")
#   expect_equal(length(data),  8)
#   expect_is(data, "list")
#   
#   data <- TagKey(page=1)
#   expect_equal(length(data),  70)
#   expect_is(data, "list")
# })

# test_that("AccessStats",{
#   data <- AccessStats(ID = 4)
#   expect_equal(length(data),  12)
#   expect_is(data, "list")
#   
#   data <- AccessStats(page=1)
#   expect_equal(length(data),  330)
#   expect_is(data, "list")
# })

# test_that("Determinations",{
#   data <- Determinations(ID = 4)
#   expect_equal(length(data),  21)
#   expect_is(data, "list")
#   
#   data <- Determinations(page=1)
#   expect_equal(length(data),  600)
#   expect_is(data, "list")
# })

# test_that("Duplicates",{
#   data <- Duplicates(ID = 4)
#   expect_equal(length(data),  10)
#   expect_is(data, "list")
#   
#   data <- Duplicates(page=1)
#   expect_equal(length(data),  270)
#   expect_is(data, "list")
# })

# test_that("Edits",{
#   data <- Edits(ID = 16)
#   expect_equal(length(data),  14)
#   expect_is(data, "list")
#   
#   data <- Edits(page=1)
#   expect_equal(length(data),  390)
#   expect_is(data, "list")
# })

# test_that("FullText",{
#   data <- FullText(ID = 1)
#   expect_equal(length(data),  6)
#   expect_is(data, "list")
#   
#   data <- FullText(page=1)
#   expect_equal(length(data),  150)
#   expect_is(data, "list")
# })

# test_that("GuidDeterminations",{
#   data <- GuidDeterminations(ID = "00135877-f154-4fdf-965b-3e56118ed747")
#   expect_equal(length(data),  9)
#   expect_is(data, "list")
#   
#   data <- GuidDeterminations(page=1)
#   expect_equal(length(data),  240)
#   expect_is(data, "list")
# })

# test_that("GuidOccurrences",{
#   data <- GuidOccurrences(ID = "00046309-7f89-4d73-8b36-8ee87d7bb053")
#   expect_equal(length(data),  9)
#   expect_is(data, "list")
#   
#   data <- GuidOccurrences(page=1)
#   expect_equal(length(data),  240)
#   expect_is(data, "list")
# })

# test_that("LookupCounties",{
#   data <- LookupCounties(ID = 1)
#   expect_equal(length(data),  7)
#   expect_is(data, "list")
#   
#   data <- LookupCounties(page=1)
#   expect_equal(length(data),  180)
#   expect_is(data, "list")
# })
# 
# test_that("LookupCountries",{
#   data <- LookupCountries(ID = 1)
#   expect_equal(length(data),  9)
#   expect_is(data, "list")
#   
#   data <- LookupCountries(page=1)
#   expect_equal(length(data),  240)
#   expect_is(data, "list")
# })
# 
# test_that("LookupStateProvinces",{
#   data <- LookupStateProvinces(ID = 1)
#   expect_equal(length(data),  8)
#   expect_is(data, "list")
#   
#   data <- LookupStateProvinces(page=1)
#   expect_equal(length(data),  210)
#   expect_is(data, "list")
# })

# test_that("Verifications",{
#   data <- Verifications(ID = 6)
#   expect_equal(length(data),  12)
#   expect_is(data, "list")
#   
#   data <- Verifications(page=1)
#   expect_equal(length(data),  330)
#   expect_is(data, "list")
# })

# test_that("Associations",{
#   data <- Associations(ID = 1)
#   expect_equal(length(data),  21)
#   expect_is(data, "list")
#   
#   data <- Associations(page=1)
#   expect_equal(length(data),  600)
#   expect_is(data, "list")
# })

# test_that("Comments",{
#   data <- Comments(ID = 1)
#   expect_equal(length(data),  10)
#   expect_is(data, "list")
#   
#   data <- Comments(page=1)
#   expect_equal(length(data),  9)
#   expect_is(data, "list")
# })

# test_that("DatasetLink",{
#   data <- DatasetLink(ID = 1)
#   expect_equal(length(data),  8)
#   expect_is(data, "list")
#   
#   data <- DatasetLink(page=1)
#   expect_equal(length(data),  210)
#   expect_is(data, "list")
# })

# test_that("Datasets",{
#   data <- Datasets(ID = 1)
#   expect_equal(length(data),  10)
#   expect_is(data, "list")
#   
#   data <- Datasets(page=1)
#   expect_equal(length(data),  252)
#   expect_is(data, "list")
# })

# test_that("Exchange",{
#   data <- Exchange(ID = 1)
#   expect_equal(length(data),  24)
#   expect_is(data, "list")
#   
#   data <- Exchange(page=1)
#   expect_equal(length(data),  690)
#   expect_is(data, "list")
# })

# test_that("Loans",{
#   data <- Loans(ID = 1)
#   expect_equal(length(data),  36)
#   expect_is(data, "list")
#   
#   data <- Loans(page=1)
#   expect_equal(length(data),  840)
#   expect_is(data, "list")
# })

# test_that("LookupReferenceTypes",{
#   data <- LookupReferenceTypes(ID = 5)
#   expect_equal(length(data),  25)
#   expect_is(data, "list")
#   
#   data <- LookupReferenceTypes(page=1)
#   expect_equal(length(data),  720)
#   expect_is(data, "list")
# })

# test_that("SchemaVersion",{
#   data <- SchemaVersion(ID = 1)
#   expect_equal(length(data),  6)
#   expect_is(data, "list")
#   
#   data <- SchemaVersion(page=1)
#   expect_equal(length(data),  15)
#   expect_is(data, "list")
# })

# test_that("DescriptionBlock",{
#   data <- DescriptionBlock(ID = 1)
#   expect_equal(length(data),  14)
#   expect_is(data, "list")
#   
#   data <- DescriptionBlock(page=1)
#   expect_equal(length(data),  390)
#   expect_is(data, "list")
# })

# test_that("Synonymy",{
#   data <- Synonymy(ID = 1)
#   expect_equal(length(data),  13)
#   expect_is(data, "list")
#   
#   data <- Synonymy(page=1)
#   expect_equal(length(data),  360)
#   expect_is(data, "list")
# })

# test_that("Traits",{
#   data <- Traits(ID = 1)
#   expect_equal(length(data),  16)
#   expect_is(data, "list")
#   
#   data <- Traits(page=1)
#   expect_equal(length(data),  60)
#   expect_is(data, "list")
# })

# test_that("Attributes",{
#   data <- Attributes(state.ID = 1, occurence.ID = 152)
#   expect_equal(length(data),  16)
#   expect_is(data, "list")
#   
#   data <- Attributes(page=1)
#   expect_equal(length(data),  450)
#   expect_is(data, "list")
# })

# test_that("UserRoles",{
#   data <- UserRoles(ID = 1)
#   expect_equal(length(data),  9)
#   expect_is(data, "list")
# 
#   data <- UserRoles(ID=1, permissions = 1)
#   expect_equal(length(data),  8)
#   expect_is(data, "list")
# })

