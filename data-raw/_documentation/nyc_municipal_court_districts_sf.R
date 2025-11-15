#' New York City Municipal Court Districts
#'
#' Simple feature collection of NYC Municipal Court Districts.
#' EPSG:2263, NAD83 / New York Long Island (ftUS).
#'
#' @format ## `nyc_municipal_court_districts_sf`
#' A simple feature collection with 28 rows and 6 columns:
#' \describe{
#'   \item{boro_code}{Borough code (1=Manhattan, 2=Bronx, 3=Brooklyn, 4=Queens, 5=Staten Island)}
#'   \item{boro_name}{Borough name}
#'   \item{muni_court}{Municipal court district identifier}
#'   \item{shape_leng}{Shape length}
#'   \item{shape_area}{Shape area}
#'   \item{geometry}{Multipolygon}
#' }
#' @details
#' Boundaries of NYC Municipal Court Districts. Produced by NYC Planning Department.
#' Release: 25C, August 2025.
#'
#' @author Kieran Healy
#' @source <https://www.nyc.gov/content/planning/pages/resources#datasets>
"nyc_municipal_court_districts_sf"
