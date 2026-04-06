test_that("nyc_boros_sf has expected structure", {
  expect_nyc_polygon_sf(nyc_boros_sf)
  expect_equal(nrow(nyc_boros_sf), 5)
  expect_setequal(
    names(nyc_boros_sf),
    c("boro_code", "boro_name", "shape_leng", "shape_area", "geometry")
  )
  expect_nyc_boro_columns(nyc_boros_sf)
  expect_equal(anyDuplicated(nyc_boros_sf$boro_code), 0L)
  expect_equal(anyDuplicated(nyc_boros_sf$boro_name), 0L)
})
