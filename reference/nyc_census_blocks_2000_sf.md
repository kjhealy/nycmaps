# New York City Census Blocks 2000

Simple feature collection of NYC Census Blocks from 2000. EPSG:2263,
NAD83 / New York Long Island (ftUS).

## Usage

``` r
nyc_census_blocks_2000_sf
```

## Format

### `nyc_census_blocks_2000_sf`

A simple feature collection with 36721 rows and 8 columns:

- bctcb2000:

  Unique identifier for 2000 census blocks (BoroCode + CT2000 + CB2000)

- cb2000:

  2000 census block number (4-digit)

- boro_code:

  Borough code as character (1=Manhattan, 2=Bronx, 3=Brooklyn, 4=Queens,
  5=Staten Island)

- boro_name:

  Borough name

- ct2000:

  2000 census tract number (6-digit)

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
Department. Release: 21B.

## Author

Kieran Healy
