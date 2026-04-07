# New York City Neighborhood Tabulation Areas 2020

Simple feature collection of NYC Neighborhood Tabulation Areas from
2020. EPSG:2263, NAD83 / New York Long Island (ftUS).

## Usage

``` r
nyc_nta20_sf
```

## Format

### `nyc_nta20_sf`

A simple feature collection with 262 rows and 12 columns:

- boro_code:

  Borough code (1=Manhattan, 2=Bronx, 3=Brooklyn, 4=Queens, 5=Staten
  Island)

- boro_name:

  Borough name

- county_fips:

  Federal unique ID for counties (005=Bronx, 047=Kings, 061=New York,
  081=Queens, 085=Richmond)

- nta2020:

  Unique alphanumeric identifier for each 2020 Neighborhood Tabulation
  Area

- nta_name:

  Full NTA name

- nta_abbrev:

  Shortened version of NTA name

- nta_type:

  The NTA type differentiates between residential and various
  non-residential geographies

- cdta2020:

  Unique alphanumeric identifier representing Community District
  Tabulation Areas (CDTA)

- cdta_name:

  Full name of CDTA

- shape_leng:

  Shape length

- shape_area:

  Shape area

- geometry:

  Multipolygon

## Source

<https://www.nyc.gov/content/planning/pages/resources#datasets>

## Details

Neighborhood Tabulation Areas (NTAs) are aggregations of census tracts
that are subsets of New York City's 55 Public Use Microdata Areas
(PUMAs). Produced by NYC Planning Department. Release: 25C, August 2025.

## Author

Kieran Healy
