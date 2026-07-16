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
