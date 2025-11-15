## Zip Codes

#' Simple Features collection of NYC Zip Codes
#'
#' Polygons of NYC zip codes along with 2019 ACS population estimate.
#'
#' @format ## `nyc_zip_sf`
#' A simple feature collection with 212 rows and 4 columns:
#' \describe{
#'   \item{zip}{Zip code (actually ZTCA)}
#'   \item{zip_name}{ZCTA5 name}
#'   \item{pop}{2019 ACS population estimage}
#'   \item{geometry}{Multipolydon for zip code area}
#' }
#' @details
#' Geographies and population estimates from US Census Bureau, ACS 5-year estimates (2019).
#' List of zip codes described in `nyc_zips` table elsewhere in this package.
#'
#' @author Kieran Healy
#' @source See details.
"nyc_zip_sf"

#' NYC Zip Codes
#'
#' Table of New York City zip codes.
#'
#' @format ## `nyc_zips`
#' A data frame with 255 rows and 7 columns:
#' \describe{
#'   \item{zip}{Zip Code}
#'   \item{boro_name}{Borough name}
#'   \item{city_name}{Nominal city (USPS designation)}
#'   \item{county_name}{County as 'Countyname County'}
#'   \item{long_county_name}{County as 'Countyname County, New York'}
#'   \item{short_county_name}{County as 'County'}
#'   \item{po_name}{Nominal post office (USPS designation)}
#' }
#' @details
#' Full USPS Zip Code list from <https://postalpro.usps.com/ZIP_Locale_Detail>
#' Initial regional subsetting via <https://worldpopulationreview.com/zips/new-york>
#'
#' @author Kieran Healy
#' @source See details.
"nyc_zips"

### Boro boundaries

#' New York City borough boundaries
#'
#' Clipped to shoreline. EPSG:2263, NAD83 / New York Long Island (ftUS). An sf object.
#'
#' @format ## `nyc_boros_sf`
#' A data frame with 5 rows and 5 columns:
#' \describe{
#'   \item{boro_code}{Numeric borough code}
#'   \item{boro_name}{Borough Name}
#'   \item{shape_leng}{Shape length}
#'   \item{shape_area}{Shape area}
#'   \item{geometry}{Multipolygon}
#' }
#' @details Borough boundaries for NYC, clipped to shoreline. Produced by NYC Planning Department. Release: 25C, August 2025.
#' @author Kieran Healy
#' @source <https://www.nyc.gov/content/planning/pages/resources#datasets>
"nyc_boros_sf"


#' New York City borough names
#'
#' Borough and county names and code.
#'
#' @format ## `nyc_boros`
#' A data frame with 5 rows and 5 columns:
#' \describe{
#'   \item{boro_code}{City borough code. (Numeric)}
#'   \item{boro_name}{Borough name}
#'   \item{county_name}{County_Name County}
#'   \item{short_county_name}{County_Name}
#'   \item{long_county_name}{County_Name County, New York}
#' }
#' @details DETAILS
#' @author Kieran Healy
#' @source <SOURCE_URL>
"nyc_boros"


#' New York City and locale shorelines
#'
#' Shoreline with parts of NJ and areas of Nassau County NY. sf object.
#'
#' @format ## `nyc_shoclip_sf`
#' A data frame with 7,426 rows and 16 columns:
#' \describe{
#'   \item{SOURCE_ID}{DESCRIPTION}
#'   \item{SRC_DATE}{DESCRIPTION}
#'   \item{HOR_ACC}{DESCRIPTION}
#'   \item{INFORM}{DESCRIPTION}
#'   \item{ATTRIBUTE}{DESCRIPTION}
#'   \item{VER_DATE}{DESCRIPTION}
#'   \item{SRC_RESOLU}{DESCRIPTION}
#'   \item{DATA_SOURC}{DESCRIPTION}
#'   \item{EX_METH}{DESCRIPTION}
#'   \item{EXT_METH}{DESCRIPTION}
#'   \item{DAT_SET_CR}{DESCRIPTION}
#'   \item{SRC_CITA}{DESCRIPTION}
#'   \item{FIPS_ALPHA}{DESCRIPTION}
#'   \item{NOAA_Regio}{DESCRIPTION}
#'   \item{Shape_Leng}{DESCRIPTION}
#'   \item{geometry}{DESCRIPTION}
#' }
#' @details Manually adapted from NYC with part of Jersey shoreline and eastern coastline outside of NYC boundaries. Edited from CUSP sheet.
#' @author Kieran Healy
#' @source <https://nsde.ngs.noaa.gov>
"nyc_shoclip_sf"

