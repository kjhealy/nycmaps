## nyc_census_block_groups sf objects

## Block groups are built by dissolving NYC DCP's shoreline-clipped census
## blocks. A block group GEOID is the first 12 digits of its blocks' 15-digit
## GEOIDs (state + county + tract + first digit of the block number).

source(here::here("data-raw", "_shared.R"))

## Unioning adjacent blocks whose shared edges do not coincide exactly leaves
## microscopic interior rings (all < 0.01 sq ft in the 2020 data, and each
## covered by a neighbouring block group). Drop interior rings below
## `min_area` square feet.
drop_small_holes <- function(x, min_area = 1) {
  geoms <- lapply(st_geometry(x), \(mp) {
    polys <- lapply(mp, \(p) {
      if (length(p) == 1) {
        return(p)
      }
      holes <- p[-1]
      hole_area <- vapply(
        holes,
        \(r) st_area(st_polygon(list(r))),
        numeric(1)
      )
      c(p[1], holes[hole_area >= min_area])
    })
    st_multipolygon(polys)
  })
  st_geometry(x) <- st_sfc(geoms, crs = st_crs(x))
  x
}

dissolve_blocks <- function(blocks, ct_col) {
  blocks |>
    st_make_valid() |>
    group_by(geoid, boro_code, boro_name, across(all_of(ct_col))) |>
    summarize(.groups = "drop") |>
    st_make_valid() |>
    st_cast("MULTIPOLYGON") |>
    drop_small_holes()
}

## Sanity checks: no area lost or gained, no overlaps or gaps between
## neighbouring block groups beyond floating-point noise
check_block_groups <- function(bg, blocks) {
  blocks <- st_make_valid(blocks)
  area_diff <- abs(sum(st_area(bg)) - sum(st_area(blocks)))
  gap_area <- sum(st_area(st_sym_difference(st_union(bg), st_union(blocks))))
  overlaps <- st_intersection(select(bg, geoid)) |>
    filter(n.overlaps > 1) |>
    st_collection_extract("POLYGON")
  overlap_area <- sum(st_area(overlaps))
  stopifnot(
    all(st_is_valid(bg)),
    anyDuplicated(bg$geoid) == 0,
    as.numeric(area_diff) < 1,
    as.numeric(gap_area) < 1,
    as.numeric(overlap_area) < 1
  )
  invisible(bg)
}

boro_county_fips <- tribble(
  ~boro_code , ~county_fips ,
  "1"        , "061"        ,
  "2"        , "005"        ,
  "3"        , "047"        ,
  "4"        , "081"        ,
  "5"        , "085"
)

## 2020
load(here("data", "nyc_census_blocks_2020_sf.rda"))

nyc_census_block_groups_2020_sf <- nyc_census_blocks_2020_sf |>
  mutate(geoid = str_sub(geoid, 1, 12)) |>
  dissolve_blocks("ct2020") |>
  mutate(bg2020 = str_sub(geoid, 12, 12)) |>
  select(geoid, boro_code, boro_name, ct2020, bg2020, geometry) |>
  arrange(geoid) |>
  check_block_groups(nyc_census_blocks_2020_sf)

## Every block group should match a 2020-2024 ACS block group. Unmatched ACS
## rows are water-only block groups with no land in the DCP blocks.
acs_bg <- get_acs(
  geography = "block group",
  variables = "B01001_001",
  state = "NY",
  county = boro_county_fips$county_fips,
  year = 2024
)
stopifnot(all(nyc_census_block_groups_2020_sf$geoid %in% acs_bg$GEOID))

acs_bg |>
  filter(!GEOID %in% nyc_census_block_groups_2020_sf$geoid) |>
  count(bg = str_sub(GEOID, 12, 12), zero_pop = estimate == 0)

usethis::use_data(
  nyc_census_block_groups_2020_sf,
  overwrite = TRUE,
  compress = "xz"
)

## 2010. The DCP 2010 blocks have no GEOID column, so build it from the
## borough's county FIPS code, the tract, and the first digit of the block.
## One Manhattan block (bctcb2010 10223003005) is coded to tract 022300, which
## does not exist in 2010 geography. The block lies wholly inside tract 022301,
## which otherwise has blocks 3004 and 3006 but no 3005, so recode it.
load(here("data", "nyc_census_blocks_2010_sf.rda"))

nyc_census_block_groups_2010_sf <- nyc_census_blocks_2010_sf |>
  mutate(
    ct2010 = if_else(bctcb2010 == "10223003005", "022301", ct2010)
  ) |>
  left_join(boro_county_fips, by = "boro_code") |>
  mutate(geoid = paste0("36", county_fips, ct2010, str_sub(cb2010, 1, 1))) |>
  dissolve_blocks("ct2010") |>
  mutate(bg2010 = str_sub(geoid, 12, 12)) |>
  select(geoid, boro_code, boro_name, ct2010, bg2010, geometry) |>
  arrange(geoid) |>
  check_block_groups(nyc_census_blocks_2010_sf)

acs_bg_2019 <- get_acs(
  geography = "block group",
  variables = "B01001_001",
  state = "NY",
  county = boro_county_fips$county_fips,
  year = 2019
)
stopifnot(all(nyc_census_block_groups_2010_sf$geoid %in% acs_bg_2019$GEOID))

acs_bg_2019 |>
  filter(!GEOID %in% nyc_census_block_groups_2010_sf$geoid) |>
  count(bg = str_sub(GEOID, 12, 12), zero_pop = estimate == 0)

usethis::use_data(
  nyc_census_block_groups_2010_sf,
  overwrite = TRUE,
  compress = "xz"
)
