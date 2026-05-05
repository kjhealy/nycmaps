# nycmaps 0.0.3.9000

* `drop_staten_island()` is now an S3 generic with methods for `sf`
  objects and `terra::SpatRaster` rasters. The `SpatRaster` method
  applies the same west-and-south crop window as the `sf` method,
  using `terra::crop()`.

# nycmaps 0.0.3

* New `drop_staten_island()` crops any `sf` map in the package to remove
  Staten Island, clipping the western edge just beyond the easternmost
  point of Staten Island and the southern edge just below the
  southernmost tip of Breezy Point.

# nycmaps 0.0.2

* Initial release.
