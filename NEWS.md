# nycmaps 0.0.3.9000

* New `nyc_county_sf` and `nyc_county` are aliases for `nyc_boros_sf` and
  `nyc_boros`, named for consistency with Census conventions.

* New `nyc_modzcta_sf` contains the NYC Department of Health and Mental
  Hygiene's Modified Zip Code Tabulation Areas (MODZCTAs), used for
  health reporting and hospital catchment areas. New `nyc_zcta_modzcta_df`
  maps Census ZCTAs to MODZCTAs.

* `nyc_boros_sf` and `nyc_boros` gain a `geoid` column holding the Census county GEOID
  for each borough (e.g. `"36061"` for Manhattan), so that county-level
  Census and ACS tables such as those in nycdemog can be joined directly.

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
