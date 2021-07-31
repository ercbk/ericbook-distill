
# resizes "large" image into a small thumbnail image and writes it to the thumbnails dir

create_thumbnail <- function(image) {
  
  imFile <- magick::image_read(here::here(paste0("images/gallery/large/", image)))
  imFile_resized <- magick::image_resize(imFile, "6%")
  magick::image_write(imFile_resized, here::here(paste0("images/gallery/thumbnails/thumb-", image)))
  
}