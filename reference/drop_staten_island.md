# Drop Staten Island from a map

Crop a spatial object so that Staten Island is removed. The map is first
clipped on the west, just beyond the easternmost point of the Staten
Island polygon, and then clipped on the south, just below the
southernmost tip of Breezy Point (the southern tip of Queens).

## Usage

``` r
drop_staten_island(x, buffer = 10)
```

## Arguments

- x:

  An `sf` object or a
  [terra::SpatRaster](https://rspatial.github.io/terra/reference/SpatRaster-class.html).
  Must have a defined CRS.

- buffer:

  Numeric scalar giving the offset, in the map units of `x`'s CRS, used
  to place the cut "just beyond" the Staten Island and Breezy Point
  extremes. Defaults to `10` (feet when `x` uses EPSG:2263, the default
  for maps in this package).

## Value

An object of the same class as `x`, cropped to exclude Staten Island.

## Details

This is an S3 generic with methods for `sf` objects and
[terra::SpatRaster](https://rspatial.github.io/terra/reference/SpatRaster-class.html)
rasters.

## Examples

``` r
drop_staten_island(nyc_boros_sf)
#> Warning: attribute variables are assumed to be spatially constant throughout all geometries
#> Simple feature collection with 4 features and 5 fields
#> Geometry type: MULTIPOLYGON
#> Dimension:     XY
#> Bounding box:  xmin: 971013.5 ymin: 136686.8 xmax: 1067383 ymax: 272844.3
#> Projected CRS: NAD83 / New York Long Island (ftUS)
#>   boro_code boro_name geoid shape_leng shape_area
#> 2         2     Bronx 36005   463147.1 1187199300
#> 3         3  Brooklyn 36047   726953.0 1934462608
#> 4         4    Queens 36081   887905.1 3041419184
#> 5         1 Manhattan 36061   359193.9  636627850
#>                         geometry
#> 2 MULTIPOLYGON (((1012786 229...
#> 3 MULTIPOLYGON (((1022078 151...
#> 4 MULTIPOLYGON (((1032458 154...
#> 5 MULTIPOLYGON (((980940.5 18...
```
