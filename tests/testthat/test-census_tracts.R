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
      "geoid",
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
      "geoid",
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

test_that("2000 and 2010 tract geoids are built from boro_code and tract", {
  county_fips <- c(
    "1" = "061",
    "2" = "005",
    "3" = "047",
    "4" = "081",
    "5" = "085"
  )

  ct00 <- nyc_census_tracts_2000_sf
  expect_true(all(nchar(ct00$geoid) == 11L))
  expect_equal(anyDuplicated(ct00$geoid), 0L)
  expect_equal(
    ct00$geoid,
    paste0("36", unname(county_fips[ct00$boro_code]), ct00$ct2000)
  )

  ct10 <- nyc_census_tracts_2010_sf
  expect_true(all(nchar(ct10$geoid) == 11L))
  expect_equal(anyDuplicated(ct10$geoid), 0L)
  expect_equal(
    ct10$geoid,
    paste0("36", unname(county_fips[ct10$boro_code]), ct10$ct2010)
  )
})

test_that("2010 tract geoids match the LTDB 2010 tracts", {
  skip_if_not_installed("nyctracts")

  ltdb <- nyctracts::nyc_ltdb_fullcount_df
  ltdb <- ltdb[ltdb$year == 2010, ]
  unmatched <- setdiff(ltdb$geoid, nyc_census_tracts_2010_sf$geoid)

  expect_setequal(unmatched, c("36047990100", "36081990100", "36085008900"))
  expect_true(all(ltdb$pop[ltdb$geoid %in% unmatched] == 0))
  expect_true(all(nyc_census_tracts_2010_sf$geoid %in% ltdb$geoid))
})
