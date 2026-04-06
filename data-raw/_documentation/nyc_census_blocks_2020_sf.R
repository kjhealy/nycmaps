#' New York City Census Blocks 2020
#'
#' Simple feature collection of NYC Census Blocks from 2020.
#' EPSG:2263, NAD83 / New York Long Island (ftUS).
#'
#' @format ## `nyc_census_blocks_2020_sf`
#' A simple feature collection with 37588 rows and 9 columns:
#' \describe{
#'   \item{cb2020}{2020 census block number (4-digit)}
#'   \item{boro_code}{Borough code as character (1=Manhattan, 2=Bronx, 3=Brooklyn, 4=Queens, 5=Staten Island)}
#'   \item{boro_name}{Borough name}
#'   \item{ct2020}{2020 census tract number (6-digit)}
#'   \item{bctcb2020}{Unique identifier for 2020 census blocks (BoroCode + CT2020 + CB2020)}
#'   \item{geoid}{Unique identifier for 2020 census blocks (15-digit FIPS code)}
#'   \item{shape_leng}{Shape length}
#'   \item{shape_area}{Shape area}
#'   \item{geometry}{Multipolygon}
#' }
#' @details
#' Census blocks are the smallest geographic units used by the U.S. Census
#' Bureau for tabulation of 100-percent data. Produced by NYC Planning
#' Department. Release: 25C, August 2025.
#'
#' @author Kieran Healy
#' @source <https://www.nyc.gov/content/planning/pages/resources#datasets>
"nyc_census_blocks_2020_sf"
