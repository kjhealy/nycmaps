## nyc_georelationships data frames

source(here::here("data-raw", "_shared.R"))

georel_rawpath <- here("data-raw", "georelationships")

## Census tract population proportions 2010 to 2020
nyc_ct_pop_proportion_2010_2020_df <- read_excel(
  here(georel_rawpath, "nyc_2010to2020_split_census_tract_pop_proportion.xlsx"),
  sheet = "CT Population Proportions"
) |>
  janitor::clean_names()

## Census block relationships 2020
nyc_census_block_relationships_2020_df <- read_excel(
  here(georel_rawpath, "nyc_2020_census_block_ct_nta_cdta_relationships.xlsx"),
  sheet = "NYC_CB2020_Relate"
) |>
  janitor::clean_names()

## Census tract to City Council District relationships 2023
nyc_ct_ccd_relationships_2023_df <- read_excel(
  here(georel_rawpath, "nyc_2020_census_tract_ccd_2023_relationships.xlsx"),
  sheet = "CT2020_CCD2023_Relate"
) |>
  janitor::clean_names()

## Census tract relationships 2020
nyc_census_tract_relationships_2020_df <- read_excel(
  here(georel_rawpath, "nyc_2020_census_tract_nta_cdta_relationships.xlsx"),
  sheet = "NYC_CT2020_Relate"
) |>
  janitor::clean_names()

usethis::use_data(
  nyc_ct_pop_proportion_2010_2020_df,
  overwrite = TRUE,
  compress = "xz"
)
usethis::use_data(
  nyc_census_block_relationships_2020_df,
  overwrite = TRUE,
  compress = "xz"
)
usethis::use_data(
  nyc_ct_ccd_relationships_2023_df,
  overwrite = TRUE,
  compress = "xz"
)
usethis::use_data(
  nyc_census_tract_relationships_2020_df,
  overwrite = TRUE,
  compress = "xz"
)
