# NYC Census Tract Population Proportions 2010 to 2020

Proportions of 2010 census tract populations that fall within 2020
census tract boundaries. This table is useful for allocating data from
2010 census tracts to 2020 census tracts.

## Usage

``` r
nyc_ct_pop_proportion_2010_2020_df
```

## Format

### `nyc_ct_pop_proportion_2010_2020_df`

A data frame with 2416 rows and 8 columns:

- boro_code:

  Borough code (1=Manhattan, 2=Bronx, 3=Brooklyn, 4=Queens, 5=Staten
  Island)

- county_fips:

  Federal unique ID for counties (005=Bronx, 047=Kings, 061=New York,
  081=Queens, 085=Richmond)

- boro_name:

  Borough name

- bct2020:

  Unique identifier for 2020 census tracts (BoroCode + CT2020)

- fipsct2020:

  Alternate unique identifier for 2020 census tracts (CountyFIPS +
  CT2020)

- bct2010:

  Unique identifier for 2010 census tracts (BoroCode + CT2010)

- fipsct2010:

  Alternate unique identifier for 2010 census tracts (CountyFIPS +
  CT2010)

- prptn10t20:

  Proportion of the 2010 census tract population that falls within 2020
  census tract boundaries

## Source

<https://www.nyc.gov/content/planning/pages/resources#datasets>

## Details

When census tract boundaries change between decades, this crosswalk
table allows allocation of population-based statistics from one set of
boundaries to another. Produced by NYC Planning Department from 2020
Census data.

## Author

Kieran Healy
