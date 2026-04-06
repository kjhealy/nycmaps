test_that("nyc_cdtas_2020_sf has expected structure", {
  expect_nyc_polygon_sf(nyc_cdtas_2020_sf)
  expect_equal(nrow(nyc_cdtas_2020_sf), 71)
  expect_setequal(
    names(nyc_cdtas_2020_sf),
    c(
      "boro_code",
      "boro_name",
      "county_fips",
      "cdta2020",
      "cdta_name",
      "cdta_type",
      "shape_leng",
      "shape_area",
      "geometry"
    )
  )
  expect_nyc_boro_columns(nyc_cdtas_2020_sf)
  expect_equal(anyDuplicated(nyc_cdtas_2020_sf$cdta2020), 0L)
})
