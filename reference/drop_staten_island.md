# Drop Staten Island from a map

Crop an `sf` object so that Staten Island is removed. The map is first
clipped on the west, just beyond the easternmost point of the Staten
Island polygon, and then clipped on the south, just below the
southernmost tip of Breezy Point (the southern tip of Queens).

## Usage

``` r
drop_staten_island(x, buffer = 10)
```

## Arguments

- x:

  An `sf` object to crop. Must have a defined CRS.

- buffer:

  Numeric scalar giving the offset, in the map units of `x`'s CRS, used
  to place the cut "just beyond" the Staten Island and Breezy Point
  extremes. Defaults to `10` (feet when `x` uses EPSG:2263, the default
  for maps in this package).

## Value

An `sf` object of the same class as `x`, cropped to exclude Staten
Island.

## Examples

``` r
drop_staten_island(nyc_boros_sf)
#> Warning: attribute variables are assumed to be spatially constant throughout all geometries
#> Simple feature collection with 4 features and 4 fields
#> Geometry type: MULTIPOLYGON
#> Dimension:     XY
#> Bounding box:  xmin: 971013.5 ymin: 136686.8 xmax: 1067383 ymax: 272844.3
#> Projected CRS: NAD83 / New York Long Island (ftUS)
#>   boro_code boro_name shape_leng shape_area                       geometry
#> 2         2     Bronx   463147.1 1187199300 MULTIPOLYGON (((1012786 229...
#> 3         3  Brooklyn   726953.0 1934462608 MULTIPOLYGON (((1022078 151...
#> 4         4    Queens   887905.1 3041419184 MULTIPOLYGON (((1032458 154...
#> 5         1 Manhattan   359193.9  636627850 MULTIPOLYGON (((980940.5 18...
```
