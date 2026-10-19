nyc_county_fips <- c("36005", "36047", "36061", "36081", "36085")

test_that("nyc_census_block_groups_2020_sf has expected structure", {
  expect_nyc_polygon_sf(nyc_census_block_groups_2020_sf)
  expect_equal(nrow(nyc_census_block_groups_2020_sf), 6670)
  expect_named(
    nyc_census_block_groups_2020_sf,
    c("geoid", "boro_code", "boro_name", "ct2020", "bg2020", "geometry")
  )
  expect_nyc_boro_columns(nyc_census_block_groups_2020_sf)
  expect_true(all(sf::st_is_valid(nyc_census_block_groups_2020_sf)))
})

test_that("nyc_census_block_groups_2020_sf GEOIDs are well formed", {
  geoid <- nyc_census_block_groups_2020_sf$geoid
  expect_equal(anyDuplicated(geoid), 0L)
  expect_true(all(nchar(geoid) == 12L))
  expect_true(all(substr(geoid, 1, 5) %in% nyc_county_fips))
  expect_equal(substr(geoid, 6, 11), nyc_census_block_groups_2020_sf$ct2020)
  expect_equal(substr(geoid, 12, 12), nyc_census_block_groups_2020_sf$bg2020)
})

test_that("nyc_census_block_groups_2020_sf covers every 2020 block", {
  block_prefixes <- unique(substr(nyc_census_blocks_2020_sf$geoid, 1, 12))
  expect_setequal(block_prefixes, nyc_census_block_groups_2020_sf$geoid)
})

test_that("nyc_census_block_groups_2020_sf has expected borough counts", {
  counts <- table(nyc_census_block_groups_2020_sf$boro_name)
  expect_equal(
    as.integer(counts[nyc_boro_names]),
    c(1231L, 1176L, 2127L, 1777L, 359L)
  )
})

test_that("nyc_census_block_groups_2010_sf has expected structure", {
  expect_nyc_polygon_sf(nyc_census_block_groups_2010_sf)
  expect_equal(nrow(nyc_census_block_groups_2010_sf), 6377)
  expect_named(
    nyc_census_block_groups_2010_sf,
    c("geoid", "boro_code", "boro_name", "ct2010", "bg2010", "geometry")
  )
  expect_nyc_boro_columns(nyc_census_block_groups_2010_sf)
  expect_true(all(sf::st_is_valid(nyc_census_block_groups_2010_sf)))
})

test_that("nyc_census_block_groups_2010_sf GEOIDs are well formed", {
  geoid <- nyc_census_block_groups_2010_sf$geoid
  expect_equal(anyDuplicated(geoid), 0L)
  expect_true(all(nchar(geoid) == 12L))
  expect_true(all(substr(geoid, 1, 5) %in% nyc_county_fips))
  expect_equal(substr(geoid, 6, 11), nyc_census_block_groups_2010_sf$ct2010)
  expect_equal(substr(geoid, 12, 12), nyc_census_block_groups_2010_sf$bg2010)
})

test_that("nyc_census_block_groups_2010_sf covers every 2010 block", {
  blocks <- nyc_census_blocks_2010_sf
  block_tracts <- paste(blocks$boro_code, blocks$ct2010)
  bg_tracts <- paste(
    nyc_census_block_groups_2010_sf$boro_code,
    nyc_census_block_groups_2010_sf$ct2010
  )
  # One source block is miscoded to the nonexistent tract 022300
  expect_equal(setdiff(block_tracts, bg_tracts), "1 022300")
  expect_equal(
    sum(sf::st_area(nyc_census_block_groups_2010_sf)),
    sum(sf::st_area(sf::st_make_valid(blocks))),
    tolerance = 1e-6
  )
})
