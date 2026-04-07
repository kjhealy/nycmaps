# NYC Census Block Relationships 2020

Relationship table linking 2020 census blocks to census tracts,
Neighborhood Tabulation Areas (NTAs), and Community District Tabulation
Areas (CDTAs).

## Usage

``` r
nyc_census_block_relationships_2020_df
```

## Format

### `nyc_census_block_relationships_2020_df`

A data frame with 37984 rows and 17 columns:

- geoid:

  Unique identifier for 2020 census blocks (15-digit FIPS code: 3-digit
  county + 6-digit census tract + 4-digit block)

- county_fips:

  Federal unique ID for counties (005=Bronx, 047=Kings, 061=New York,
  081=Queens, 085=Richmond)

- boro_code:

  Borough code (1=Manhattan, 2=Bronx, 3=Brooklyn, 4=Queens, 5=Staten
  Island)

- boro_name:

  Borough name

- bctcb2020:

  Unique identifier for 2020 census blocks (BoroCode + census tract +
  census block)

- cb2020:

  2020 census block number

- cb_label:

  Census block identifier with label

- boro_ct2020:

  Unique identifier for 2020 census tracts (BoroCode + CT2020)

- ct2020:

  2020 census tract number (6-digit)

- ct_label:

  Census tract identifier

- nta_code:

  Unique alphanumeric identifier for each Neighborhood Tabulation Area
  (6 characters)

- nta_type:

  NTA type differentiating residential and non-residential geographies

- nta_name:

  Full NTA name

- nta_abbrev:

  Shortened version of NTA name

- cdta_code:

  Unique alphanumeric identifier for Community District Tabulation Areas
  (4 characters)

- cdta_type:

  Differentiates between CDTAs representing a community district (CD) or
  joint interest area

- cdta_name:

  Full name of CDTA

## Source

<https://www.nyc.gov/content/planning/pages/resources#datasets>

## Details

This table provides the hierarchical relationships between census blocks
(the smallest census geography) and larger geographic units including
census tracts, NTAs, and CDTAs. Produced by NYC Planning Department from
2020 Census data.

## Author

Kieran Healy
