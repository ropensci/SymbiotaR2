library("vcr")
invisible(vcr::vcr_configure(
  dir = "tests/fixtures"
))
vcr::check_cassette_names()
