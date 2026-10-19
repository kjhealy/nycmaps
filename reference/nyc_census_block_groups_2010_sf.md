# New York City Census Block Groups 2010

Simple feature collection of NYC 2010 census block groups, clipped to
the shoreline. EPSG:2263, NAD83 / New York Long Island (ftUS).

## Usage

``` r
nyc_census_block_groups_2010_sf
```

## Format

### `nyc_census_block_groups_2010_sf`

A simple feature collection with 6377 rows and 6 columns:

- geoid:

  Unique identifier for 2010 census block groups (12-digit FIPS code:
  state + county + tract + block group)

- boro_code:

  Borough code as character (1=Manhattan, 2=Bronx, 3=Brooklyn, 4=Queens,
  5=Staten Island)

- boro_name:

  Borough name

- ct2010:

  2010 census tract number (6-digit)

- bg2010:

  2010 block group number within the tract (1-digit)

- geometry:

  Multipolygon

## Source

<https://www.nyc.gov/content/planning/pages/resources#datasets>

## Details

Block groups are statistical divisions of census tracts and the smallest
geography for which the American Community Survey (ACS) publishes
estimates. ACS 5-year releases from 2010-2014 through 2015-2019 use 2010
census geography, so `geoid` joins directly to the `GEOID` column
returned by `tidycensus::get_acs(geography = "block group", ...)` for
those years.

Derived from
[nyc_census_blocks_2010_sf](https://kjhealy.github.io/nycmaps/reference/nyc_census_blocks_2010_sf.md)
(NYC Planning Department 2010 census blocks, Release 25C, August 2025).
That dataset has no GEOID column, so each block's GEOID prefix is built
from the borough's county FIPS code, `ct2010`, and the first digit of
`cb2010`, and blocks are dissolved on it. One block (`bctcb2010`
`"10223003005"`) is coded in the source to tract 022300, which does not
exist in 2010 geography; it lies wholly within tract 022301 and is
assigned there. Microscopic interior rings left by the union have been
removed.

Every block group matches a block group in the 2015-2019 5-year ACS. The
ACS block groups with no polygon here are all "Block Group 0" water-only
areas.

## Author

Kieran Healy
