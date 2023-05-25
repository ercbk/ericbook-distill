write_caption_subhtml <- function (code, ref) {
  
  info_html <- tagList(
    tags$div(
      class = "lightGallery-captions",
      h5('Project: ',
         a(href = ref, 'link')),
      p('Code: ',
        a(href = code, 'script'))
    )
  )
  html_string <- stringr::str_remove_all(toString(info_html), "\n")
}


