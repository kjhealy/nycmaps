# New York City Neighborhood Tabulation Areas 2010

Simple feature collection of NYC Neighborhood Tabulation Areas from
2010. EPSG:2263, NAD83 / New York Long Island (ftUS).

## Usage

``` r
nyc_nta10_sf
```

## Format

### `nyc_nta10_sf`

A simple feature collection with 195 rows and 8 columns:

- boro_code:

  Borough code (1=Manhattan, 2=Bronx, 3=Brooklyn, 4=Queens, 5=Staten
  Island)

- boro_name:

  Borough name

- county_fips:

  Federal unique ID for counties (005=Bronx, 047=Kings, 061=New York,
  081=Queens, 085=Richmond)

- nta_code:

  Unique alphanumeric identifier for each Neighborhood Tabulation Area

- nta_name:

  Full NTA name

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
