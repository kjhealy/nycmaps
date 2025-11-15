# Shared code and objects
library(devtools)
library(tidyverse)
library(readxl)
library(here)
library(kjhmisc)

library(sf)

library(tidycensus)
options(tigris_use_cache = TRUE)


# Prep zip codes
ny_county_boros <- tribble(
  ~long_county_name           , ~county_name      , ~short_county_name , ~boro_name      ,
  "New York County, New York" , "New York County" , "New York"         , "Manhattan"     ,
  "Queens County, New York"   , "Queens County"   , "Queens"           , "Queens"        ,
  "Kings County, New York"    , "Kings County"    , "Kings"            , "Brooklyn"      ,
  "Bronx County, New York"    , "Bronx County"    , "Bronx"            , "Bronx"         ,
  "Richmond County, New York" , "Richmond County" , "Richmond"         , "Staten Island"
)

census_vars <- tribble(
  ~variable    , ~varname            ,
  "B01001_001" , "population"        ,
  "B02001_002" , "white_alone"       ,
  "B02001_003" , "black_alone"       ,
  "B02001_005" , "asian_alone"       ,
  "B02001_008" , "two_or_more_races" ,
  "B03003_001" , "hispanic"          ,
  "B03002_003" , "nonhispanic_white" ,
  "B03002_004" , "nonhispanic_black" ,
  "B19013_001" , "med_hhinc"
)
