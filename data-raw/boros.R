## nyc_boros_sf boro boundaries object

source(here::here("data-raw", "_shared.R"))

boro_rawpath <- here("data-raw", "boros")

nyc_boros_sf <- st_read(here(
  boro_rawpath,
  "nybb.shp"
)) |>
  janitor::clean_names() |>
  st_transform(crs = st_crs("EPSG:2263"))

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
  select(boro_code, boro_name, county_name, short_county_name, long_county_name)


usethis::use_data(nyc_boros, overwrite = TRUE)
