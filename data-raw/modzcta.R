## nyc_modzcta_sf and nyc_zcta_modzcta_df objects

source(here::here("data-raw", "_shared.R"))

modzcta_rawpath <- here("data-raw", "modzcta")

## The Open Data shapefile export for pri4-ifjk returns an empty zip, so the
## boundaries come from the GeoJSON export of the same dataset:
## https://data.cityofnewyork.us/api/geospatial/pri4-ifjk?method=export&format=GeoJSON
nyc_modzcta_sf <- st_read(here(modzcta_rawpath, "modzcta.geojson")) |>
  janitor::clean_names() |>
  rename(zcta_list = zcta) |>
  mutate(
    label = na_if(label, ""),
    pop_est = as.integer(pop_est)
  ) |>
  st_transform(crs = st_crs("EPSG:2263")) |>
  st_make_valid() |>
  st_cast("MULTIPOLYGON") |>
  arrange(modzcta) |>
  select(modzcta, label, zcta_list, pop_est, geometry)

usethis::use_data(nyc_modzcta_sf, overwrite = TRUE, compress = "xz")

## Crosswalk from NYC DOHMH:
## https://github.com/nychealth/coronavirus-data/tree/master/Geography-resources
nyc_zcta_modzcta_df <- read_csv(
  here(modzcta_rawpath, "ZCTA-to-MODZCTA.csv"),
  col_types = cols(.default = col_character())
) |>
  janitor::clean_names() |>
  arrange(zcta)

## Every crosswalk ZCTA should appear in its MODZCTA's zcta_list
nyc_modzcta_sf |>
  st_drop_geometry() |>
  select(modzcta, zcta_list) |>
  separate_longer_delim(zcta_list, delim = ", ") |>
  anti_join(
    x = nyc_zcta_modzcta_df,
    by = c("zcta" = "zcta_list", "modzcta")
  )

usethis::use_data(nyc_zcta_modzcta_df, overwrite = TRUE, compress = "xz")
