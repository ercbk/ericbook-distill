# Processing images

library(dplyr); library(htmltools)

source("R/create-thumbnail.R")
source("R/write-info-html.R")



##########################
# Create thumbnails ----
##########################

png_paths <- fs::dir_ls("images/gallery/large")

images <- purrr::map_chr(png_paths, ~basename(.x))

# against cardinal rule of programming but easier to rearrange thumbnails this way
create_thumbnail(images[[1]], "28%")
create_thumbnail(images[[2]], "18%")
create_thumbnail(images[[3]], "5%")
create_thumbnail(images[[4]], "5%")
create_thumbnail(images[[5]], "18%")
create_thumbnail(images[[6]], "13%")
create_thumbnail(images[[7]], "6%")



############################################################
# Write HTML for code and project links inside viewer ----
############################################################

# code and project urls for the gallery chart images
info_tbl <- tibble(
  code_url = c("https://repo.com",
               "https://github.com/ercbk/Indiana-COVIDcast-Dashboard/blob/master/index.Rmd",
               "https://github.com/ercbk/Indiana-COVID-19-Tracker/blob/master/R/static-charts/pos-policy-line.R",
               "https://github.com/ercbk/Indiana-COVID-19-Tracker/blob/master/R/static-charts/excess-death-col.R",
               "https://github.com/ercbk/Indiana-COVID-19-Website/blob/gh-pages/hospitals.Rmd",
               "https://github.com/ercbk/Indiana-COVID-19-Website/blob/gh-pages/demographics.Rmd",
               "https://repo.com"),
  proj_url = c("https://article.com",
              "https://ercbk.github.io/Indiana-COVIDcast-Dashboard/#dashboard",
              "https://ercbk.github.io/Indiana-COVID-19-Website/static.html#Daily_Positive_Cases_vs_Cumulative_Cases_",
              "https://ercbk.github.io/Indiana-COVID-19-Website/static.html#Excess_Deaths",
              "https://ercbk.github.io/Indiana-COVID-19-Website/hospitals.html",
              "https://ercbk.github.io/Indiana-COVID-19-Website/demographics.html",
              "https://article.com")
)


sub_html_ls <- purrr::map2(info_tbl$code_url, info_tbl$proj_url, ~write_info_html(.x, .y))

readr::write_rds(sub_html_ls, "data/sub-html-ls.rds")


