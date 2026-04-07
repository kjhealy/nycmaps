# NYC Census Tract to City Council District Relationships 2023

Relationship table linking 2020 census tracts to 2023 City Council
Districts.

## Usage

``` r
nyc_ct_ccd_relationships_2023_df
```

## Format

### `nyc_ct_ccd_relationships_2023_df`

A data frame with 2327 rows and 8 columns:

- geoid:

  Unique identifier for 2020 census tracts (11-digit FIPS code: 3-digit
  county + 6-digit census tract)

- county_fips:

  Federal unique ID for counties (005=Bronx, 047=Kings, 061=New York,
  081=Queens, 085=Richmond)

- boro_code:

  Borough code (1=Manhattan, 2=Bronx, 3=Brooklyn, 4=Queens, 5=Staten
  Island)

- boro_name:

  Borough name

- boro_ct2020:

  Unique identifier for 2020 census tracts (BoroCode + CT2020)

- ct2020:

  2020 census tract number (6-digit)

- ct_label:

  Census tract identifier

- ccd2023:

  2023 City Council District number

## Source

<https://www.nyc.gov/content/planning/pages/resources#datasets>

## Details

This crosswalk table links census tracts to City Council Districts,
allowing census data to be aggregated to City Council District
boundaries. Produced by NYC Planning Department.

## Author

Kieran Healy
