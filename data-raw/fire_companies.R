## nyc_fire_companies_sf object

source(here::here("data-raw", "_shared.R"))

fire_rawpath <- here("data-raw", "fire_companies")

nyc_fire_companies_sf <- st_read(here(
  fire_rawpath,
  "nyfc_25c",
  "nyfc.shp"
)) |>
  janitor::clean_names() |>
  st_transform(crs = st_crs("EPSG:2263"))

usethis::use_data(nyc_fire_companies_sf, overwrite = TRUE, compress = "xz")
