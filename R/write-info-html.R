write_info_html <- function (code, ref) {
  
  info_html <- tagList(
    p('Project: ',
      a(href = ref, 'link')),
    p('Code: ',
      a(href = code, 'script'))
  )
  html_string <- stringr::str_remove_all(toString(info_html), "\n")
}