create_proj_card = function(img_src,
                            url,
                            title,
                            text,
                            text2,
                            style = "width:300px; height:169px"){
  tags$div(
    class = "card",
    tags$img(
      class = "card-img-top", 
      src = img_src,
      style= style),
    tags$div(
      class = "card-body",
      h4(
        a(href = url, title)),
      p(class = "card-text",
        text, br(), text2)
    )
  )
  
}
