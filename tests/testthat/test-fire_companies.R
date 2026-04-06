test_that("nyc_fire_companies_sf has expected structure", {
  expect_nyc_polygon_sf(nyc_fire_companies_sf)
  expect_equal(nrow(nyc_fire_companies_sf), 348)
  expect_setequal(
    names(nyc_fire_companies_sf),
    c(
      "fire_co_type",
      "fire_co_num",
      "fire_bn",
      "fire_div",
      "shape_leng",
      "shape_area",
      "geometry"
    )
  )
})
