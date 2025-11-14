## code to prepare `nyc_zips` and `nyc_zip_sf` datasets goes here
library(tidyverse)
library(tidycensus)
library(here)
library(kjhmisc)
library(devtools)

source(here("data-raw", "_shared.R"))

read_csv(here("data-raw", "zips", "nyc-ziptable.csv")) |>
  janitor::clean_names() |>
  select(-population_a) |>
  filter(county %in% ny_county_boros$county) |>
  rename(zip = zip_code) |>
  write_csv(here("data-raw", "zips", "nyc-ziptable-clean.csv"))

nyc_ziptable <- read_csv(
  here("data-raw", "zips", "nyc-ziptable-clean.csv"),
  col_names = TRUE,
  cols(
    zip = col_character(),
    city = col_character(),
    county = col_character()
  )
)
nyc_ziptable <- nyc_ziptable |>
  left_join(ny_county_boros) |>
  relocate(borough, .after = zip) |>
  arrange(zip)

readRDS(here("data-raw", "zips", "nyc_dogzips.rda")) |>
  mutate(zip = as.character(zip_code)) |>
  select(zip, borough, po_name) |>
  as_tibble() |>
  select(-geometry) |>
  distinct() |>
  write_csv(here("data-raw", "zips", "nyc-dogzip-table-clean.csv"))

nyc_dogzips <- read_csv(
  here("data-raw", "zips", "nyc-dogzip-table-clean.csv"),
  col_names = TRUE,
  cols(
    zip = col_character(),
    borough = col_character(),
    po_name = col_character()
  )
) |>
  arrange(zip)

nyc_dogzips <- nyc_dogzips |>
  left_join(ny_county_boros) |>
  relocate(borough, .after = zip) |>
  arrange(zip)

# l nin r
setdiff(nyc_dogzips$zip, nyc_ziptable$zip)

setdiff(nyc_ziptable$zip, nyc_dogzips$zip)

nyc_zips <- full_join(nyc_ziptable, nyc_dogzips)

usethis::use_data(nyc_zips, overwrite = TRUE, compress = "xz")

# ugh
# https://github.com/walkerke/tidycensus/issues/475
# zcta_info <- get_acs(
#   geography = "zcta",
#   variables = "B01001_001"
# )

nyc_zip_sf <- get_acs(
  geography = "zcta",
  variables = "B01001_001",
  state = "NY",
  year = 2019,
  county = NULL,
  geometry = TRUE
) |>
  select(-c(variable, moe)) |>
  rename(zip = GEOID, pop = estimate, name = NAME) |>
  filter(zip %in% nyc_zips$zip)

usethis::use_data(nyc_zip_sf, overwrite = TRUE, compress = "xz")
