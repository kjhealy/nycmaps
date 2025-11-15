## nyc_nta20_sf, nyc_nta10_sf objects

source(here::here("data-raw", "_shared.R"))

nta20_rawpath <- here("data-raw", "ntas", "nta2020_25c")
nta10_rawpath <- here("data-raw", "ntas", "nta2010_25c")

nyc_nta20_sf <- st_read(here(
  nta20_rawpath,
  "nynta2020.shp"
)) |>
  janitor::clean_names() |>
  st_transform(crs = st_crs("EPSG:2263"))

nyc_nta10_sf <- st_read(here(
  nta10_rawpath,
  "nynta2010.shp"
)) |>
  janitor::clean_names() |>
  st_transform(crs = st_crs("EPSG:2263"))


## Crosswalks

usethis::use_data(nyc_nta20_sf, overwrite = TRUE, compress = "xz")
usethis::use_data(nyc_nta10_sf, overwrite = TRUE, compress = "xz")
