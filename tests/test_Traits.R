# Traits test

context("Traits")
test_that("Traits",{
  data <- Traits(ID = 1)
  expect_equal(length(data),  16)
  expect_is(data, "list")
})
test_that("Traits",{
  data <- Traits(page=1)
  expect_equal(length(data),  60)
  expect_is(data, "list")
})

context("Attributes")
test_that("Attributes",{
  data <- Attributes(state.ID = 1, occurence.ID = 152)
  expect_equal(length(data),  16)
  expect_is(data, "list")
})
test_that("Attributes",{
  data <- Attributes(page=1)
  expect_equal(length(data),  450)
  expect_is(data, "list")
})