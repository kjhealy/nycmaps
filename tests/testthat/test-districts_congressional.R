test_that("nyc_congressional_districts_sf has expected structure", {
  expect_nyc_polygon_sf(nyc_congressional_districts_sf)
  expect_equal(nrow(nyc_congressional_districts_sf), 13)
  expect_setequal(
    names(nyc_congressional_districts_sf),
    c("cong_dist", "shape_leng", "shape_area", "geometry")
  )
  expect_equal(anyDuplicated(nyc_congressional_districts_sf$cong_dist), 0L)
})
