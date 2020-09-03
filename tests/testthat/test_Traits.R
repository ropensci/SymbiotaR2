# Traits test
url <- "http://a02235015-6.bluezone.usu.edu/api/"

context("Traits")
vcr::use_cassette(name="Traits_id",{
  data <- Traits(url=url, id = 1)
})
test_that("Traits_id",{
  expect_equal(length(data),  16)
  expect_type(data, "list")
})
vcr::use_cassette(name="Traits_page",{
  data <- Traits(url=url, page=1)
})
test_that("Traits_page",{
  expect_equal(length(data),  60)
  expect_type(data, "list")
})
