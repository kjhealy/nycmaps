#' New York City Census Block Groups 2020
#'
#' Simple feature collection of NYC 2020 census block groups, clipped to the
#' shoreline. EPSG:2263, NAD83 / New York Long Island (ftUS).
#'
#' @format ## `nyc_census_block_groups_2020_sf`
#' A simple feature collection with 6670 rows and 6 columns:
#' \describe{
#'   \item{geoid}{Unique identifier for 2020 census block groups (12-digit
#'     FIPS code: state + county + tract + block group)}
#'   \item{boro_code}{Borough code as character (1=Manhattan, 2=Bronx, 3=Brooklyn, 4=Queens, 5=Staten Island)}
#'   \item{boro_name}{Borough name}
#'   \item{ct2020}{2020 census tract number (6-digit)}
#'   \item{bg2020}{2020 block group number within the tract (1-digit)}
#'   \item{geometry}{Multipolygon}
#' }
#' @details
#' Block groups are statistical divisions of census tracts and the smallest
#' geography for which the American Community Survey (ACS) publishes
#' estimates. ACS 5-year releases from 2020 onward use 2020 census
#' geography, so `geoid` joins directly to the `GEOID` column returned by
#' `tidycensus::get_acs(geography = "block group", ...)`.
#'
#' Derived from [nyc_census_blocks_2020_sf] (NYC Planning Department 2020
#' census blocks, Release 25C, August 2025) by dissolving blocks on the
#' first 12 digits of their GEOIDs. Because the source blocks are clipped
#' to the shoreline, the block groups do not extend into the water.
#' Microscopic interior rings left by the union (all smaller than 0.01
#' square feet) have been removed.
#'
#' Every block group matches a block group in the 2020-2024 5-year ACS. The
#' ACS block groups with no polygon here are water-only areas with no land
#' in the source blocks and an estimated population of zero; nearly all are
#' "Block Group 0".
#'
#' @author Kieran Healy
#' @source <https://www.nyc.gov/content/planning/pages/resources#datasets>
"nyc_census_block_groups_2020_sf"