#' New York City Community District Tabulation Areas 2020
#'
#' Simple feature collection of NYC Community District Tabulation Areas (CDTAs) from 2020.
#' EPSG:2263, NAD83 / New York Long Island (ftUS).
#'
#' @format ## `nyc_cdtas_2020_sf`
#' A simple feature collection with 71 rows and 9 columns:
#' \describe{
#'   \item{boro_code}{Borough code (1=Manhattan, 2=Bronx, 3=Brooklyn, 4=Queens, 5=Staten Island)}
#'   \item{boro_name}{Borough name}
#'   \item{county_fips}{Federal unique ID for counties (005=Bronx, 047=Kings, 061=New York, 081=Queens, 085=Richmond)}
#'   \item{cdta2020}{Unique alphanumeric identifier representing Community District Tabulation Areas (CDTA)}
#'   \item{cdta_name}{Full name of CDTA}
#'   \item{cdta_type}{Differentiates between CDTAs which represent a community district (CD) or a joint interest area}
#'   \item{shape_leng}{Shape length}
#'   \item{shape_area}{Shape area}
#'   \item{geometry}{Multipolygon}
#' }
#' @details
#' Community District Tabulation Areas (CDTAs) are approximations of NYC community
#' districts created from census tracts. They represent areas outside of community
#' districts as joint interest areas. Produced by NYC Planning Department.
#' Release: 25C, August 2025.
#'
#' @author Kieran Healy
#' @source <https://www.nyc.gov/content/planning/pages/resources#datasets>
"nyc_cdtas_2020_sf"

#' NYC Census Block Relationships 2020
#'
#' Relationship table linking 2020 census blocks to census tracts, Neighborhood
#' Tabulation Areas (NTAs), and Community District Tabulation Areas (CDTAs).
#'
#' @format ## `nyc_census_block_relationships_2020_df`
#' A data frame with 37984 rows and 17 columns:
#' \describe{
#'   \item{geoid}{Unique identifier for 2020 census blocks (15-digit FIPS code: 3-digit county + 6-digit census tract + 4-digit block)}
#'   \item{county_fips}{Federal unique ID for counties (005=Bronx, 047=Kings, 061=New York, 081=Queens, 085=Richmond)}
#'   \item{boro_code}{Borough code (1=Manhattan, 2=Bronx, 3=Brooklyn, 4=Queens, 5=Staten Island)}
#'   \item{boro_name}{Borough name}
#'   \item{bctcb2020}{Unique identifier for 2020 census blocks (BoroCode + census tract + census block)}
#'   \item{cb2020}{2020 census block number}
#'   \item{cb_label}{Census block identifier with label}
#'   \item{boro_ct2020}{Unique identifier for 2020 census tracts (BoroCode + CT2020)}
#'   \item{ct2020}{2020 census tract number (6-digit)}
#'   \item{ct_label}{Census tract identifier}
#'   \item{nta_code}{Unique alphanumeric identifier for each Neighborhood Tabulation Area (6 characters)}
#'   \item{nta_type}{NTA type differentiating residential and non-residential geographies}
#'   \item{nta_name}{Full NTA name}
#'   \item{nta_abbrev}{Shortened version of NTA name}
#'   \item{cdta_code}{Unique alphanumeric identifier for Community District Tabulation Areas (4 characters)}
#'   \item{cdta_type}{Differentiates between CDTAs representing a community district (CD) or joint interest area}
#'   \item{cdta_name}{Full name of CDTA}
#' }
#' @details
#' This table provides the hierarchical relationships between census blocks (the
#' smallest census geography) and larger geographic units including census tracts,
#' NTAs, and CDTAs. Produced by NYC Planning Department from 2020 Census data.
#'
#' @author Kieran Healy
#' @source <https://www.nyc.gov/content/planning/pages/resources#datasets>
"nyc_census_block_relationships_2020_df"

