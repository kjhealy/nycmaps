## nyc_congressional_districts_sf object

source(here::here("data-raw", "_shared.R"))

districts_rawpath <- here("data-raw", "districts_congressional", "nycg_25c")

nyc_congressional_districts_sf <- st_read(here(
  districts_rawpath,
  "nycg.shp"
)) |>
  janitor::clean_names() |>
  st_transform(crs = st_crs("EPSG:2263"))

usethis::use_data(
  nyc_congressional_districts_sf,
  overwrite = TRUE,
  compress = "xz"
)
