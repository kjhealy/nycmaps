#' Drop Staten Island from a map
#'
#' Crop a spatial object so that Staten Island is removed. The map is
#' first clipped on the west, just beyond the easternmost point of the
#' Staten Island polygon, and then clipped on the south, just below the
#' southernmost tip of Breezy Point (the southern tip of Queens).
#'
#' This is an S3 generic with methods for `sf` objects and
#' [terra::SpatRaster] rasters.
#'
#' @param x An `sf` object or a [terra::SpatRaster]. Must have a defined
#'   CRS.
#' @param buffer Numeric scalar giving the offset, in the map units of
#'   `x`'s CRS, used to place the cut "just beyond" the Staten Island
#'   and Breezy Point extremes. Defaults to `10` (feet when `x` uses
#'   EPSG:2263, the default for maps in this package).
#'
#' @returns An object of the same class as `x`, cropped to exclude
#'   Staten Island.
#' @export
#' @examples
#' drop_staten_island(nyc_boros_sf)
drop_staten_island <- function(x, buffer = 10) {
  UseMethod("drop_staten_island")
}

#' @export
drop_staten_island.sf <- function(x, buffer = 10) {
  if (is.na(sf::st_crs(x))) {
    cli::cli_abort("{.arg x} must have a defined CRS.")
  }

  bb <- si_crop_bbox(sf::st_crs(x), buffer = buffer)
  x_bbox <- sf::st_bbox(x)

  crop_bbox <- sf::st_bbox(
    c(
      xmin = bb$xmin,
      ymin = bb$ymin,
      xmax = x_bbox[["xmax"]],
      ymax = x_bbox[["ymax"]]
    ),
    crs = sf::st_crs(x)
  )

  sf::st_crop(x, crop_bbox)
}

#' @export
drop_staten_island.SpatRaster <- function(x, buffer = 10) {
  if (!requireNamespace("terra", quietly = TRUE)) {
    cli::cli_abort(
      "Package {.pkg terra} is required for the
       {.cls SpatRaster} method of {.fn drop_staten_island}."
    )
  }
  x_crs <- sf::st_crs(terra::crs(x))
  if (is.na(x_crs)) {
    cli::cli_abort("{.arg x} must have a defined CRS.")
  }

  bb <- si_crop_bbox(x_crs, buffer = buffer)
  e <- terra::ext(x)

  crop_ext <- terra::ext(bb$xmin, e[2], bb$ymin, e[4])
  terra::crop(x, crop_ext)
}

#' @export
drop_staten_island.default <- function(x, buffer = 10) {
  cli::cli_abort(
    "{.arg x} must be an {.cls sf} or {.cls SpatRaster} object,
     not {.cls {class(x)[1]}}."
  )
}

# Western and southern crop bounds, transformed to the input's CRS.
si_crop_bbox <- function(crs, buffer = 10) {
  boros <- sf::st_transform(nycmaps::nyc_boros_sf, crs)
  list(
    xmin = sf::st_bbox(
      boros[boros$boro_name == "Staten Island", ]
    )[["xmax"]] +
      buffer,
    ymin = sf::st_bbox(
      boros[boros$boro_name == "Queens", ]
    )[["ymin"]] -
      buffer
  )
}
