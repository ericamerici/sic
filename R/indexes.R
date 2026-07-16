sic.ndmi <- function(x, SWIR, NIR) {
  
  if(!inherits(x, "SpatRaster")) {
    stop("Input image should be a SpatRaster object.")
  }
  
  if(!inherits(nir, "numeric") && !inherits(red, "numeric")) {
    stop("NIR and red layers should be indicated with a number")
  } 

  ndmi = (x[[nir]] - x[[swir1]]) /
    (x[[nir]] + x[[swir1]])

}

return (dvi)
