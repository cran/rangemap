% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/helpers.R
\name{aoo}
\alias{aoo}
\title{Area of occupancy of a species as defined by the IUCN}
\usage{
aoo(occ_pr, species)
}
\arguments{
\item{occ_pr}{SpatialPointsDataFrame of occurrence records. Projection must be
one that allows safe calculation of areas (e.g., Lambert Azimuthal Equal Area).}

\item{species}{(character) scientific name of the species.}
}
\value{
A list containing a SpatialPolygonsDataFrame of the area of occupancy, and
a vector with the areas in km2 of the spatial polygons resulted.
}
\description{
Area of occupancy of a species as defined by the IUCN
}
\examples{
# data
data("occ_p", package = "rangemap")
occ <- unique(occ_p)
WGS84 <- sp::CRS("+init=epsg:4326")
occ_sp <- sp::SpatialPointsDataFrame(coords = occ[, 2:3], data = occ,
                                     proj4string = WGS84)

LAEA <- LAEA_projection(spatial_object = occ_sp)
occ_pr <- sp::spTransform(occ_sp, LAEA)

sp <- as.character(occ[1, 1])

# AOO
aoo_pe <- aoo(occ_pr = occ_pr, species = sp)
}
