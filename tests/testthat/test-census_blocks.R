test_that("nyc_census_blocks_2000_sf has expected structure", {
  expect_nyc_polygon_sf(nyc_census_blocks_2000_sf)
  expect_equal(nrow(nyc_census_blocks_2000_sf), 36721)
  expect_setequal(
    names(nyc_census_blocks_2000_sf),
    c(
      "bctcb2000",
      "cb2000",
      "boro_code",
      "boro_name",
      "ct2000",
      "shape_leng",
      "shape_area",
      "geometry"
    )
  )
  expect_nyc_boro_columns(nyc_census_blocks_2000_sf)
  expect_equal(anyDuplicated(nyc_census_blocks_2000_sf$bctcb2000), 0L)
})

test_that("nyc_census_blocks_2010_sf has expected structure", {
  expect_nyc_polygon_sf(nyc_census_blocks_2010_sf)
  expect_equal(nrow(nyc_census_blocks_2010_sf), 38797)
  expect_setequal(
    names(nyc_census_blocks_2010_sf),
    c(
      "cb2010",
      "boro_code",
      "boro_name",
      "ct2010",
      "bctcb2010",
      "shape_leng",
      "shape_area",
      "geometry"
    )
  )
  expect_nyc_boro_columns(nyc_census_blocks_2010_sf)
  expect_equal(anyDuplicated(nyc_census_blocks_2010_sf$bctcb2010), 0L)
})

test_that("nyc_census_blocks_2020_sf has expected structure", {
  expect_nyc_polygon_sf(nyc_census_blocks_2020_sf)
  expect_equal(nrow(nyc_census_blocks_2020_sf), 37588)
  expect_setequal(
    names(nyc_census_blocks_2020_sf),
    c(
      "cb2020",
      "boro_code",
      "boro_name",
      "ct2020",
      "bctcb2020",
      "geoid",
      "shape_leng",
      "shape_area",
      "geometry"
    )
  )
  expect_nyc_boro_columns(nyc_census_blocks_2020_sf)
  expect_equal(anyDuplicated(nyc_census_blocks_2020_sf$bctcb2020), 0L)
  expect_true(all(nchar(nyc_census_blocks_2020_sf$geoid) == 15L))
})
