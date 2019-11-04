# Crowdsource tests

context("Central")
test_that("Central",{
  data <- Central(ID=1)
  expect_equal(length(data),  10)
  expect_is(data, "list")
})
test_that("Central",{
  data <- Central(page=1)
  expect_equal(length(data),  18)
  expect_is(data, "list")
})


context("Queue")
test_that("Queue",{
  data <- Queue(ID=1)
  expect_equal(length(data),  12)
  expect_is(data, "list")
})
test_that("Queue",{
  data <- Queue(page=1)
  expect_equal(length(data),  55)
  expect_is(data, "list")
})