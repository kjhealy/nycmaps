# Changelog

## nycmaps 0.0.3.9000

- `nyc_boros_sf` and `nyc_boros` gain a `geoid` column holding the
  Census county GEOID for each borough (e.g. `"36061"` for Manhattan),
  so that county-level Census and ACS tables such as those in nycdemog
  can be joined directly.

- [`drop_staten_island()`](https://kjhealy.github.io/nycmaps/reference/drop_staten_island.md)
  is now an S3 generic with methods for `sf` objects and
  [`terra::SpatRaster`](https://rspatial.github.io/terra/reference/SpatRaster-class.html)
  rasters. The `SpatRaster` method applies the same west-and-south crop
  window as the `sf` method, using
  [`terra::crop()`](https://rspatial.github.io/terra/reference/crop.html).

## nycmaps 0.0.3

- New
  [`drop_staten_island()`](https://kjhealy.github.io/nycmaps/reference/drop_staten_island.md)
  crops any `sf` map in the package to remove Staten Island, clipping
  the western edge just beyond the easternmost point of Staten Island
  and the southern edge just below the southernmost tip of Breezy Point.

## nycmaps 0.0.2

- Initial release.
