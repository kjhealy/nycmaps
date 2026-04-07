# New York City Census Tracts 2000

Simple feature collection of NYC Census Tracts from 2000. EPSG:2263,
NAD83 / New York Long Island (ftUS).

## Usage

``` r
nyc_census_tracts_2000_sf
```

## Format

### `nyc_census_tracts_2000_sf`

A simple feature collection with 2216 rows and 12 columns:

- ct_label:

  Census tract identifier

- boro_code:

  Borough code as character (1=Manhattan, 2=Bronx, 3=Brooklyn, 4=Queens,
  5=Staten Island)

- boro_name:

  Borough name

- ct2000:

  2000 census tract number (6-digit)

- boro_ct2000:

  Unique identifier for 2000 census tracts (BoroCode + CT2000)

- cd_eligibil:

  Community District eligibility (E=Eligible, I=Ineligible)

- nta_code:

  Unique alphanumeric identifier for each Neighborhood Tabulation Area

- ntan_ame:

  Neighborhood Tabulation Area name

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
