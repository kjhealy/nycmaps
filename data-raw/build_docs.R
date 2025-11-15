## Build roxygen2 documentation for each dataset created by data-raw/build_data.R
## Put the roxygen2 skeletons in data-raw/_documentation, one .R file per object

# Get all data objects from data/ directory
data_objects <- fs::dir_ls("data", glob = "*.rda") |>
  fs::path_file() |>
  fs::path_ext_remove()


# Generate documentation skeletons for each object
purrr::walk(data_objects, \(obj) {
  doc_file <- here::here("data-raw/_documentation", paste0(obj, ".R"))

  # Skip if documentation file already exists
  if (!fs::file_exists(doc_file)) {
    # Load the data object
    load(here::here("data", paste0(obj, ".rda")))

    # Generate skeleton
    kjhmisc::insert_data_skeleton(
      obj,
      path = doc_file
    )
  }
})

# Concatenate all documentation files into R/data.R
doc_files <- fs::dir_ls("data-raw/_documentation", glob = "*.R")

# Read and combine all documentation
doc_content <- purrr::map_chr(doc_files, readr::read_file)

# Write to R/data.R
readr::write_file(
  paste(doc_content, collapse = "\n\n"),
  here::here("R", "data.R")
)
