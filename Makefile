all : README.md

README.Rmd : README.R
	R --vanilla --quiet -e "knitr::spin('$<', knit = FALSE, format = 'Rmd')"

README.md : README.Rmd
	R --vanilla --quiet -e "rmarkdown::render('$<', output_format = 'md_document')"
