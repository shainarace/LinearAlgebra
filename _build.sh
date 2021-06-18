#!/bin/sh

set -ev

Rscript -e "bookdown::render_book('index.Rmd', 'bookdown::gitbook', clean=F)"
Rscript -e "bookdown::render_book('index.Rmd', 'bookdown::gitbook')"

Rscript -e "bookdown::render_book('index.Rmd', 'bookdown::pdf_book')"
Rscript -e "bookdown::render_book('index.Rmd', 'bookdown::epub_book')"
Rscript -e "bookdown::render_book('index.Rmd', 'bookdown::html_book')"


browseURL('docs/index.html')
