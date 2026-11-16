## nyc_census_tracts sf objects

source(here::here("data-raw", "_shared.R"))

ct_rawpath <- here("data-raw", "census_tracts")

## Census county GEOIDs (state + county FIPS) keyed by city boro code. The
## tract geoid is these five characters followed by the six-digit tract code.
boro_geoids <- c(
  "1" = "36061",
  "2" = "36005",
  "3" = "36047",
  "4" = "36081",
  "5" = "36085"
)

nyc_census_tracts_2000_sf <- st_read(here(
  ct_rawpath,
  "nyct2000_21b",
  "nyct2000.shp"
)) |>
  janitor::clean_names() |>
  st_transform(crs = st_crs("EPSG:2263")) |>
  mutate(
    geoid = paste0(unname(boro_geoids[as.character(boro_code)]), ct2000),
    .after = boro_ct2000
  )

stopifnot(
  all(nchar(nyc_census_tracts_2000_sf$geoid) == 11),
  anyDuplicated(nyc_census_tracts_2000_sf$geoid) == 0
)

nyc_census_tracts_2010_sf <- st_read(here(
  ct_rawpath,
  "nyct2010_25c",
  "nyct2010.shp"
)) |>
  janitor::clean_names() |>
  st_transform(crs = st_crs("EPSG:2263")) |>
  mutate(
    geoid = paste0(unname(boro_geoids[as.character(boro_code)]), ct2010),
    .after = boro_ct2010
  )

stopifnot(
  all(nchar(nyc_census_tracts_2010_sf$geoid) == 11),
  anyDuplicated(nyc_census_tracts_2010_sf$geoid) == 0
)

nyc_census_tracts_2020_sf <- st_read(here(
  ct_rawpath,
  "nyct2020_25c",
  "nyct2020.shp"
)) |>
  janitor::clean_names() |>
  st_transform(crs = st_crs("EPSG:2263"))

usethis::use_data(nyc_census_tracts_2000_sf, overwrite = TRUE, compress = "xz")
usethis::use_data(nyc_census_tracts_2010_sf, overwrite = TRUE, compress = "xz")
usethis::use_data(nyc_census_tracts_2020_sf, overwrite = TRUE, compress = "xz")
