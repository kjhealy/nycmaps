test_that("nyc_state_senate_districts_sf has expected structure", {
  expect_nyc_polygon_sf(nyc_state_senate_districts_sf)
  expect_equal(nrow(nyc_state_senate_districts_sf), 28)
  expect_setequal(
    names(nyc_state_senate_districts_sf),
    c("st_sen_dist", "shape_leng", "shape_area", "geometry")
  )
  expect_equal(anyDuplicated(nyc_state_senate_districts_sf$st_sen_dist), 0L)
})