#' NYC Census Tract Relationships 2020
#'
#' Relationship table linking 2020 census tracts to Neighborhood Tabulation Areas
#' (NTAs) and Community District Tabulation Areas (CDTAs).
#'
#' @format ## `nyc_census_tract_relationships_2020_df`
#' A data frame with 2327 rows and 14 columns:
#' \describe{
#'   \item{geoid}{Unique identifier for 2020 census tracts (11-digit FIPS code: 3-digit county + 6-digit census tract)}
#'   \item{county_fips}{Federal unique ID for counties (005=Bronx, 047=Kings, 061=New York, 081=Queens, 085=Richmond)}
#'   \item{boro_code}{Borough code (1=Manhattan, 2=Bronx, 3=Brooklyn, 4=Queens, 5=Staten Island)}
#'   \item{boro_name}{Borough name}
#'   \item{boro_ct2020}{Unique identifier for 2020 census tracts (BoroCode + CT2020)}
#'   \item{ct2020}{2020 census tract number (6-digit)}
#'   \item{ct_label}{Census tract identifier}
#'   \item{nta_code}{Unique alphanumeric identifier for each Neighborhood Tabulation Area (6 characters)}
#'   \item{nta_type}{NTA type differentiating residential and non-residential geographies}
#'   \item{nta_name}{Full NTA name}
#'   \item{nta_abbrev}{Shortened version of NTA name}
#'   \item{cdta_code}{Unique alphanumeric identifier for Community District Tabulation Areas (4 characters)}
#'   \item{cdta_type}{Differentiates between CDTAs representing a community district (CD) or joint interest area}
#'   \item{cdta_name}{Full name of CDTA}
#' }
#' @details
#' This table provides the relationships between census tracts and larger
#' geographic aggregations including NTAs and CDTAs. Produced by NYC Planning
#' Department from 2020 Census data.
#'
#' @author Kieran Healy
#' @source <https://www.nyc.gov/content/planning/pages/resources#datasets>
"nyc_census_tract_relationships_2020_df"

#' New York City Census Tracts 2000
#'
#' Simple feature collection of NYC Census Tracts from 2000.
#' EPSG:2263, NAD83 / New York Long Island (ftUS).
#'
#' @format ## `nyc_census_tracts_2000_sf`
#' A simple feature collection with 2216 rows and 12 columns:
#' \describe{
#'   \item{ct_label}{Census tract identifier}
#'   \item{boro_code}{Borough code as character (1=Manhattan, 2=Bronx, 3=Brooklyn, 4=Queens, 5=Staten Island)}
#'   \item{boro_name}{Borough name}
#'   \item{ct2000}{2000 census tract number (6-digit)}
#'   \item{boro_ct2000}{Unique identifier for 2000 census tracts (BoroCode + CT2000)}
#'   \item{cd_eligibil}{Community District eligibility (E=Eligible, I=Ineligible)}
#'   \item{nta_code}{Unique alphanumeric identifier for each Neighborhood Tabulation Area}
#'   \item{ntan_ame}{Neighborhood Tabulation Area name}
#'   \item{puma}{Public Use Microdata Area identifier}
#'   \item{shape_leng}{Shape length}
#'   \item{shape_area}{Shape area}
#'   \item{geometry}{Multipolygon}
#' }
#' @details
#' Census tracts are small, relatively permanent statistical subdivisions of a
#' county. Produced by NYC Planning Department. Release: 25C, August 2025.
#'
#' @author Kieran Healy
#' @source <https://www.nyc.gov/content/planning/pages/resources#datasets>
"nyc_census_tracts_2000_sf"

