test_that("nyc_modzcta_sf has expected structure", {
  expect_nyc_polygon_sf(nyc_modzcta_sf)
  expect_equal(nrow(nyc_modzcta_sf), 178)
  expect_setequal(
    names(nyc_modzcta_sf),
    c("modzcta", "label", "zcta_list", "pop_est", "geometry")
  )
  expect_type(nyc_modzcta_sf$modzcta, "character")
  expect_type(nyc_modzcta_sf$pop_est, "integer")
  expect_equal(anyDuplicated(nyc_modzcta_sf$modzcta), 0L)
  expect_true(all(sf::st_is_valid(nyc_modzcta_sf)))
})

test_that("nyc_zcta_modzcta_df has expected structure", {
  expect_s3_class(nyc_zcta_modzcta_df, "tbl_df")
  expect_equal(nrow(nyc_zcta_modzcta_df), 215)
  expect_named(nyc_zcta_modzcta_df, c("zcta", "modzcta"))
  expect_equal(anyDuplicated(nyc_zcta_modzcta_df$zcta), 0L)
})

test_that("nyc_zcta_modzcta_df and nyc_modzcta_sf agree", {
  expect_setequal(nyc_zcta_modzcta_df$modzcta, nyc_modzcta_sf$modzcta)

  zcta_lists <- strsplit(nyc_modzcta_sf$zcta_list, ", ", fixed = TRUE)
  listed <- data.frame(
    zcta = unlist(zcta_lists),
    modzcta = rep(nyc_modzcta_sf$modzcta, lengths(zcta_lists))
  )
  key <- \(x) paste(x$zcta, x$modzcta)
  expect_true(all(key(nyc_zcta_modzcta_df) %in% key(listed)))
})
