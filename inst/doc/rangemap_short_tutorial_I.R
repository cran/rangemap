## ----setup, include = FALSE---------------------------------------------------
knitr::opts_chunk$set(collapse = TRUE, comment = "#>", echo = FALSE)

## ---- eval=FALSE, echo=TRUE---------------------------------------------------
#  # Getting the data
#  data("occ_f", package = "rangemap")
#  
#  # checking which countries may be involved in the analysis
#  par(mar = rep(0, 4)) # optional, reduces the margins of the figure
#  rangemap_explore(occurrences = occ_f)
#  rangemap_explore(occurrences = occ_f, show_countries = TRUE)

## -----------------------------------------------------------------------------
knitr::include_graphics(c("vignette_img/VI_cu1.png", "vignette_img/VI_cu2.png"))

## ---- eval=FALSE, echo=TRUE---------------------------------------------------
#  help(rangemap_boundaries)

## ---- eval=FALSE, echo=TRUE---------------------------------------------------
#  # Getting the data
#  data("occ_d", package = "rangemap")
#  
#  # preparing arguments
#  level <- 0 # Level of detail for administrative areas
#  adm <- "Ecuador" # Although no record is on this country, we know it is in Ecuador
#  countries <- c("PER", "BRA", "COL", "VEN", "ECU", "GUF", "GUY", "SUR", "BOL") # ISO names of countries involved in the analysis
#  

## ---- eval=FALSE, echo=TRUE---------------------------------------------------
#  b_range <- rangemap_boundaries(occurrences = occ_d, adm_areas = adm,
#                                 country_code = countries, boundary_level = level)
#  

## ---- eval=FALSE, echo=TRUE---------------------------------------------------
#  save <- TRUE # to save the results
#  name <- "test" # name of the results
#  
#  b_range <- rangemap_boundaries(occurrences = occ_d, adm_areas = adm,
#                                 country_code = countries, boundary_level = level,
#                                 save_shp = save, name = name)

## ---- eval=FALSE, echo=TRUE---------------------------------------------------
#  help(rangemap_plot)

## ---- eval=FALSE, echo=TRUE---------------------------------------------------
#  # arguments for the species range figure
#  extent <- TRUE
#  occ <- TRUE
#  legend <- TRUE
#  
#  # creating the species range figure
#  par(mar = rep(0, 4))
#  rangemap_plot(b_range, add_EOO = extent, add_occurrences = occ,
#                legend = legend)

## -----------------------------------------------------------------------------
knitr::include_graphics("vignette_img/VI_dc1.png")

## ---- eval=FALSE, echo=TRUE---------------------------------------------------
#  extent <- TRUE # adds the extent of occurrence of the species to the figure
#  occ <- TRUE # adds the occurrence records of the species to the figure
#  legend <- TRUE # adds a legend to the figure
#  leg_pos <- "topright" # position of the legend in the figure
#  north <- TRUE # adds a north arrow to the figure
#  n_pos <- "bottomleft" # position of the north arrow

## ---- eval=FALSE, echo=TRUE---------------------------------------------------
#  par(mar = rep(0, 4), cex = 0.8)
#  rangemap_plot(b_range, add_EOO = extent, add_occurrences = occ,
#               legend = legend, legend_position = leg_pos,
#               northarrow = north, northarrow_position = n_pos)

## -----------------------------------------------------------------------------
knitr::include_graphics("vignette_img/VI_dc2.png")

