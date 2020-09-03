# Key tests
url <- "http://a02235015-6.bluezone.usu.edu/api/"

context("CharacterHeading")
vcr::use_cassette(name="CharacterHeading_id",{
  data <- CharacterHeading(url=url, id=1)
})
test_that("CharacterHeading_id",{
  expect_equal(length(data),  10)
  expect_type(data, "list")
})
vcr::use_cassette(name="CharacterHeading_page",{
  data <- CharacterHeading(url=url, page=1)
})
test_that("CharacterHeading_page",{
  expect_equal(length(data),  216)
  expect_type(data, "list")
})

context("Characters")
vcr::use_cassette(name="Characters_id",{
  data <- Characters(url=url, id=1)
})
test_that("Characters_id",{
  expect_equal(length(data),  19)
  expect_type(data, "list")
})
vcr::use_cassette(name="Characters_page",{
  data <- Characters(url=url, page=1)
})
test_that("Characters_page",{
  expect_equal(length(data),  18)
  expect_type(data, "list")
})

context("CharacterStateImages")
vcr::use_cassette(name="CharacterStateImages_id",{
  data <- CharacterStateImages(url=url, id=1)
})
test_that("CharacterStateImages_id",{
  expect_equal(length(data),  10)
  expect_type(data, "list")
})
vcr::use_cassette(name="CharacterStateImages_page",{
  data <- CharacterStateImages(url=url, page=1)
})
test_that("CharacterStateImages_page",{
  expect_equal(length(data),  108)
  expect_type(data, "list")
})

context("CharacterStates")
vcr::use_cassette(name="CharacterStates_id",{
  data <- CharacterStates(url=url, id=1)
})
test_that("CharacterStates_id",{
  expect_equal(length(data),  16)
  expect_type(data, "list")
})
vcr::use_cassette(name="CharacterStates_page",{
  data <- CharacterStates(url=url, page=1)
})
test_that("CharacterStates_page",{
  expect_equal(length(data),  15)
  expect_type(data, "list")
})

context("DescriptionDeletions")
vcr::use_cassette(name="DescriptionDeletions_id",{
  data <- DescriptionDeletions(url=url, id=638)
})
test_that("DescriptionDeletions_id",{
  expect_equal(length(data),  18)
  expect_type(data, "list")
})
vcr::use_cassette(name="DescriptionDeletions_page",{
  data <- DescriptionDeletions(url=url, page=1)
})
test_that("DescriptionDeletions_page",{
  expect_equal(length(data),  153)
  expect_type(data, "list")
})
