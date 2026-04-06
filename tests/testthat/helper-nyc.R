nyc_boro_names <- c(
  "Manhattan",
  "Bronx",
  "Brooklyn",
  "Queens",
  "Staten Island"
)

nyc_boro_codes <- c("1", "2", "3", "4", "5")

expect_nyc_polygon_sf <- function(x, epsg = 2263L) {
  expect_s3_class(x, "sf")
  expect_s3_class(x, "data.frame")
  expect_true(inherits(sf::st_geometry(x), "sfc_MULTIPOLYGON"))
  expect_equal(sf::st_crs(x)$epsg, as.integer(epsg))
  expect_gt(nrow(x), 0)
  expect_false(any(sf::st_is_empty(x)))
}

expect_nyc_boro_columns <- function(x) {
  expect_setequal(x$boro_name, nyc_boro_names)
  expect_true(all(as.character(x$boro_code) %in% nyc_boro_codes))
}
