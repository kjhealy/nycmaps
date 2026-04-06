test_that("nyc_shoclip_sf has expected structure", {
  expect_s3_class(nyc_shoclip_sf, "sf")
  expect_s3_class(nyc_shoclip_sf, "data.frame")
  expect_equal(sf::st_crs(nyc_shoclip_sf), sf::st_crs("EPSG:2263"))
  expect_equal(nrow(nyc_shoclip_sf), 7426)
  expect_true(all(
    as.character(sf::st_geometry_type(nyc_shoclip_sf)) %in%
      c("LINESTRING", "MULTILINESTRING")
  ))
  expect_true("geometry" %in% names(nyc_shoclip_sf))
})
