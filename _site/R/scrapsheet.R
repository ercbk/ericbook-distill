

"<h4>Code - <a href='https://repo.com' >link </a></h4> <p> Article - <a href='https://article.com'>datascience post</a></p"

tags$h4('Code -',
        tags$a(href = "https://repo.com", 'link')
        )


squirrel <- tagList(
  h4('Code -',
     a(href = "https://repo.com", 'link')),
  p('Article -',
    a(href = 'https://article.com', 'datascience post'))
)

boris <- stringr::str_remove_all(toString(squirrel), "\n")
boris

moose <- tags$a(
  href = paste0("images/gallery/large/", images$images_full_size[[1]]),
  tags$img(src = paste0("images/gallery/thumbnails/", images$images_thumb[[1]]))
)
moose
as.character(moose)
