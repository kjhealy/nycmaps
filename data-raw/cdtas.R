## nyc_cdtas_2020_sf object

source(here::here("data-raw", "_shared.R"))

cdtas_rawpath <- here("data-raw", "cdtas")

nyc_cdtas_2020_sf <- st_read(here(
  cdtas_rawpath,
  "nycdta2020_25c",
  "nycdta2020.shp"
)) |>
  janitor::clean_names() |>
  st_transform(crs = st_crs("EPSG:2263"))

usethis::use_data(nyc_cdtas_2020_sf, overwrite = TRUE, compress = "xz")
