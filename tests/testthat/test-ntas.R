test_that("nyc_nta10_sf has expected structure", {
  expect_nyc_polygon_sf(nyc_nta10_sf)
  expect_equal(nrow(nyc_nta10_sf), 195)
  expect_setequal(
    names(nyc_nta10_sf),
    c(
      "boro_code",
      "boro_name",
      "county_fips",
      "nta_code",
      "nta_name",
      "shape_leng",
      "shape_area",
      "geometry"
    )
  )
  expect_nyc_boro_columns(nyc_nta10_sf)
  expect_equal(anyDuplicated(nyc_nta10_sf$nta_code), 0L)
})

test_that("nyc_nta20_sf has expected structure", {
  expect_nyc_polygon_sf(nyc_nta20_sf)
  expect_equal(nrow(nyc_nta20_sf), 262)
  expect_setequal(
    names(nyc_nta20_sf),
    c(
      "boro_code",
      "boro_name",
      "county_fips",
      "nta2020",
      "nta_name",
      "nta_abbrev",
      "nta_type",
      "cdta2020",
      "cdta_name",
      "shape_leng",
      "shape_area",
      "geometry"
    )
  )
  expect_nyc_boro_columns(nyc_nta20_sf)
  expect_equal(anyDuplicated(nyc_nta20_sf$nta2020), 0L)
})
