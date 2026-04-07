# New York City School Districts

Simple feature collection of NYC School Districts. EPSG:2263, NAD83 /
New York Long Island (ftUS).

## Usage

``` r
nyc_school_districts_sf
```

## Format

### `nyc_school_districts_sf`

A simple feature collection with 33 rows and 4 columns:

- school_dist:

  School district number

- shape_leng:

  Shape length

- shape_area:

  Shape area

- geometry:

  Multipolygon

## Source

<https://www.nyc.gov/content/planning/pages/resources#datasets>

## Details

Boundaries of NYC School Districts. Produced by NYC Planning Department.
Release: 25C, August 2025.

There are 32 school districts but the dataset contains 33 rows because
District 10 has two entries. Most of District 10 is in the Bronx, but a
small part of it consists of the piece of Manhattan that is not on the
island of Manhattan: the Marble Hill neighborhood, which sits just
across the Broadway Lift Bridge in the Bronx.

## Author

Kieran Healy
