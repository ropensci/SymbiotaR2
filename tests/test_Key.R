# Key tests

context("CharacterHeading")
test_that("CharacterHeading",{
  data <- CharacterHeading(ID=1)
  expect_equal(length(data),  10)
  expect_is(data, "list")
})
test_that("CharacterHeading",{
  data <- CharacterHeading(page=1)
  expect_equal(length(data),  216)
  expect_is(data, "list")
})

context("CharacterStateImages")
test_that("CharacterStateImages",{
  data <- CharacterStateImages(ID=1)
  expect_equal(length(data),  10)
  expect_is(data, "list")
})
test_that("CharacterStateImages",{
  data <- CharacterStateImages(page=1)
  expect_equal(length(data),  108)
  expect_is(data, "list")
})

context("DescriptionDeletions")
test_that("DescriptionDeletions",{
  data <- DescriptionDeletions(ID=638)
  expect_equal(length(data),  18)
  expect_is(data, "list")
})
test_that("DescriptionDeletions",{
  data <- DescriptionDeletions(page=1)
  expect_equal(length(data),  153)
  expect_is(data, "list")
})

context("Descriptions")
test_that("Descriptions",{
  data <- Descriptions(character.ID = 2, characterState.ID = 229, taxa.ID = 33)
  expect_equal(length(data),  17)
  expect_is(data, "list")
})
test_that("Descriptions",{
  data <- Descriptions(page=1)
  expect_equal(length(data),  480)
  expect_is(data, "list")
})