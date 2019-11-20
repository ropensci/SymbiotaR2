# Glossary tests

context("Glossary")
test_that("Glossary",{
  data <- Glossary(ID=5)
  expect_equal(length(data),  15)
  expect_is(data, "list")
})
test_that("Glossary",{
  data <- Glossary(page=1)
  expect_equal(length(data),  420)
  expect_is(data, "list")
})

context("Sources")
#Sources

context("TermLink")
test_that("TermLink",{
  data <- TermLink(ID=1)
  expect_equal(length(data),  8)
  expect_is(data, "list")
})
test_that("TermLink",{
  data <- TermLink(page=1)
  expect_equal(length(data),  210)
  expect_is(data, "list")
})