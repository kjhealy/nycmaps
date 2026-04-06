test_that("nyc_school_districts_sf has expected structure", {
  expect_nyc_polygon_sf(nyc_school_districts_sf)
  expect_equal(nrow(nyc_school_districts_sf), 33)
  expect_setequal(
    names(nyc_school_districts_sf),
    c("school_dist", "shape_leng", "shape_area", "geometry")
  )
  expect_true(all(nyc_school_districts_sf$school_dist %in% 1:32))
})
