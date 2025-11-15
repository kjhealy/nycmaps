## nyc_shoclip_sf object
## Shoreline with some surrounding shore borders, adapted from TIGER/LINE files

source(here::here("data-raw", "_shared.R"))

shoclip_rawpath <- here("data-raw", "shoclip")
nyc_shoclip_sf <- st_read(here(shoclip_rawpath, "nyc_shoclip_edited.shp")) |>
  st_transform(crs = st_crs("EPSG:2263"))

usethis::use_data(nyc_shoclip_sf, overwrite = TRUE, compress = "xz")
