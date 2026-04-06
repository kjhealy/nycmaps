test_that("nyc_zip_sf has expected structure", {
  expect_nyc_polygon_sf(nyc_zip_sf)
  expect_equal(nrow(nyc_zip_sf), 212)
  expect_setequal(
    names(nyc_zip_sf),
    c("zip", "zip_name", "pop", "geometry")
  )
  expect_equal(anyDuplicated(nyc_zip_sf$zip), 0L)
  expect_true(is.numeric(nyc_zip_sf$pop))
  expect_true(all(nyc_zip_sf$pop >= 0))
})