#' New York City Census Tracts 2010
#'
#' Simple feature collection of NYC Census Tracts from 2010.
#' EPSG:2263, NAD83 / New York Long Island (ftUS).
#'
#' @format ## `nyc_census_tracts_2010_sf`
#' A simple feature collection with 2165 rows and 12 columns:
#' \describe{
#'   \item{ct_label}{Census tract identifier}
#'   \item{boro_code}{Borough code as character (1=Manhattan, 2=Bronx, 3=Brooklyn, 4=Queens, 5=Staten Island)}
#'   \item{boro_name}{Borough name}
#'   \item{ct2010}{2010 census tract number (6-digit)}
#'   \item{boro_ct2010}{Unique identifier for 2010 census tracts (BoroCode + CT2010)}
#'   \item{cd_eligibil}{Community District eligibility (E=Eligible, I=Ineligible)}
#'   \item{nta_code}{Unique alphanumeric identifier for each Neighborhood Tabulation Area}
#'   \item{nta_name}{Neighborhood Tabulation Area name}
#'   \item{puma}{Public Use Microdata Area identifier}
#'   \item{shape_leng}{Shape length}
#'   \item{shape_area}{Shape area}
#'   \item{geometry}{Multipolygon}
#' }
#' @details
#' Census tracts are small, relatively permanent statistical subdivisions of a
#' county. Produced by NYC Planning Department. Release: 25C, August 2025.
#'
#' @author Kieran Healy
#' @source <https://www.nyc.gov/content/planning/pages/resources#datasets>
"nyc_census_tracts_2010_sf"

#' New York City Census Tracts 2020
#'
#' Simple feature collection of NYC Census Tracts from 2020.
#' EPSG:2263, NAD83 / New York Long Island (ftUS).
#'
#' @format ## `nyc_census_tracts_2020_sf`
#' A simple feature collection with 2325 rows and 15 columns:
#' \describe{
#'   \item{ct_label}{Census tract identifier}
#'   \item{boro_code}{Borough code as character (1=Manhattan, 2=Bronx, 3=Brooklyn, 4=Queens, 5=Staten Island)}
#'   \item{boro_name}{Borough name}
#'   \item{ct2020}{2020 census tract number (6-digit)}
#'   \item{boro_ct2020}{Unique identifier for 2020 census tracts (BoroCode + CT2020)}
#'   \item{cd_eligibil}{Community District eligibility (E=Eligible, I=Ineligible)}
#'   \item{nta_name}{Full Neighborhood Tabulation Area name}
#'   \item{nta2020}{Unique alphanumeric identifier for each 2020 Neighborhood Tabulation Area}
#'   \item{cdta2020}{Unique alphanumeric identifier representing Community District Tabulation Areas (CDTA)}
#'   \item{cdtaname}{Full name of CDTA}
#'   \item{geoid}{Unique identifier for 2020 census tracts (11-digit FIPS code)}
#'   \item{puma}{Public Use Microdata Area identifier}
#'   \item{shape_leng}{Shape length}
#'   \item{shape_area}{Shape area}
#'   \item{geometry}{Multipolygon}
#' }
#' @details
#' Census tracts are small, relatively permanent statistical subdivisions of a
#' county. Produced by NYC Planning Department. Release: 25C, August 2025.
#'
#' @author Kieran Healy
#' @source <https://www.nyc.gov/content/planning/pages/resources#datasets>
"nyc_census_tracts_2020_sf"

