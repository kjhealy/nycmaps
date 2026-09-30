test_that("nyc_boros_sf has expected structure", {
  expect_nyc_polygon_sf(nyc_boros_sf)
  expect_equal(nrow(nyc_boros_sf), 5)
  expect_setequal(
    names(nyc_boros_sf),
    c("boro_code", "boro_name", "geoid", "shape_leng", "shape_area", "geometry")
  )
  expect_nyc_boro_columns(nyc_boros_sf)
  expect_equal(anyDuplicated(nyc_boros_sf$boro_code), 0L)
  expect_equal(anyDuplicated(nyc_boros_sf$boro_name), 0L)
})

test_that("nyc_boros has expected structure", {
  expect_s3_class(nyc_boros, "tbl_df")
  expect_equal(nrow(nyc_boros), 5)
  expect_named(
    nyc_boros,
    c(
      "boro_code",
      "boro_name",
      "geoid",
      "county_name",
      "short_county_name",
      "long_county_name"
    )
  )
  expect_nyc_boro_columns(nyc_boros)
})

test_that("nyc_boros geoid agrees with nyc_boros_sf", {
  expect_type(nyc_boros$geoid, "character")
  sf_geoids <- stats::setNames(nyc_boros_sf$geoid, nyc_boros_sf$boro_name)
  expect_equal(unname(sf_geoids[nyc_boros$boro_name]), nyc_boros$geoid)
})

test_that("nyc_boros_sf geoid matches Census county FIPS codes", {
  expect_type(nyc_boros_sf$geoid, "character")
  geoids <- stats::setNames(nyc_boros_sf$geoid, nyc_boros_sf$boro_name)
  expect_equal(
    geoids[nyc_boro_names],
    c(
      Manhattan = "36061",
      Bronx = "36005",
      Brooklyn = "36047",
      Queens = "36081",
      `Staten Island` = "36085"
    )
  )
})
