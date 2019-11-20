# Taxa tests

context("Taxa")
test_that("Taxa",{
  data <- Taxa(ID = 1)
  expect_equal(length(data),  23)
  expect_is(data, "list")
})
test_that("Taxa",{
  data <- Taxa(page=1)
  expect_equal(length(data),  22)
  expect_is(data, "list")
})

context("Authorities")
test_that("Authorities",{
  data <- Authorities(ID = 1)
  expect_equal(length(data),  15)
  expect_is(data, "list")
})
test_that("Authorities",{
  data <- Authorities(page=1)
  expect_equal(length(data),  14)
  expect_is(data, "list")
})

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

context("DescriptionStatements")
#DescriptionStatements

context("Links")
#Links

context("Maps")
#Maps

context("Ranks")
#Ranks

context("Relationships")
#Relationships

context("ResourceLinks")
#ResourceLinks

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

context("Upload")
#Upload

context("UserTaxonomy")
#UserTaxonomy

context("Vernaculars")
#Vernaculars