test_that("nyc_census_tracts_2000_sf has expected structure", {
  expect_nyc_polygon_sf(nyc_census_tracts_2000_sf)
  expect_equal(nrow(nyc_census_tracts_2000_sf), 2216)
  expect_setequal(
    names(nyc_census_tracts_2000_sf),
    c(
      "ct_label",
      "boro_code",
      "boro_name",
      "ct2000",
      "boro_ct2000",
      "cd_eligibil",
      "nta_code",
      "ntan_ame",
      "puma",
      "shape_leng",
      "shape_area",
      "geometry"
    )
  )
  expect_nyc_boro_columns(nyc_census_tracts_2000_sf)
  expect_equal(anyDuplicated(nyc_census_tracts_2000_sf$boro_ct2000), 0L)
})

test_that("nyc_census_tracts_2010_sf has expected structure", {
  expect_nyc_polygon_sf(nyc_census_tracts_2010_sf)
  expect_equal(nrow(nyc_census_tracts_2010_sf), 2165)
  expect_setequal(
    names(nyc_census_tracts_2010_sf),
    c(
      "ct_label",
      "boro_code",
      "boro_name",
      "ct2010",
      "boro_ct2010",
      "cd_eligibil",
      "nta_code",
      "nta_name",
      "puma",
      "shape_leng",
      "shape_area",
      "geometry"
    )
  )
  expect_nyc_boro_columns(nyc_census_tracts_2010_sf)
  expect_equal(anyDuplicated(nyc_census_tracts_2010_sf$boro_ct2010), 0L)
})

test_that("nyc_census_tracts_2020_sf has expected structure", {
  expect_nyc_polygon_sf(nyc_census_tracts_2020_sf)
  expect_equal(nrow(nyc_census_tracts_2020_sf), 2325)
  expect_setequal(
    names(nyc_census_tracts_2020_sf),
    c(
      "ct_label",
      "boro_code",
      "boro_name",
      "ct2020",
      "boro_ct2020",
      "cd_eligibil",
      "nta_name",
      "nta2020",
      "cdta2020",
      "cdtaname",
      "geoid",
      "puma",
      "shape_leng",
      "shape_area",
      "geometry"
    )
  )
  expect_nyc_boro_columns(nyc_census_tracts_2020_sf)
  expect_equal(anyDuplicated(nyc_census_tracts_2020_sf$boro_ct2020), 0L)
  expect_true(all(nchar(nyc_census_tracts_2020_sf$geoid) == 11L))
})
