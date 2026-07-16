# BSI
# Bare Soil Index, useful when soil must be detected in relationship with vegetation
# How to use (an example)
# park2025 <- rast("p25.tif")
# bsi2025 <- sic.ndmi(park2025, 5, 4)
# plot(bsi2025)


sic.bsi <- function(x, swir, red, nir, blue) {

  if (!inherits(x, "SpatRaster")) {
    stop("Input image should be a SpatRaster object.")
  }

  if (!is.numeric(swir) || !is.numeric(red)) || !is.numeric(nir)) || !is.numeric(blue)) {
    stop("SWIR, RED, NIR and BLUE must be numeric.")
  }

  bsi <- ((x[[5]] + x[[3]]) - (x[[4]] + x[[1]])) /
         ((x[[5]] + x[[3]]) + (x[[4]] + x[[1]]))

  return(bsi)
}
