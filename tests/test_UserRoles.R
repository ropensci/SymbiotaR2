# UserRoles tests

context("UserRoles")
test_that("UserRoles",{
  data <- UserRoles(ID = 1)
  expect_equal(length(data),  9)
  expect_is(data, "list")
})
test_that("UserRoles",{
  data <- UserRoles(ID=1, permissions = 1)
  expect_equal(length(data),  8)
  expect_is(data, "list")
})