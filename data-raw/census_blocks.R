## nyc_census_blocks sf objects

source(here::here("data-raw", "_shared.R"))

cb_rawpath <- here("data-raw", "census_blocks")

nyc_census_blocks_2000_sf <- st_read(here(
  cb_rawpath,
  "nycb2000_21b",
  "nycb2000.shp"
)) |>
  janitor::clean_names() |>
  st_transform(crs = st_crs("EPSG:2263"))

nyc_census_blocks_2010_sf <- st_read(here(
  cb_rawpath,
  "nycb2010_25c",
  "nycb2010.shp"
)) |>
  janitor::clean_names() |>
  st_transform(crs = st_crs("EPSG:2263"))

nyc_census_blocks_2020_sf <- st_read(here(
  cb_rawpath,
  "nycb2020_25c",
  "nycb2020.shp"
)) |>
  janitor::clean_names() |>
  st_transform(crs = st_crs("EPSG:2263"))

usethis::use_data(nyc_census_blocks_2000_sf, overwrite = TRUE, compress = "xz")
usethis::use_data(nyc_census_blocks_2010_sf, overwrite = TRUE, compress = "xz")
usethis::use_data(nyc_census_blocks_2020_sf, overwrite = TRUE, compress = "xz")
