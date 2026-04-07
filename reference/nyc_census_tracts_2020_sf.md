# New York City Census Tracts 2020

Simple feature collection of NYC Census Tracts from 2020. EPSG:2263,
NAD83 / New York Long Island (ftUS).

## Usage

``` r
nyc_census_tracts_2020_sf
```

## Format

### `nyc_census_tracts_2020_sf`

A simple feature collection with 2325 rows and 15 columns:

- ct_label:

  Census tract identifier

- boro_code:

  Borough code as character (1=Manhattan, 2=Bronx, 3=Brooklyn, 4=Queens,
  5=Staten Island)

- boro_name:

  Borough name

- ct2020:

  2020 census tract number (6-digit)

- boro_ct2020:

  Unique identifier for 2020 census tracts (BoroCode + CT2020)

- cd_eligibil:

  Community District eligibility (E=Eligible, I=Ineligible)

- nta_name:

  Full Neighborhood Tabulation Area name

- nta2020:

  Unique alphanumeric identifier for each 2020 Neighborhood Tabulation
  Area

- cdta2020:

  Unique alphanumeric identifier representing Community District
  Tabulation Areas (CDTA)

- cdtaname:

  Full name of CDTA

- geoid:

  Unique identifier for 2020 census tracts (11-digit FIPS code)

- puma:

  Public Use Microdata Area identifier

- shape_leng:

  Shape length

- shape_area:

  Shape area

- geometry:

  Multipolygon

## Source

<https://www.nyc.gov/content/planning/pages/resources#datasets>

## Details

Census tracts are small, relatively permanent statistical subdivisions
of a county. Produced by NYC Planning Department. Release: 25C, August
2025.

## Author

Kieran Healy
