#' New York City Census Blocks 2000
#'
#' Simple feature collection of NYC Census Blocks from 2000.
#' EPSG:2263, NAD83 / New York Long Island (ftUS).
#'
#' @format ## `nyc_census_blocks_2000_sf`
#' A simple feature collection with 36721 rows and 8 columns:
#' \describe{
#'   \item{bctcb2000}{Unique identifier for 2000 census blocks (BoroCode + CT2000 + CB2000)}
#'   \item{cb2000}{2000 census block number (4-digit)}
#'   \item{boro_code}{Borough code as character (1=Manhattan, 2=Bronx, 3=Brooklyn, 4=Queens, 5=Staten Island)}
#'   \item{boro_name}{Borough name}
#'   \item{ct2000}{2000 census tract number (6-digit)}
#'   \item{shape_leng}{Shape length}
#'   \item{shape_area}{Shape area}
#'   \item{geometry}{Multipolygon}
#' }
#' @details
#' Census blocks are the smallest geographic units used by the U.S. Census
#' Bureau for tabulation of 100-percent data. Produced by NYC Planning
#' Department. Release: 21B.
#'
#' @author Kieran Healy
#' @source <https://www.nyc.gov/content/planning/pages/resources#datasets>
"nyc_census_blocks_2000_sf"
