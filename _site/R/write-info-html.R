write_info_html <- function (code, ref) {
  
  info_html <- tagList(
    p('Code: ',
      a(href = code, 'script')),
    p('Project: ',
      a(href = ref, 'link'))
  )
  html_string <- stringr::str_remove_all(toString(info_html), "\n")
}