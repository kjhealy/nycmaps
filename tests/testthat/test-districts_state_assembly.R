test_that("nyc_state_assembly_districts_sf has expected structure", {
  expect_nyc_polygon_sf(nyc_state_assembly_districts_sf)
  expect_equal(nrow(nyc_state_assembly_districts_sf), 65)
  expect_setequal(
    names(nyc_state_assembly_districts_sf),
    c("assem_dist", "shape_leng", "shape_area", "geometry")
  )
  expect_equal(anyDuplicated(nyc_state_assembly_districts_sf$assem_dist), 0L)
})
