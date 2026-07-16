# NDMI 
# Normalized Difference Moist Index, useful when water must be detected in the vegetation
# How to use (an example)
# park2025 <- rast("p25.tif")
# ndmi2025 <- sic.ndmi(park2025, 5, 4)
# plot(ndmi2025)


sic.ndmi <- function(x, swir, nir) {

  if (!inherits(x, "SpatRaster")) {
    stop("Input image should be a SpatRaster object.")
  }

  if (!is.numeric(swir) || !is.numeric(nir)) {
    stop("SWIR and NIR must be numeric.")
  }

  ndmi <- (x[[nir]] - x[[swir]]) /
          (x[[nir]] + x[[swir]])

  return(ndmi)
}
