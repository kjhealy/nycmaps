## nyc_boros_sf boro boundaries object

source(here::here("data-raw", "_shared.R"))

boro_rawpath <- here("data-raw", "boros")

## Census county GEOIDs (state + county FIPS) keyed by city boro code
boro_geoids <- c(
  "1" = "36061",
  "2" = "36005",
  "3" = "36047",
  "4" = "36081",
  "5" = "36085"
)

nyc_boros_sf <- st_read(here(
  boro_rawpath,
  "nybb.shp"
)) |>
  janitor::clean_names() |>
  st_transform(crs = st_crs("EPSG:2263")) |>
  mutate(
    geoid = unname(boro_geoids[as.character(boro_code)]),
    .after = boro_name
  )

usethis::use_data(nyc_boros_sf, overwrite = TRUE, compress = "xz")

nyc_boros <- tribble(
  ~long_county_name           , ~county_name      , ~short_county_name , ~boro_name      , ~boro_code ,
  "New York County, New York" , "New York County" , "New York"         , "Manhattan"     ,          1 ,
  "Queens County, New York"   , "Queens County"   , "Queens"           , "Queens"        ,          4 ,
  "Kings County, New York"    , "Kings County"    , "Kings"            , "Brooklyn"      ,          3 ,
  "Bronx County, New York"    , "Bronx County"    , "Bronx"            , "Bronx"         ,          2 ,
  "Richmond County, New York" , "Richmond County" , "Richmond"         , "Staten Island" ,          5
) |>
  arrange(boro_code) |>
  mutate(geoid = unname(boro_geoids[as.character(boro_code)])) |>
  select(
    boro_code,
    boro_name,
    geoid,
    county_name,
    short_county_name,
    long_county_name
  )


usethis::use_data(nyc_boros, overwrite = TRUE)