#' New York City Council Districts
#'
#' Simple feature collection of NYC City Council Districts.
#' EPSG:2263, NAD83 / New York Long Island (ftUS).
#'
#' @format ## `nyc_city_council_districts_sf`
#' A simple feature collection with 51 rows and 4 columns:
#' \describe{
#'   \item{coun_dist}{City Council district number}
#'   \item{shape_leng}{Shape length}
#'   \item{shape_area}{Shape area}
#'   \item{geometry}{Multipolygon}
#' }
#' @details
#' Boundaries of NYC City Council Districts. Produced by NYC Planning Department.
#' Release: 25C, August 2025.
#'
#' @author Kieran Healy
#' @source <https://www.nyc.gov/content/planning/pages/resources#datasets>
"nyc_city_council_districts_sf"

#' New York City Congressional Districts
#'
#' Simple feature collection of NYC Congressional Districts.
#' EPSG:2263, NAD83 / New York Long Island (ftUS).
#'
#' @format ## `nyc_congressional_districts_sf`
#' A simple feature collection with 13 rows and 4 columns:
#' \describe{
#'   \item{cong_dist}{Congressional district number}
#'   \item{shape_leng}{Shape length}
#'   \item{shape_area}{Shape area}
#'   \item{geometry}{Multipolygon}
#' }
#' @details
#' Boundaries of NYC Congressional Districts. Produced by NYC Planning Department.
#' Release: 25C, August 2025.
#'
#' @author Kieran Healy
#' @source <https://www.nyc.gov/content/planning/pages/resources#datasets>
"nyc_congressional_districts_sf"

#' NYC Census Tract to City Council District Relationships 2023
#'
#' Relationship table linking 2020 census tracts to 2023 City Council Districts.
#'
#' @format ## `nyc_ct_ccd_relationships_2023_df`
#' A data frame with 2327 rows and 8 columns:
#' \describe{
#'   \item{geoid}{Unique identifier for 2020 census tracts (11-digit FIPS code: 3-digit county + 6-digit census tract)}
#'   \item{county_fips}{Federal unique ID for counties (005=Bronx, 047=Kings, 061=New York, 081=Queens, 085=Richmond)}
#'   \item{boro_code}{Borough code (1=Manhattan, 2=Bronx, 3=Brooklyn, 4=Queens, 5=Staten Island)}
#'   \item{boro_name}{Borough name}
#'   \item{boro_ct2020}{Unique identifier for 2020 census tracts (BoroCode + CT2020)}
#'   \item{ct2020}{2020 census tract number (6-digit)}
#'   \item{ct_label}{Census tract identifier}
#'   \item{ccd2023}{2023 City Council District number}
#' }
#' @details
#' This crosswalk table links census tracts to City Council Districts, allowing
#' census data to be aggregated to City Council District boundaries. Produced by
#' NYC Planning Department.
#'
#' @author Kieran Healy
#' @source <https://www.nyc.gov/content/planning/pages/resources#datasets>
"nyc_ct_ccd_relationships_2023_df"

#' NYC Census Tract Population Proportions 2010 to 2020
#'
#' Proportions of 2010 census tract populations that fall within 2020 census tract
#' boundaries. This table is useful for allocating data from 2010 census tracts
#' to 2020 census tracts.
#'
#' @format ## `nyc_ct_pop_proportion_2010_2020_df`
#' A data frame with 2416 rows and 8 columns:
#' \describe{
#'   \item{boro_code}{Borough code (1=Manhattan, 2=Bronx, 3=Brooklyn, 4=Queens, 5=Staten Island)}
#'   \item{county_fips}{Federal unique ID for counties (005=Bronx, 047=Kings, 061=New York, 081=Queens, 085=Richmond)}
#'   \item{boro_name}{Borough name}
#'   \item{bct2020}{Unique identifier for 2020 census tracts (BoroCode + CT2020)}
#'   \item{fipsct2020}{Alternate unique identifier for 2020 census tracts (CountyFIPS + CT2020)}
#'   \item{bct2010}{Unique identifier for 2010 census tracts (BoroCode + CT2010)}
#'   \item{fipsct2010}{Alternate unique identifier for 2010 census tracts (CountyFIPS + CT2010)}
#'   \item{prptn10t20}{Proportion of the 2010 census tract population that falls within 2020 census tract boundaries}
#' }
#' @details
#' When census tract boundaries change between decades, this crosswalk table allows
#' allocation of population-based statistics from one set of boundaries to another.
#' Produced by NYC Planning Department from 2020 Census data.
#'
#' @author Kieran Healy
#' @source <https://www.nyc.gov/content/planning/pages/resources#datasets>
"nyc_ct_pop_proportion_2010_2020_df"

