test_that("drop_staten_island removes Staten Island from boros", {
  result <- drop_staten_island(nyc_boros_sf)

  expect_s3_class(result, "sf")
  expect_false("Staten Island" %in% result$boro_name)
  expect_setequal(
    result$boro_name,
    c("Manhattan", "Bronx", "Brooklyn", "Queens")
  )
})

test_that("drop_staten_island crop bounds are just beyond Staten Island and Breezy Point", {
  buffer <- 10
  si_xmax <- sf::st_bbox(
    nyc_boros_sf[nyc_boros_sf$boro_name == "Staten Island", ]
  )[["xmax"]]
  breezy_ymin <- sf::st_bbox(
    nyc_boros_sf[nyc_boros_sf$boro_name == "Queens", ]
  )[["ymin"]]

  result <- drop_staten_island(nyc_boros_sf, buffer = buffer)
  result_bbox <- sf::st_bbox(result)

  expect_gte(result_bbox[["xmin"]], si_xmax + buffer)
  expect_gte(result_bbox[["ymin"]], breezy_ymin - buffer)
})

test_that("drop_staten_island works on a reprojected input", {
  boros_wgs84 <- sf::st_transform(nyc_boros_sf, 4326)
  result <- drop_staten_island(boros_wgs84)

  expect_equal(sf::st_crs(result), sf::st_crs(boros_wgs84))
  expect_false("Staten Island" %in% result$boro_name)
})

test_that("drop_staten_island errors on unsupported input", {
  expect_error(
    drop_staten_island(data.frame(x = 1)),
    class = "rlang_error"
  )
})

test_that("drop_staten_island works on a SpatRaster", {
  skip_if_not_installed("terra")

  bbox <- sf::st_bbox(nyc_boros_sf)
  r <- terra::rast(
    xmin = bbox[["xmin"]],
    xmax = bbox[["xmax"]],
    ymin = bbox[["ymin"]],
    ymax = bbox[["ymax"]],
    resolution = 500,
    crs = sf::st_crs(nyc_boros_sf)$wkt
  )
  terra::values(r) <- seq_len(terra::ncell(r))

  result <- drop_staten_island(r)

  expect_s4_class(result, "SpatRaster")

  buffer <- 10
  si_xmax <- sf::st_bbox(
    nyc_boros_sf[nyc_boros_sf$boro_name == "Staten Island", ]
  )[["xmax"]]
  breezy_ymin <- sf::st_bbox(
    nyc_boros_sf[nyc_boros_sf$boro_name == "Queens", ]
  )[["ymin"]]
  e <- terra::ext(result)
  expect_gte(e[1], si_xmax + buffer - terra::res(r)[1])
  expect_gte(e[3], breezy_ymin - buffer - terra::res(r)[2])
})
