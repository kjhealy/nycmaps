# New York City Census Blocks 2020

Simple feature collection of NYC Census Blocks from 2020. EPSG:2263,
NAD83 / New York Long Island (ftUS).

## Usage

``` r
nyc_census_blocks_2020_sf
```

## Format

### `nyc_census_blocks_2020_sf`

A simple feature collection with 37588 rows and 9 columns:

- cb2020:

  2020 census block number (4-digit)

- boro_code:

  Borough code as character (1=Manhattan, 2=Bronx, 3=Brooklyn, 4=Queens,
  5=Staten Island)

- boro_name:

  Borough name

- ct2020:

  2020 census tract number (6-digit)

- bctcb2020:

  Unique identifier for 2020 census blocks (BoroCode + CT2020 + CB2020)

- geoid:

  Unique identifier for 2020 census blocks (15-digit FIPS code)

- shape_leng:

  Shape length

- shape_area:

  Shape area

- geometry:

  Multipolygon

## Source

<https://www.nyc.gov/content/planning/pages/resources#datasets>

## Details

Census blocks are the smallest geographic units used by the U.S. Census
Bureau for tabulation of 100-percent data. Produced by NYC Planning
Department. Release: 25C, August 2025.

## Author

Kieran Healy