#' New York City Election Precincts
#'
#' Simple feature collection of NYC Election Precincts.
#' EPSG:2263, NAD83 / New York Long Island (ftUS).
#'
#' @format ## `nyc_election_precincts_sf`
#' A simple feature collection with 4264 rows and 4 columns:
#' \describe{
#'   \item{elect_dist}{Election district identifier}
#'   \item{shape_leng}{Shape length}
#'   \item{shape_area}{Shape area}
#'   \item{geometry}{Multipolygon}
#' }
#' @details
#' Boundaries of NYC Election Districts (also known as Election Precincts).
#' Produced by NYC Planning Department. Release: 25C, August 2025.
#'
#' @author Kieran Healy
#' @source <https://www.nyc.gov/content/planning/pages/resources#datasets>
"nyc_election_precincts_sf"

#' New York City Fire Companies
#'
#' Simple feature collection of NYC Fire Companies.
#' EPSG:2263, NAD83 / New York Long Island (ftUS).
#'
#' @format ## `nyc_fire_companies_sf`
#' A simple feature collection with 348 rows and 7 columns:
#' \describe{
#'   \item{fire_co_type}{Fire company type (E=Engine, L=Ladder, Q=Squad)}
#'   \item{fire_co_num}{Fire company number}
#'   \item{fire_bn}{Fire battalion number}
#'   \item{fire_div}{Fire division number}
#'   \item{shape_leng}{Shape length}
#'   \item{shape_area}{Shape area}
#'   \item{geometry}{Multipolygon}
#' }
#' @details
#' Boundaries of NYC Fire Companies. Produced by NYC Planning Department.
#' Release: 25C, August 2025.
#'
#' @author Kieran Healy
#' @source <https://www.nyc.gov/content/planning/pages/resources#datasets>
"nyc_fire_companies_sf"

#' New York City Municipal Court Districts
#'
#' Simple feature collection of NYC Municipal Court Districts.
#' EPSG:2263, NAD83 / New York Long Island (ftUS).
#'
#' @format ## `nyc_municipal_court_districts_sf`
#' A simple feature collection with 28 rows and 6 columns:
#' \describe{
#'   \item{boro_code}{Borough code (1=Manhattan, 2=Bronx, 3=Brooklyn, 4=Queens, 5=Staten Island)}
#'   \item{boro_name}{Borough name}
#'   \item{muni_court}{Municipal court district identifier}
#'   \item{shape_leng}{Shape length}
#'   \item{shape_area}{Shape area}
#'   \item{geometry}{Multipolygon}
#' }
#' @details
#' Boundaries of NYC Municipal Court Districts. Produced by NYC Planning Department.
#' Release: 25C, August 2025.
#'
#' @author Kieran Healy
#' @source <https://www.nyc.gov/content/planning/pages/resources#datasets>
"nyc_municipal_court_districts_sf"

