## Build data objects

# Remove all .rda files in data/ and regenerate them
fs::dir_ls("data", glob = "*.rda") |> fs::file_delete()

# Build data.R from documentation files
source(here::here("data-raw", "atomic_polygons.R"))
source(here::here("data-raw", "boros.R"))
source(here::here("data-raw", "cdtas.R"))
source(here::here("data-raw", "census_tracts.R"))
source(here::here("data-raw", "districts_city_council.R"))
source(here::here("data-raw", "districts_congressional.R"))
source(here::here("data-raw", "districts_election_precincts.R"))
source(here::here("data-raw", "districts_municipal_court.R"))
source(here::here("data-raw", "districts_school.R"))
source(here::here("data-raw", "districts_state_assembly.R"))
source(here::here("data-raw", "districts_state_senate.R"))
source(here::here("data-raw", "fire_companies.R"))
source(here::here("data-raw", "georelationships.R"))
source(here::here("data-raw", "ntas.R"))
source(here::here("data-raw", "police_precincts.R"))
source(here::here("data-raw", "pumas.R"))
source(here::here("data-raw", "shoclip.R"))
source(here::here("data-raw", "zips.R"))

# Documetentation in _documetnation isn't generated automatically. If the data
# changes, errors are found, or check() detects inconsistencies the
# documentation should be updated manually.

# Concatenate _documentation/*.R files into R/data.R
doc_files <- fs::dir_ls(
  here::here("data-raw", "_documentation"),
  regexp = "\\.R$"
)

# Read all documentation files
doc_content <- doc_files |>
  purrr::map(readLines) |>
  purrr::map(\(x) c(x, "")) |>
  unlist()

# Write to R/data.R
writeLines(
  doc_content,
  here::here("R", "data.R")
)
