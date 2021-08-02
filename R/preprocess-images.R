# Processing images



source("R/create-thumbnail.R")

png_paths <- fs::dir_ls("images/gallery/large")

images <- purrr::map_chr(png_paths, ~basename(.x))

create_thumbnail(images[[1]], "28%")
create_thumbnail(images[[2]], "18%")
create_thumbnail(images[[3]], "5%")
create_thumbnail(images[[4]], "5%")
create_thumbnail(images[[5]], "18%")
create_thumbnail(images[[6]], "13%")
create_thumbnail(images[[7]], "6%")