#' New York City Neighborhood Tabulation Areas 2010
#'
#' Simple feature collection of NYC Neighborhood Tabulation Areas from 2010.
#' EPSG:2263, NAD83 / New York Long Island (ftUS).
#'
#' @format ## `nyc_nta10_sf`
#' A simple feature collection with 195 rows and 8 columns:
#' \describe{
#'   \item{boro_code}{Borough code (1=Manhattan, 2=Bronx, 3=Brooklyn, 4=Queens, 5=Staten Island)}
#'   \item{boro_name}{Borough name}
#'   \item{county_fips}{Federal unique ID for counties (005=Bronx, 047=Kings, 061=New York, 081=Queens, 085=Richmond)}
#'   \item{nta_code}{Unique alphanumeric identifier for each Neighborhood Tabulation Area}
#'   \item{nta_name}{Full NTA name}
#'   \item{shape_leng}{Shape length}
#'   \item{shape_area}{Shape area}
#'   \item{geometry}{Multipolygon}
#' }
#' @details
#' Neighborhood Tabulation Areas (NTAs) are aggregations of census tracts that
#' are subsets of New York City's 55 Public Use Microdata Areas (PUMAs). Produced
#' by NYC Planning Department. Release: 25C, August 2025.
#'
#' @author Kieran Healy
#' @source <https://www.nyc.gov/content/planning/pages/resources#datasets>
"nyc_nta10_sf"

#' New York City Neighborhood Tabulation Areas 2020
#'
#' Simple feature collection of NYC Neighborhood Tabulation Areas from 2020.
#' EPSG:2263, NAD83 / New York Long Island (ftUS).
#'
#' @format ## `nyc_nta20_sf`
#' A simple feature collection with 262 rows and 12 columns:
#' \describe{
#'   \item{boro_code}{Borough code (1=Manhattan, 2=Bronx, 3=Brooklyn, 4=Queens, 5=Staten Island)}
#'   \item{boro_name}{Borough name}
#'   \item{county_fips}{Federal unique ID for counties (005=Bronx, 047=Kings, 061=New York, 081=Queens, 085=Richmond)}
#'   \item{nta2020}{Unique alphanumeric identifier for each 2020 Neighborhood Tabulation Area}
#'   \item{nta_name}{Full NTA name}
#'   \item{nta_abbrev}{Shortened version of NTA name}
#'   \item{nta_type}{The NTA type differentiates between residential and various non-residential geographies}
#'   \item{cdta2020}{Unique alphanumeric identifier representing Community District Tabulation Areas (CDTA)}
#'   \item{cdta_name}{Full name of CDTA}
#'   \item{shape_leng}{Shape length}
#'   \item{shape_area}{Shape area}
#'   \item{geometry}{Multipolygon}
#' }
#' @details
#' Neighborhood Tabulation Areas (NTAs) are aggregations of census tracts that
#' are subsets of New York City's 55 Public Use Microdata Areas (PUMAs). Produced
#' by NYC Planning Department. Release: 25C, August 2025.
#'
#' @author Kieran Healy
#' @source <https://www.nyc.gov/content/planning/pages/resources#datasets>
"nyc_nta20_sf"

#' New York City Police Precincts
#'
#' Simple feature collection of NYC Police Precincts.
#' EPSG:2263, NAD83 / New York Long Island (ftUS).
#'
#' @format ## `nyc_police_precincts_sf`
#' A simple feature collection with 78 rows and 4 columns:
#' \describe{
#'   \item{precinct}{Police precinct number}
#'   \item{shape_leng}{Shape length}
#'   \item{shape_area}{Shape area}
#'   \item{geometry}{Multipolygon}
#' }
#' @details
#' Boundaries of NYC Police Precincts. Produced by NYC Planning Department.
#' Release: 25C, August 2025.
#'
#' @author Kieran Healy
#' @source <https://www.nyc.gov/content/planning/pages/resources#datasets>
"nyc_police_precincts_sf"

#' New York City Public Use Microdata Areas 2010
#'
#' Simple feature collection of NYC Public Use Microdata Areas (PUMAs) from 2010.
#' EPSG:2263, NAD83 / New York Long Island (ftUS).
#'
#' @format ## `nyc_pumas_2010_sf`
#' A simple feature collection with 55 rows and 4 columns:
#' \describe{
#'   \item{puma}{Public Use Microdata Area identifier}
#'   \item{shape_leng}{Shape length}
#'   \item{shape_area}{Shape area}
#'   \item{geometry}{Multipolygon}
#' }
#' @details
#' Public Use Microdata Areas (PUMAs) are non-overlapping, statistical geographic
#' areas that partition each state or equivalent entity into geographic areas
#' containing no fewer than 100,000 people each. Produced by NYC Planning Department.
#' Release: 25C, August 2025.
#'
#' @author Kieran Healy
#' @source <https://www.nyc.gov/content/planning/pages/resources#datasets>
"nyc_pumas_2010_sf"

