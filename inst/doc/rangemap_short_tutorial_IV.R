## ----setup, include=FALSE-----------------------------------------------------
knitr::opts_chunk$set(collapse = TRUE, comment = "#>", echo = FALSE)

## ---- eval=FALSE, echo=TRUE---------------------------------------------------
#  # Getting the data
#  data("occ_d", package = "rangemap")
#  
#  # Defining parameters
#  dist <- 100000 # buffer distance in meters
#  
#  # Now we can create the species range based on buffers
#  buff_range <- rangemap_buffer(occurrences = occ_d, buffer_distance = dist)

## ---- eval=FALSE, echo=TRUE---------------------------------------------------
#  # Defining parameters
#  dist <- 100000
#  hull <- "convex"
#  
#  # Now we can create the species range based on administrative areas
#  hull_range <- rangemap_hull(occurrences = occ_d, hull_type = hull,
#                              buffer_distance = dist)

## ---- eval=FALSE, echo=TRUE---------------------------------------------------
#  # Defining parameters
#  dist <- 200000
#  hull <- "concave"
#  
#  # Now we can create the species range based on administrative areas
#  hull_range1 <- rangemap_hull(occurrences = occ_d, hull_type = hull,
#                               buffer_distance = dist)

## ---- fig.show='hold', warning=FALSE, eval=FALSE, echo=TRUE-------------------
#  par(mar = rep(0, 4)) # optional, reduces the margins of the figure
#  rangemap_plot(buff_range, add_occurrences = TRUE,
#               northarrow = TRUE, range_color = NA)
#  rangemap_plot(buff_range)
#  rangemap_plot(hull_range)
#  rangemap_plot(hull_range1, legend = TRUE, legend_position = "bottomleft")

## -----------------------------------------------------------------------------
knitr::include_graphics(c("vignette_img/VIV_dc1.png", "vignette_img/VIV_dc2.png",
                          "vignette_img/VIV_dc3.png", "vignette_img/VIV_dc4.png"))

## ---- eval=FALSE, echo=TRUE---------------------------------------------------
#  # Adding parameters
#  vars <- raster::stack(system.file("extdata", "variables.tif",
#                                    package = "rangemap"))
#  names(vars) <- c("bio5", "bio6", "bio13", "bio14")
#  
#  # Plotting
#  par(mar = rep(0, 4))
#  ranges_emaps(buff_range, hull_range, hull_range1, variables = vars)

## ---- fig.width=7, fig.height=7-----------------------------------------------
knitr::include_graphics("vignette_img/VIV_ranges_g.png")

## ---- eval=FALSE, echo=TRUE---------------------------------------------------
#  # For avoiding too much complexity we will use only two of the previous ranges
#  # comparison
#  ranges_espace(buff_range, hull_range, variables = vars, do_pca = TRUE,
#                add_occurrences = TRUE)
#  

## ---- fig.width=7, fig.height=7-----------------------------------------------
knitr::include_graphics("vignette_img/VIV_ranges_e1.png")

## ---- eval=FALSE, echo=TRUE---------------------------------------------------
#  ranges_espace(buff_range, hull_range, hull_range1, variables = vars, do_pca = TRUE,
#                range_colors = c("gray1", "blue", "red"), alpha = 0.4)

## ---- fig.width=7, fig.height=7-----------------------------------------------
knitr::include_graphics("vignette_img/VIV_ranges_e2.png")

