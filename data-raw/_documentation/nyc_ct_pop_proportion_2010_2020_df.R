#' NYC Census Tract Population Proportions 2010 to 2020
#'
#' Proportions of 2010 census tract populations that fall within 2020 census tract
#' boundaries. This table is useful for allocating data from 2010 census tracts
#' to 2020 census tracts.
#'
#' @format ## `nyc_ct_pop_proportion_2010_2020_df`
#' A data frame with 2416 rows and 8 columns:
#' \describe{
#'   \item{boro_code}{Borough code (1=Manhattan, 2=Bronx, 3=Brooklyn, 4=Queens, 5=Staten Island)}
#'   \item{county_fips}{Federal unique ID for counties (005=Bronx, 047=Kings, 061=New York, 081=Queens, 085=Richmond)}
#'   \item{boro_name}{Borough name}
#'   \item{bct2020}{Unique identifier for 2020 census tracts (BoroCode + CT2020)}
#'   \item{fipsct2020}{Alternate unique identifier for 2020 census tracts (CountyFIPS + CT2020)}
#'   \item{bct2010}{Unique identifier for 2010 census tracts (BoroCode + CT2010)}
#'   \item{fipsct2010}{Alternate unique identifier for 2010 census tracts (CountyFIPS + CT2010)}
#'   \item{prptn10t20}{Proportion of the 2010 census tract population that falls within 2020 census tract boundaries}
#' }
#' @details
#' When census tract boundaries change between decades, this crosswalk table allows
#' allocation of population-based statistics from one set of boundaries to another.
#' Produced by NYC Planning Department from 2020 Census data.
#'
#' @author Kieran Healy
#' @source <https://www.nyc.gov/content/planning/pages/resources#datasets>
"nyc_ct_pop_proportion_2010_2020_df"
