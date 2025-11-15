#' NYC Census Block Relationships 2020
#'
#' Relationship table linking 2020 census blocks to census tracts, Neighborhood
#' Tabulation Areas (NTAs), and Community District Tabulation Areas (CDTAs).
#'
#' @format ## `nyc_census_block_relationships_2020_df`
#' A data frame with 37984 rows and 17 columns:
#' \describe{
#'   \item{geoid}{Unique identifier for 2020 census blocks (15-digit FIPS code: 3-digit county + 6-digit census tract + 4-digit block)}
#'   \item{county_fips}{Federal unique ID for counties (005=Bronx, 047=Kings, 061=New York, 081=Queens, 085=Richmond)}
#'   \item{boro_code}{Borough code (1=Manhattan, 2=Bronx, 3=Brooklyn, 4=Queens, 5=Staten Island)}
#'   \item{boro_name}{Borough name}
#'   \item{bctcb2020}{Unique identifier for 2020 census blocks (BoroCode + census tract + census block)}
#'   \item{cb2020}{2020 census block number}
#'   \item{cb_label}{Census block identifier with label}
#'   \item{boro_ct2020}{Unique identifier for 2020 census tracts (BoroCode + CT2020)}
#'   \item{ct2020}{2020 census tract number (6-digit)}
#'   \item{ct_label}{Census tract identifier}
#'   \item{nta_code}{Unique alphanumeric identifier for each Neighborhood Tabulation Area (6 characters)}
#'   \item{nta_type}{NTA type differentiating residential and non-residential geographies}
#'   \item{nta_name}{Full NTA name}
#'   \item{nta_abbrev}{Shortened version of NTA name}
#'   \item{cdta_code}{Unique alphanumeric identifier for Community District Tabulation Areas (4 characters)}
#'   \item{cdta_type}{Differentiates between CDTAs representing a community district (CD) or joint interest area}
#'   \item{cdta_name}{Full name of CDTA}
#' }
#' @details
#' This table provides the hierarchical relationships between census blocks (the
#' smallest census geography) and larger geographic units including census tracts,
#' NTAs, and CDTAs. Produced by NYC Planning Department from 2020 Census data.
#'
#' @author Kieran Healy
#' @source <https://www.nyc.gov/content/planning/pages/resources#datasets>
"nyc_census_block_relationships_2020_df"
