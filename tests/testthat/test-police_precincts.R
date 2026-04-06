test_that("nyc_police_precincts_sf has expected structure", {
  expect_nyc_polygon_sf(nyc_police_precincts_sf)
  expect_equal(nrow(nyc_police_precincts_sf), 78)
  expect_setequal(
    names(nyc_police_precincts_sf),
    c("precinct", "shape_leng", "shape_area", "geometry")
  )
  expect_equal(anyDuplicated(nyc_police_precincts_sf$precinct), 0L)
})
