## nyc_census_tracts sf objects

source(here::here("data-raw", "_shared.R"))

ct_rawpath <- here("data-raw", "census_tracts")

nyc_census_tracts_2000_sf <- st_read(here(
  ct_rawpath,
  "nyct2000_21b",
  "nyct2000.shp"
)) |>
  janitor::clean_names() |>
  st_transform(crs = st_crs("EPSG:2263"))

nyc_census_tracts_2010_sf <- st_read(here(
  ct_rawpath,
  "nyct2010_25c",
  "nyct2010.shp"
)) |>
  janitor::clean_names() |>
  st_transform(crs = st_crs("EPSG:2263"))

nyc_census_tracts_2020_sf <- st_read(here(
  ct_rawpath,
  "nyct2020_25c",
  "nyct2020.shp"
)) |>
  janitor::clean_names() |>
  st_transform(crs = st_crs("EPSG:2263"))

usethis::use_data(nyc_census_tracts_2000_sf, overwrite = TRUE, compress = "xz")
usethis::use_data(nyc_census_tracts_2010_sf, overwrite = TRUE, compress = "xz")
usethis::use_data(nyc_census_tracts_2020_sf, overwrite = TRUE, compress = "xz")
