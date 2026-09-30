# NYC Modified Zip Code Tabulation Areas (MODZCTAs)

Simple feature collection of the NYC Department of Health and Mental
Hygiene's Modified Zip Code Tabulation Areas. EPSG:2263, NAD83 / New
York Long Island (ftUS).

## Usage

``` r
nyc_modzcta_sf
```

## Format

### `nyc_modzcta_sf`

A simple feature collection with 178 rows and 5 columns:

- modzcta:

  Modified ZCTA identifier (character)

- label:

  Display label listing the ZIP codes associated with the MODZCTA. `NA`
  for `"99999"`.

- zcta_list:

  Comma-separated list of the Census ZCTAs combined into the MODZCTA

- pop_est:

  Estimated population (integer)

- geometry:

  Multipolygon

## Source

<https://data.cityofnewyork.us/Health/Modified-Zip-Code-Tabulation-Areas-MODZCTA-/pri4-ifjk>

## Details

MODZCTAs are used by the NYC Department of Health and Mental Hygiene
(DOHMH) for health-related reporting, including COVID-19 surveillance
data and hospital catchment areas. Census ZCTAs with very small
populations are merged with adjacent ZCTAs, and block-sized ZCTAs are
merged with the ZCTA that surrounds them, giving 178 areas. The MODZCTA
`"99999"` covers land not assigned to any other MODZCTA (mostly parks
and other non-residential areas) and has a population of zero. Use
[nyc_zcta_modzcta_df](https://kjhealy.github.io/nycmaps/reference/nyc_zcta_modzcta_df.md)
to map Census ZCTAs to MODZCTAs.

Boundaries are taken from the GeoJSON export of the NYC Open Data
dataset, because the shapefile export was not available.

## Author

Kieran Healy
