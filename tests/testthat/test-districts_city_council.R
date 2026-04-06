test_that("nyc_city_council_districts_sf has expected structure", {
  expect_nyc_polygon_sf(nyc_city_council_districts_sf)
  expect_equal(nrow(nyc_city_council_districts_sf), 51)
  expect_setequal(
    names(nyc_city_council_districts_sf),
    c("coun_dist", "shape_leng", "shape_area", "geometry")
  )
  expect_equal(anyDuplicated(nyc_city_council_districts_sf$coun_dist), 0L)
})
