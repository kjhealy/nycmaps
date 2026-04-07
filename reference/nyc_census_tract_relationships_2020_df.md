# NYC Census Tract Relationships 2020

Relationship table linking 2020 census tracts to Neighborhood Tabulation
Areas (NTAs) and Community District Tabulation Areas (CDTAs).

## Usage

``` r
nyc_census_tract_relationships_2020_df
```

## Format

### `nyc_census_tract_relationships_2020_df`

A data frame with 2327 rows and 14 columns:

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

This table provides the relationships between census tracts and larger
geographic aggregations including NTAs and CDTAs. Produced by NYC
Planning Department from 2020 Census data.

## Author

Kieran Healy
