test_that("nyc_pumas_2010_sf has expected structure", {
  expect_nyc_polygon_sf(nyc_pumas_2010_sf)
  expect_equal(nrow(nyc_pumas_2010_sf), 55)
  expect_setequal(
    names(nyc_pumas_2010_sf),
    c("puma", "shape_leng", "shape_area", "geometry")
  )
  expect_equal(anyDuplicated(nyc_pumas_2010_sf$puma), 0L)
})

test_that("nyc_pumas_2020_sf has expected structure", {
  expect_nyc_polygon_sf(nyc_pumas_2020_sf)
  expect_equal(nrow(nyc_pumas_2020_sf), 55)
  expect_setequal(
    names(nyc_pumas_2020_sf),
    c("puma", "shape_leng", "shape_area", "geometry")
  )
  expect_equal(anyDuplicated(nyc_pumas_2020_sf$puma), 0L)
})
