# Richard Wen
# rrwen.dev@gmail.com

library(bookdown)

setwd('./docs')
try(
  render_book(
    "index.Rmd",
    output_format = gitbook(),
    output_dir = "../docs")
)
setwd('../')
