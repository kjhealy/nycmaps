#' NYC ZCTA to Modified ZCTA (MODZCTA) crosswalk
#'
#' Crosswalk from Census Zip Code Tabulation Areas (ZCTAs) to the NYC
#' Department of Health and Mental Hygiene's Modified ZCTAs.
#'
#' @format ## `nyc_zcta_modzcta_df`
#' A data frame with 215 rows and 2 columns:
#' \describe{
#'   \item{zcta}{Census ZCTA (character)}
#'   \item{modzcta}{Modified ZCTA the ZCTA belongs to (character). Joins to
#'     `modzcta` in [nyc_modzcta_sf].}
#' }
#' @details
#' Each row is one ZCTA. Several ZCTAs can map to the same MODZCTA. Use this
#' table to aggregate ZCTA-level data, such as Census or ACS estimates, to
#' MODZCTAs. Produced by NYC DOHMH.
#'
#' @author Kieran Healy
#' @source <https://github.com/nychealth/coronavirus-data/tree/master/Geography-resources>
"nyc_zcta_modzcta_df"
