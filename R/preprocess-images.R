# Processing images

library(dplyr)

source("R/create-thumbnail.R")

png_paths <- fs::dir_ls("images/gallery/large")

purrr::walk(png_paths, function(x) {
  image <- basename(x)
  create_thumbnail(image)
})
  

