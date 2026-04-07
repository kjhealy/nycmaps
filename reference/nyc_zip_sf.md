# Simple Features collection of NYC Zip Codes

Polygons of NYC zip codes along with 2019 ACS population estimate.
EPSG:2263, NAD83 / New York Long Island (ftUS).

## Usage

``` r
nyc_zip_sf
```

## Format

### `nyc_zip_sf`

A simple feature collection with 212 rows and 4 columns:

- zip:

  Zip code (actually ZTCA)

- zip_name:

  ZCTA5 name

- pop:

  2019 ACS population estimage

- geometry:

  Multipolydon for zip code area

## Source

See details.

## Details

Geographies and population estimates from US Census Bureau, ACS 5-year
estimates (2019). List of zip codes described in `nyc_zips` table
elsewhere in this package.

## Author

Kieran Healy