#' New York City Public Use Microdata Areas 2020
#'
#' Simple feature collection of NYC Public Use Microdata Areas (PUMAs) from 2020.
#' EPSG:2263, NAD83 / New York Long Island (ftUS).
#'
#' @format ## `nyc_pumas_2020_sf`
#' A simple feature collection with 55 rows and 4 columns:
#' \describe{
#'   \item{puma}{Public Use Microdata Area identifier}
#'   \item{shape_leng}{Shape length}
#'   \item{shape_area}{Shape area}
#'   \item{geometry}{Multipolygon}
#' }
#' @details
#' Public Use Microdata Areas (PUMAs) are non-overlapping, statistical geographic
#' areas that partition each state or equivalent entity into geographic areas
#' containing no fewer than 100,000 people each. Produced by NYC Planning Department.
#' Release: 25C, August 2025.
#'
#' @author Kieran Healy
#' @source <https://www.nyc.gov/content/planning/pages/resources#datasets>
"nyc_pumas_2020_sf"

#' New York City School Districts
#'
#' Simple feature collection of NYC School Districts.
#' EPSG:2263, NAD83 / New York Long Island (ftUS).
#'
#' @format ## `nyc_school_districts_sf`
#' A simple feature collection with 33 rows and 4 columns:
#' \describe{
#'   \item{school_dist}{School district number}
#'   \item{shape_leng}{Shape length}
#'   \item{shape_area}{Shape area}
#'   \item{geometry}{Multipolygon}
#' }
#' @details
#' Boundaries of NYC School Districts. Produced by NYC Planning Department.
#' Release: 25C, August 2025.
#'
#' @author Kieran Healy
#' @source <https://www.nyc.gov/content/planning/pages/resources#datasets>
"nyc_school_districts_sf"

#' New York State Assembly Districts
#'
#' Simple feature collection of New York State Assembly Districts within NYC.
#' EPSG:2263, NAD83 / New York Long Island (ftUS).
#'
#' @format ## `nyc_state_assembly_districts_sf`
#' A simple feature collection with 65 rows and 4 columns:
#' \describe{
#'   \item{assem_dist}{State Assembly district number}
#'   \item{shape_leng}{Shape length}
#'   \item{shape_area}{Shape area}
#'   \item{geometry}{Multipolygon}
#' }
#' @details
#' Boundaries of New York State Assembly Districts within NYC. Produced by NYC
#' Planning Department. Release: 25C, August 2025.
#'
#' @author Kieran Healy
#' @source <https://www.nyc.gov/content/planning/pages/resources#datasets>
"nyc_state_assembly_districts_sf"

#' New York State Senate Districts
#'
#' Simple feature collection of New York State Senate Districts within NYC.
#' EPSG:2263, NAD83 / New York Long Island (ftUS).
#'
#' @format ## `nyc_state_senate_districts_sf`
#' A simple feature collection with 28 rows and 4 columns:
#' \describe{
#'   \item{st_sen_dist}{State Senate district number}
#'   \item{shape_leng}{Shape length}
#'   \item{shape_area}{Shape area}
#'   \item{geometry}{Multipolygon}
#' }
#' @details
#' Boundaries of New York State Senate Districts within NYC. Produced by NYC
#' Planning Department. Release: 25C, August 2025.
#'
#' @author Kieran Healy
#' @source <https://www.nyc.gov/content/planning/pages/resources#datasets>
"nyc_state_senate_districts_sf"

