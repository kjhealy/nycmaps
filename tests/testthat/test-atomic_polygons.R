test_that("nyc_atomic_polygons_sf has expected structure", {
  expect_nyc_polygon_sf(nyc_atomic_polygons_sf)
  expect_equal(nrow(nyc_atomic_polygons_sf), 69690)
  expect_true(all(
    c("atomicid", "borough", "shape_leng", "shape_area", "geometry") %in%
      names(nyc_atomic_polygons_sf)
  ))
  expect_equal(anyDuplicated(nyc_atomic_polygons_sf$atomicid), 0L)
})
