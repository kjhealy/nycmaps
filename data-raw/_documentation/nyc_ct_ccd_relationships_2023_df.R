#' NYC Census Tract to City Council District Relationships 2023
#'
#' Relationship table linking 2020 census tracts to 2023 City Council Districts.
#'
#' @format ## `nyc_ct_ccd_relationships_2023_df`
#' A data frame with 2327 rows and 8 columns:
#' \describe{
#'   \item{geoid}{Unique identifier for 2020 census tracts (11-digit FIPS code: 3-digit county + 6-digit census tract)}
#'   \item{county_fips}{Federal unique ID for counties (005=Bronx, 047=Kings, 061=New York, 081=Queens, 085=Richmond)}
#'   \item{boro_code}{Borough code (1=Manhattan, 2=Bronx, 3=Brooklyn, 4=Queens, 5=Staten Island)}
#'   \item{boro_name}{Borough name}
#'   \item{boro_ct2020}{Unique identifier for 2020 census tracts (BoroCode + CT2020)}
#'   \item{ct2020}{2020 census tract number (6-digit)}
#'   \item{ct_label}{Census tract identifier}
#'   \item{ccd2023}{2023 City Council District number}
#' }
#' @details
#' This crosswalk table links census tracts to City Council Districts, allowing
#' census data to be aggregated to City Council District boundaries. Produced by
#' NYC Planning Department.
#'
#' @author Kieran Healy
#' @source <https://www.nyc.gov/content/planning/pages/resources#datasets>
"nyc_ct_ccd_relationships_2023_df"
