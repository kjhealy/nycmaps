#' New York City Census Tracts 2020
#'
#' Simple feature collection of NYC Census Tracts from 2020.
#' EPSG:2263, NAD83 / New York Long Island (ftUS).
#'
#' @format ## `nyc_census_tracts_2020_sf`
#' A simple feature collection with 2325 rows and 15 columns:
#' \describe{
#'   \item{ct_label}{Census tract identifier}
#'   \item{boro_code}{Borough code as character (1=Manhattan, 2=Bronx, 3=Brooklyn, 4=Queens, 5=Staten Island)}
#'   \item{boro_name}{Borough name}
#'   \item{ct2020}{2020 census tract number (6-digit)}
#'   \item{boro_ct2020}{Unique identifier for 2020 census tracts (BoroCode + CT2020)}
#'   \item{cd_eligibil}{Community District eligibility (E=Eligible, I=Ineligible)}
#'   \item{nta_name}{Full Neighborhood Tabulation Area name}
#'   \item{nta2020}{Unique alphanumeric identifier for each 2020 Neighborhood Tabulation Area}
#'   \item{cdta2020}{Unique alphanumeric identifier representing Community District Tabulation Areas (CDTA)}
#'   \item{cdtaname}{Full name of CDTA}
#'   \item{geoid}{Unique identifier for 2020 census tracts (11-digit FIPS code)}
#'   \item{puma}{Public Use Microdata Area identifier}
#'   \item{shape_leng}{Shape length}
#'   \item{shape_area}{Shape area}
#'   \item{geometry}{Multipolygon}
#' }
#' @details
#' Census tracts are small, relatively permanent statistical subdivisions of a
#' county. Produced by NYC Planning Department. Release: 25C, August 2025.
#'
#' @author Kieran Healy
#' @source <https://www.nyc.gov/content/planning/pages/resources#datasets>
"nyc_census_tracts_2020_sf"
