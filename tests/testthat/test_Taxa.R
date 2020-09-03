# Taxa tests
url <- "http://a02235015-6.bluezone.usu.edu/api/"

context("Taxa")
vcr::use_cassette(name="Taxa_id",{
  data <- Taxa(url=url, id= 1)
})
test_that("Taxa_id",{
  expect_equal(length(data),  23)
  expect_type(data, "list")
})
vcr::use_cassette(name="Taxa_page",{
  data <- Taxa(url=url, page=1)
})
test_that("Taxa_page",{
  expect_equal(length(data),  22)
  expect_type(data, "list")
})

context("Authorities")
vcr::use_cassette(name="Authorities_id",{
  data <- Authorities(url=url, id= 1)
})
test_that("Authorities_id",{
  expect_equal(length(data),  15)
  expect_type(data, "list")
})
vcr::use_cassette(name="Authorities_page",{
  data <- Authorities(url=url, page=1)
})
test_that("Authorities_page",{
  expect_equal(length(data),  14)
  expect_type(data, "list")
})

context("DescriptionBlock")
vcr::use_cassette(name="DescriptionBlock_id",{
  data <- DescriptionBlock(url=url, id= 1)
})
test_that("DescriptionBlock_id",{
  expect_equal(length(data),  14)
  expect_type(data, "list")
})
vcr::use_cassette(name="DescriptionBlock_page",{
  data <- DescriptionBlock(url=url, page=1)
})
test_that("DescriptionBlock_page",{
  expect_equal(length(data),  390)
  expect_type(data, "list")
})

context("Synonymy")
vcr::use_cassette(name="Synonymy_id",{
  data <- Synonymy(url=url, id= 1)
})
test_that("Synonymy_id",{
  expect_equal(length(data),  13)
  expect_type(data, "list")
})
vcr::use_cassette(name="Synonymy_page",{
  data <- Synonymy(url=url, page=1)
})
test_that("Synonymy_page",{
  expect_equal(length(data),  360)
  expect_type(data, "list")
})
