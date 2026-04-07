# New York City Community District Tabulation Areas 2020

Simple feature collection of NYC Community District Tabulation Areas
(CDTAs) from 2020. EPSG:2263, NAD83 / New York Long Island (ftUS).

## Usage

``` r
nyc_cdtas_2020_sf
```

## Format

### `nyc_cdtas_2020_sf`

A simple feature collection with 71 rows and 9 columns:

- boro_code:

  Borough code (1=Manhattan, 2=Bronx, 3=Brooklyn, 4=Queens, 5=Staten
  Island)

- boro_name:

  Borough name

- county_fips:

  Federal unique ID for counties (005=Bronx, 047=Kings, 061=New York,
  081=Queens, 085=Richmond)

- cdta2020:

  Unique alphanumeric identifier representing Community District
  Tabulation Areas (CDTA)

- cdta_name:

  Full name of CDTA

- cdta_type:

  Differentiates between CDTAs which represent a community district (CD)
  or a joint interest area

- shape_leng:

  Shape length

- shape_area:

  Shape area

- geometry:

  Multipolygon

## Source

<https://www.nyc.gov/content/planning/pages/resources#datasets>

## Details

Community District Tabulation Areas (CDTAs) are approximations of NYC
community districts created from census tracts. They represent areas
outside of community districts as joint interest areas. Produced by NYC
Planning Department. Release: 25C, August 2025.

## Author

Kieran Healy
