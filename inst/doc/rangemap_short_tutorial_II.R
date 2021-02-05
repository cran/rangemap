## ----setup, include = FALSE---------------------------------------------------
knitr::opts_chunk$set(collapse = TRUE, comment = "#>", echo = FALSE)

## ---- eval=FALSE, echo=TRUE---------------------------------------------------
#  help(rangemap_buffer)

## ---- eval=FALSE, echo=TRUE---------------------------------------------------
#  # getting the data
#  data("occ_p", package = "rangemap")
#  
#  # Defining parameters
#  dist <- 100000 # buffer distance in meters
#  
#  # Now we can create the species range based on buffers
#  buff_range <- rangemap_buffer(occurrences = occ_p, buffer_distance = dist)

## ---- eval=FALSE, echo=TRUE---------------------------------------------------
#  # getting the data
#  data("occ_d", package = "rangemap")
#  
#  # Defining parameters
#  level <- 0 # level of detail for administrative areas
#  adm <- "Ecuador" # Athough no record is on this country, we know it is in Ecuador
#  countries <- c("PER", "BRA", "COL", "VEN", "ECU", "GUF", "GUY", "SUR", "BOL")
#  
#  # Now we can create the species range based on administrative areas using occurrence data
#  b_range <- rangemap_boundaries(occurrences = occ_d, adm_areas = adm,
#                                 country_code = countries, boundary_level = level)

## ---- eval=FALSE, echo=TRUE---------------------------------------------------
#  # Now let's see the species range based on administrative areas using only names of areas
#  adm1 <- c("Brazil", "Ecuador", "Peru", "Bolivia", "Colombia", "Venezuela")
#  b_range1 <- rangemap_boundaries(adm_areas = adm1, country_code = countries,
#                                  boundary_level = level)

## ---- eval=FALSE, echo=TRUE---------------------------------------------------
#  # Defining parameters
#  dist <- 100000
#  hull <- "concave"
#  
#  # Now we can create the species range based on administrative areas
#  hull_range <- rangemap_hull(occurrences = occ_d, hull_type = hull,
#                              buffer_distance = dist)

## ---- eval=FALSE, echo=TRUE---------------------------------------------------
#  par(mar = rep(0, 4)) # optional, reduces the margins of the figure
#  rangemap_plot(buff_range, add_occurrences = TRUE, northarrow = TRUE,
#               range_color = NA)
#  rangemap_plot(buff_range)
#  rangemap_plot(b_range)
#  rangemap_plot(hull_range, legend = TRUE, legend_position = "bottomleft")

## -----------------------------------------------------------------------------
knitr::include_graphics(c("vignette_img/VII_records.png", "vignette_img/VII_pe.png",
                          "vignette_img/VII_dc.png", "vignette_img/VII_dcv.png"))

