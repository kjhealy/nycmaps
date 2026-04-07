#' Drop Staten Island from a map
#'
#' Crop an `sf` object so that Staten Island is removed. The map is
#' first clipped on the west, just beyond the easternmost point of the
#' Staten Island polygon, and then clipped on the south, just below the
#' southernmost tip of Breezy Point (the southern tip of Queens).
#'
#' @param x An `sf` object to crop. Must have a defined CRS.
#' @param buffer Numeric scalar giving the offset, in the map units of
#'   `x`'s CRS, used to place the cut "just beyond" the Staten Island
#'   and Breezy Point extremes. Defaults to `10` (feet when `x` uses
#'   EPSG:2263, the default for maps in this package).
#'
#' @returns An `sf` object of the same class as `x`, cropped to exclude
#'   Staten Island.
#' @export
#' @examples
#' drop_staten_island(nyc_boros_sf)
drop_staten_island <- function(x, buffer = 10) {
  if (!inherits(x, "sf")) {
    cli::cli_abort("{.arg x} must be an {.cls sf} object.")
  }
  if (is.na(sf::st_crs(x))) {
    cli::cli_abort("{.arg x} must have a defined CRS.")
  }

  boros <- sf::st_transform(nycmaps::nyc_boros_sf, sf::st_crs(x))
  staten_island <- boros[boros$boro_name == "Staten Island", ]
  queens <- boros[boros$boro_name == "Queens", ]

  si_xmax <- sf::st_bbox(staten_island)[["xmax"]]
  breezy_ymin <- sf::st_bbox(queens)[["ymin"]]
  x_bbox <- sf::st_bbox(x)

  crop_bbox <- sf::st_bbox(
    c(
      xmin = si_xmax + buffer,
      ymin = breezy_ymin - buffer,
      xmax = x_bbox[["xmax"]],
      ymax = x_bbox[["ymax"]]
    ),
    crs = sf::st_crs(x)
  )

  sf::st_crop(x, crop_bbox)
}
