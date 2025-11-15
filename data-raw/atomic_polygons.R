## nyc_atomic_polygons_sf object

source(here::here("data-raw", "_shared.R"))

atomic_polygons_rawpath <- here("data-raw", "atomic_polygons", "nyap_25c")

nyc_atomic_polygons_sf <- st_read(here(
  atomic_polygons_rawpath,
  "nyap.shp"
)) |>
  janitor::clean_names() |>
  st_transform(crs = st_crs("EPSG:2263"))

usethis::use_data(nyc_atomic_polygons_sf, overwrite = TRUE, compress = "xz")
