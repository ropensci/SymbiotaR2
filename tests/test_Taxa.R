# Taxa tests

context("DescriptionBlock")
test_that("DescriptionBlock",{
  data <- DescriptionBlock(ID = 1)
  expect_equal(length(data),  14)
  expect_is(data, "list")
})
test_that("DescriptionBlock",{
  data <- DescriptionBlock(page=1)
  expect_equal(length(data),  390)
  expect_is(data, "list")
})

context("Synonymy")
test_that("Synonymy",{
  data <- Synonymy(ID = 1)
  expect_equal(length(data),  13)
  expect_is(data, "list")
})
test_that("Synonymy",{
  data <- Synonymy(page=1)
  expect_equal(length(data),  360)
  expect_is(data, "list")
})