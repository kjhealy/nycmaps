## nyc_police_precincts_sf object

source(here::here("data-raw", "_shared.R"))

police_rawpath <- here("data-raw", "police_precincts", "nypp_25c")

nyc_police_precincts_sf <- st_read(here(
  police_rawpath,
  "nypp.shp"
)) |>
  janitor::clean_names() |>
  st_transform(crs = st_crs("EPSG:2263"))

usethis::use_data(nyc_police_precincts_sf, overwrite = TRUE, compress = "xz")
