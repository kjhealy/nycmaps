# New York City borough boundaries

Clipped to shoreline. EPSG:2263, NAD83 / New York Long Island (ftUS). An
sf object.

## Usage

``` r
nyc_boros_sf
```

## Format

### `nyc_boros_sf`

A data frame with 5 rows and 6 columns:

- boro_code:

  Numeric borough code

- boro_name:

  Borough Name

- geoid:

  Census county GEOID (state + county FIPS, e.g. "36061" for Manhattan).
  Character. Use to join county-level Census and ACS tables, such as
  those in the nycdemog package.

- shape_leng:

  Shape length

- shape_area:

  Shape area

- geometry:

  Multipolygon

## Source

<https://www.nyc.gov/content/planning/pages/resources#datasets>

## Details

Borough boundaries for NYC, clipped to shoreline. Produced by NYC
Planning Department. Release: 25C, August 2025.

## Author

Kieran Healy
