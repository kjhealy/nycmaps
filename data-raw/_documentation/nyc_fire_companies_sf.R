#' New York City Fire Companies
#'
#' Simple feature collection of NYC Fire Companies.
#' EPSG:2263, NAD83 / New York Long Island (ftUS).
#'
#' @format ## `nyc_fire_companies_sf`
#' A simple feature collection with 348 rows and 7 columns:
#' \describe{
#'   \item{fire_co_type}{Fire company type (E=Engine, L=Ladder, Q=Squad)}
#'   \item{fire_co_num}{Fire company number}
#'   \item{fire_bn}{Fire battalion number}
#'   \item{fire_div}{Fire division number}
#'   \item{shape_leng}{Shape length}
#'   \item{shape_area}{Shape area}
#'   \item{geometry}{Multipolygon}
#' }
#' @details
#' Boundaries of NYC Fire Companies. Produced by NYC Planning Department.
#' Release: 25C, August 2025.
#'
#' @author Kieran Healy
#' @source <https://www.nyc.gov/content/planning/pages/resources#datasets>
"nyc_fire_companies_sf"
