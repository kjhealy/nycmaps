test_that("nyc_municipal_court_districts_sf has expected structure", {
  expect_nyc_polygon_sf(nyc_municipal_court_districts_sf)
  expect_equal(nrow(nyc_municipal_court_districts_sf), 28)
  expect_setequal(
    names(nyc_municipal_court_districts_sf),
    c(
      "boro_code",
      "boro_name",
      "muni_court",
      "shape_leng",
      "shape_area",
      "geometry"
    )
  )
  expect_nyc_boro_columns(nyc_municipal_court_districts_sf)
})
