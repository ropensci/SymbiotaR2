# Users tests
url <- "http://a02235015-6.bluezone.usu.edu/api/"

context("UserRoles")
use_cassette(name="UserRoles_ID", {
  test_that("UserRoles_ID",{
    data <- UserRoles(url=url, ID = 1)
    expect_equal(length(data),  9)
    expect_type(data, "list")
  })
})
use_cassette(name="UserRoles_page", {
  test_that("UserRoles_page",{
    data <- UserRoles(url=url, ID=1, permissions = 1)
    expect_equal(length(data),  8)
    expect_type(data, "list")
  })
})
