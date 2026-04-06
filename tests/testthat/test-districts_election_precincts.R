test_that("nyc_election_precincts_sf has expected structure", {
  expect_nyc_polygon_sf(nyc_election_precincts_sf)
  expect_equal(nrow(nyc_election_precincts_sf), 4264)
  expect_setequal(
    names(nyc_election_precincts_sf),
    c("elect_dist", "shape_leng", "shape_area", "geometry")
  )
  expect_equal(anyDuplicated(nyc_election_precincts_sf$elect_dist), 0L)
})
