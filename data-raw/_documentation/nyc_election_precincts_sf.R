#' New York City Election Precincts
#'
#' Simple feature collection of NYC Election Precincts.
#' EPSG:2263, NAD83 / New York Long Island (ftUS).
#'
#' @format ## `nyc_election_precincts_sf`
#' A simple feature collection with 4264 rows and 4 columns:
#' \describe{
#'   \item{elect_dist}{Election district identifier}
#'   \item{shape_leng}{Shape length}
#'   \item{shape_area}{Shape area}
#'   \item{geometry}{Multipolygon}
#' }
#' @details
#' Boundaries of NYC Election Districts (also known as Election Precincts).
#' Produced by NYC Planning Department. Release: 25C, August 2025.
#'
#' @author Kieran Healy
#' @source <https://www.nyc.gov/content/planning/pages/resources#datasets>
"nyc_election_precincts_sf"
