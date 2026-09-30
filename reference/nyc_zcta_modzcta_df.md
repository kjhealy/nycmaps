# NYC ZCTA to Modified ZCTA (MODZCTA) crosswalk

Crosswalk from Census Zip Code Tabulation Areas (ZCTAs) to the NYC
Department of Health and Mental Hygiene's Modified ZCTAs.

## Usage

``` r
nyc_zcta_modzcta_df
```

## Format

### `nyc_zcta_modzcta_df`

A data frame with 215 rows and 2 columns:

- zcta:

  Census ZCTA (character)

- modzcta:

  Modified ZCTA the ZCTA belongs to (character). Joins to `modzcta` in
  [nyc_modzcta_sf](https://kjhealy.github.io/nycmaps/reference/nyc_modzcta_sf.md).

## Source

<https://github.com/nychealth/coronavirus-data/tree/master/Geography-resources>

## Details

Each row is one ZCTA. Several ZCTAs can map to the same MODZCTA. Use
this table to aggregate ZCTA-level data, such as Census or ACS
estimates, to MODZCTAs. Produced by NYC DOHMH.

## Author

Kieran Healy
