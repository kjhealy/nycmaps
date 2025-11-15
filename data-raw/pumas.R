## nyc_pumas_2010_sf and nyc_pumas_2020_sf objects

source(here::here("data-raw", "_shared.R"))

pumas_rawpath <- here("data-raw", "pumas")

nyc_pumas_2010_sf <- st_read(here(
  pumas_rawpath,
  "nypuma2010_25c",
  "nypuma2010.shp"
)) |>
  janitor::clean_names() |>
  st_transform(crs = st_crs("EPSG:2263"))

nyc_pumas_2020_sf <- st_read(here(
  pumas_rawpath,
  "nypuma2020_25c",
  "nypuma2020.shp"
)) |>
  janitor::clean_names() |>
  st_transform(crs = st_crs("EPSG:2263"))

usethis::use_data(nyc_pumas_2010_sf, overwrite = TRUE, compress = "xz")
usethis::use_data(nyc_pumas_2020_sf, overwrite = TRUE, compress = "xz")
