#' Simple Features collection of NYC Zip Codes
#'
#' Polygons of NYC zip codes along with 2019 ACS population estimate.
#'
#' @format ## `nyc_zip_sf`
#' A simple feature collection with 212 rows and 4 columns:
#' \describe{
#'   \item{zip}{Zip code (actually ZTCA)}
#'   \item{name}{ZCTA5 name}
#'   \item{pop}{2019 ACS population estimage}
#'   \item{geometry}{Multipolydon for zip code area}
#' }
#' @details
#' Geographies and population estimates from US Census Bureau, ACS 5-year estimates (2019).
#' List of zip codes described in `nyc_zips` table elsewhere in this package.
#'
#' @author Kieran Healy
#' @source See details.
"nyc_zip_sf"

#' NYC Zip Codes
#'
#' Table of New York City zip codes.
#'
#' @format ## `nyc_zips`
#' A data frame with 255 rows and 7 columns:
#' \describe{
#'   \item{zip}{Zip Code}
#'   \item{borough}{Borough name}
#'   \item{city}{Nominal city (USPS designation)}
#'   \item{county}{County as 'Countyname County'}
#'   \item{long_county}{County as 'Countyname County, New York'}
#'   \item{short_county}{County as 'County'}
#'   \item{po_name}{Nominal post office (USPS designation)}
#' }
#' @details
#' Full USPS Zip Code list from <https://postalpro.usps.com/ZIP_Locale_Detail>
#' Initial regional subsetting via <https://worldpopulationreview.com/zips/new-york>
#'
#' @author Kieran Healy
#' @source See details.
"nyc_zips"
