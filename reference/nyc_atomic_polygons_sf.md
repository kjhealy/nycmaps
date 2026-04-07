# NYC Atomic Polygons

Atomic Polygons are the smallest geographic units created by NYC
Planning that result from the intersection of various administrative and
political boundaries. These polygons are the building blocks for
aggregating data across different geographic hierarchies.

## Usage

``` r
nyc_atomic_polygons_sf
```

## Format

### `nyc_atomic_polygons_sf`

A simple feature collection with 69,690 rows and 30 columns:

- borough:

  Borough code (1-5)

- censusbloc:

  2020 Census block number

- censusbl_1:

  Census block suffix

- censustrac:

  2020 Census tract number

- censusbl_2:

  2010 Census block number

- censusbl_3:

  2010 Census block suffix

- censustr_1:

  2020 Census tract number (alternate)

- censustr_2:

  2010 Census tract number

- admin_fire:

  Fire company administrative unit

- water_flag:

  Water area flag indicator

- assemdist:

  State Assembly district

- electdist:

  Election district

- schooldist:

  School district

- commdist:

  Community district

- sb1_volume:

  Section book 1 volume

- sb1_page:

  Section book 1 page

- sb2_volume:

  Section book 2 volume

- sb2_page:

  Section book 2 page

- sb3_volume:

  Section book 3 volume

- sb3_page:

  Section book 3 page

- atomicid:

  Unique atomic polygon identifier

- atomic_num:

  Atomic polygon number

- hurricane:

  Hurricane evacuation zone

- censustr_3:

  2020 Census tract (alternate)

- censusbl_4:

  2020 Census block (alternate)

- censusbl_5:

  2020 Census block suffix (alternate)

- commercial:

  Commercial overlay zone

- shape_leng:

  Shape length in feet

- shape_area:

  Shape area in square feet

- geometry:

  MULTIPOLYGON geometry

## Source

<https://www.nyc.gov/content/planning/pages/resources#datasets>

## Details

NYC Atomic Polygons, Release: 25C, August 2025. Produced by NYC Planning
Department. These polygons are created by overlaying multiple
administrative and political boundaries to create the finest level of
geographic detail. They can be used to aggregate data to any of the
boundary types they contain.

## Author

Kieran Healy
