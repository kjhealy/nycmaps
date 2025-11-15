#' New York City Public Use Microdata Areas 2010
#'
#' Simple feature collection of NYC Public Use Microdata Areas (PUMAs) from 2010.
#' EPSG:2263, NAD83 / New York Long Island (ftUS).
#'
#' @format ## `nyc_pumas_2010_sf`
#' A simple feature collection with 55 rows and 4 columns:
#' \describe{
#'   \item{puma}{Public Use Microdata Area identifier}
#'   \item{shape_leng}{Shape length}
#'   \item{shape_area}{Shape area}
#'   \item{geometry}{Multipolygon}
#' }
#' @details
#' Public Use Microdata Areas (PUMAs) are non-overlapping, statistical geographic
#' areas that partition each state or equivalent entity into geographic areas
#' containing no fewer than 100,000 people each. Produced by NYC Planning Department.
#' Release: 25C, August 2025.
#'
#' @author Kieran Healy
#' @source <https://www.nyc.gov/content/planning/pages/resources#datasets>
"nyc_pumas_2010_sf"
