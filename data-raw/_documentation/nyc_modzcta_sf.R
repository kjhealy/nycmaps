#' NYC Modified Zip Code Tabulation Areas (MODZCTAs)
#'
#' Simple feature collection of the NYC Department of Health and Mental
#' Hygiene's Modified Zip Code Tabulation Areas.
#' EPSG:2263, NAD83 / New York Long Island (ftUS).
#'
#' @format ## `nyc_modzcta_sf`
#' A simple feature collection with 178 rows and 5 columns:
#' \describe{
#'   \item{modzcta}{Modified ZCTA identifier (character)}
#'   \item{label}{Display label listing the ZIP codes associated with the
#'     MODZCTA. `NA` for `"99999"`.}
#'   \item{zcta_list}{Comma-separated list of the Census ZCTAs combined into
#'     the MODZCTA}
#'   \item{pop_est}{Estimated population (integer)}
#'   \item{geometry}{Multipolygon}
#' }
#' @details
#' MODZCTAs are used by the NYC Department of Health and Mental Hygiene
#' (DOHMH) for health-related reporting, including COVID-19 surveillance data
#' and hospital catchment areas. Census ZCTAs with very small populations
#' are merged with adjacent ZCTAs, and block-sized ZCTAs are merged with the
#' ZCTA that surrounds them, giving 178 areas. The MODZCTA `"99999"` covers
#' land not assigned to any other MODZCTA (mostly parks and other
#' non-residential areas) and has a population of zero. Use
#' [nyc_zcta_modzcta_df] to map Census ZCTAs to MODZCTAs.
#'
#' Boundaries are taken from the GeoJSON export of the NYC Open Data dataset,
#' because the shapefile export was not available.
#'
#' @author Kieran Healy
#' @source <https://data.cityofnewyork.us/Health/Modified-Zip-Code-Tabulation-Areas-MODZCTA-/pri4-ifjk>
"nyc_modzcta_sf"
