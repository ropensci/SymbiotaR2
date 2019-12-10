# Key tests
url <- "http://a02235015-6.bluezone.usu.edu/api/"

context("CharacterHeading")
use_cassette(name="CharacterHeading_ID", {
  test_that("CharacterHeading_ID",{
    data <- CharacterHeading(url=url, ID=1)
    expect_equal(length(data),  10)
    expect_type(data, "list")
  })
})
use_cassette(name="CharacterHeading_page", {
  test_that("CharacterHeading_page",{
    data <- CharacterHeading(url=url, page=1)
    expect_equal(length(data),  216)
    expect_type(data, "list")
  })
})

context("Characters")
use_cassette(name="Characters_ID", {
  test_that("Characters_ID",{
    data <- Characters(url=url, ID=1)
    expect_equal(length(data),  19)
    expect_type(data, "list")
  })
})
use_cassette(name="Characters_page", {
  test_that("Characters_page",{
    data <- Characters(url=url, page=1)
    expect_equal(length(data),  18)
    expect_type(data, "list")
  })
})

context("CharacterStateImages")
use_cassette(name="CharactersStateImages_ID", {
  test_that("CharacterStateImages_ID",{
    data <- CharacterStateImages(url=url, ID=1)
    expect_equal(length(data),  10)
    expect_type(data, "list")
  })
})
use_cassette(name="Characters_page", {
  test_that("Characters_page",{
    data <- CharacterStateImages(url=url, page=1)
    expect_equal(length(data),  108)
    expect_type(data, "list")
  })
})

context("CharacterStates")
use_cassette(name="CharactersStates_ID", {
  test_that("CharacterStates_ID",{
    data <- CharacterStates(url=url, ID=1)
    expect_equal(length(data),  16)
    expect_type(data, "list")
  })
})
use_cassette(name="CharactersStateImages_page", {
  test_that("CharacterStateImages_page",{
    data <- CharacterStates(url=url, page=1)
    expect_equal(length(data),  15)
    expect_type(data, "list")
  })
})

context("DescriptionDeletions")
use_cassette(name="DescriptionDeletions_ID", {
  test_that("DescriptionDeletions_ID",{
    data <- DescriptionDeletions(url=url, ID=638)
    expect_equal(length(data),  18)
    expect_type(data, "list")
  })
})
use_cassette(name="DescriptionDeletions_page", {
  test_that("DescriptionDeletions_page",{
    data <- DescriptionDeletions(url=url, page=1)
    expect_equal(length(data),  153)
    expect_type(data, "list")
  })
})