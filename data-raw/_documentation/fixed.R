## Zip Codes

#' Simple Features collection of NYC Zip Codes
#'
#' Polygons of NYC zip codes along with 2019 ACS population estimate.
#'
#' @format ## `nyc_zip_sf`
#' A simple feature collection with 212 rows and 4 columns:
#' \describe{
#'   \item{zip}{Zip code (actually ZTCA)}
#'   \item{zip_name}{ZCTA5 name}
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
#'   \item{boro_name}{Borough name}
#'   \item{city_name}{Nominal city (USPS designation)}
#'   \item{county_name}{County as 'Countyname County'}
#'   \item{long_county_name}{County as 'Countyname County, New York'}
#'   \item{short_county_name}{County as 'County'}
#'   \item{po_name}{Nominal post office (USPS designation)}
#' }
#' @details
#' Full USPS Zip Code list from <https://postalpro.usps.com/ZIP_Locale_Detail>
#' Initial regional subsetting via <https://worldpopulationreview.com/zips/new-york>
#'
#' @author Kieran Healy
#' @source See details.
"nyc_zips"

### Boro boundaries

#' New York City borough boundaries
#'
#' Clipped to shoreline. EPSG:2263, NAD83 / New York Long Island (ftUS). An sf object.
#'
#' @format ## `nyc_boros_sf`
#' A data frame with 5 rows and 5 columns:
#' \describe{
#'   \item{boro_code}{Numeric borough code}
#'   \item{boro_name}{Borough Name}
#'   \item{shape_leng}{Shape length}
#'   \item{shape_area}{Shape area}
#'   \item{geometry}{Multipolygon}
#' }
#' @details Borough boundaries for NYC, clipped to shoreline. Produced by NYC Planning Department. Release: 25C, August 2025.
#' @author Kieran Healy
#' @source <https://www.nyc.gov/content/planning/pages/resources#datasets>
"nyc_boros_sf"


#' New York City borough names
#'
#' Borough and county names and code.
#'
#' @format ## `nyc_boros`
#' A data frame with 5 rows and 5 columns:
#' \describe{
#'   \item{boro_code}{City borough code. (Numeric)}
#'   \item{boro_name}{Borough name}
#'   \item{county_name}{County_Name County}
#'   \item{short_county_name}{County_Name}
#'   \item{long_county_name}{County_Name County, New York}
#' }
#' @details DETAILS
#' @author Kieran Healy
#' @source <SOURCE_URL>
"nyc_boros"


#' New York City and locale shorelines
#'
#' Shoreline with parts of NJ and areas of Nassau County NY. sf object.
#'
#' @format ## `nyc_shoclip_sf`
#' A data frame with 7,426 rows and 16 columns:
#' \describe{
#'   \item{SOURCE_ID}{DESCRIPTION}
#'   \item{SRC_DATE}{DESCRIPTION}
#'   \item{HOR_ACC}{DESCRIPTION}
#'   \item{INFORM}{DESCRIPTION}
#'   \item{ATTRIBUTE}{DESCRIPTION}
#'   \item{VER_DATE}{DESCRIPTION}
#'   \item{SRC_RESOLU}{DESCRIPTION}
#'   \item{DATA_SOURC}{DESCRIPTION}
#'   \item{EX_METH}{DESCRIPTION}
#'   \item{EXT_METH}{DESCRIPTION}
#'   \item{DAT_SET_CR}{DESCRIPTION}
#'   \item{SRC_CITA}{DESCRIPTION}
#'   \item{FIPS_ALPHA}{DESCRIPTION}
#'   \item{NOAA_Regio}{DESCRIPTION}
#'   \item{Shape_Leng}{DESCRIPTION}
#'   \item{geometry}{DESCRIPTION}
#' }
#' @details Manually adapted from NYC with part of Jersey shoreline and eastern coastline outside of NYC boundaries. Edited from CUSP sheet.
#' @author Kieran Healy
#' @source <https://nsde.ngs.noaa.gov>
"nyc_shoclip_sf"
