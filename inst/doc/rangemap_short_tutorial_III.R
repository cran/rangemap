## ----setup, include = FALSE---------------------------------------------------
knitr::opts_chunk$set(collapse = TRUE, comment = "#>", echo = FALSE)

## ---- eval=FALSE, echo=TRUE---------------------------------------------------
#  # Data
#  data("occ_f", package = "rangemap")
#  
#  # Defining parameters
#  CU <- simple_wmap("simple", regions = "Cuba")
#  
#  # Now we can create the species range based a tsa
#  # Remember, this is a statistical approach, it may take some time depending on the area
#  
#  tsa_range <- rangemap_tsa(occurrences = occ_f, region_of_interest = CU,
#                            cell_size = 2)

## ---- eval=FALSE, echo=TRUE---------------------------------------------------
#  par(mar = rep(0, 4)) # optional, reduces the margins of the figure
#  rangemap_plot(tsa_range, add_occurrences = TRUE, polygons = CU,
#               range_color = NA)
#  rangemap_plot(tsa_range, northarrow = TRUE,  polygons = CU,
#               legend = TRUE, legend_position = "bottomright")

## -----------------------------------------------------------------------------
knitr::include_graphics(c("vignette_img/VIII_pf1.png", "vignette_img/VIII_pf2.png"))

## ---- eval=FALSE, echo=TRUE---------------------------------------------------
#  # parameters
#  sp_mod <- raster::raster(list.files(system.file("extdata", package = "rangemap"),
#                                      pattern = "sp_model", full.names = TRUE))
#  data("occ_train", package = "rangemap")
#  
#  thresh <- 1 # threshold 1 to be used
#  thresh1 <- 5 # threshold 2 to be used
#  thresh2 <- 10 # threshold 3 to be used
#  save <- TRUE
#  name <- "test"
#  
#  # Now we can create the species range from the models
#  enm_range <- rangemap_enm(occurrences = occ_train, model_output  = sp_mod,
#                            threshold_omission = thresh)
#  enm_range1 <- rangemap_enm(occurrences = occ_train, model_output  = sp_mod,
#                             threshold_omission = thresh1)
#  enm_range2 <- rangemap_enm(occurrences = occ_train, model_output  = sp_mod,
#                             threshold_omission = thresh2)

## ---- eval=FALSE, echo=TRUE---------------------------------------------------
#  par(mar = rep(0, 4))
#  rangemap_plot(enm_range, add_occurrences = TRUE, range_color = NA)
#  rangemap_plot(enm_range)
#  rangemap_plot(enm_range1)
#  rangemap_plot(enm_range2)

## -----------------------------------------------------------------------------
knitr::include_graphics(c("vignette_img/VIII_aa1.png", "vignette_img/VIII_aa2.png",
                          "vignette_img/VIII_aa3.png", "vignette_img/VIII_aa4.png"))

