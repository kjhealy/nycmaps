## nyc_election_precincts_sf object

source(here::here("data-raw", "_shared.R"))

districts_rawpath <- here(
  "data-raw",
  "districts_election_precincts",
  "nyed_25c"
)

nyc_election_precincts_sf <- st_read(here(
  districts_rawpath,
  "nyed.shp"
)) |>
  janitor::clean_names() |>
  st_transform(crs = st_crs("EPSG:2263"))

usethis::use_data(nyc_election_precincts_sf, overwrite = TRUE, compress = "xz")
