all : docs/index.html

docs/index.html : index.Rmd
	mkdir -p docs/img
	cp img/gestiocasoscovid19.png docs/img
	R -e 'rmarkdown::render("index.Rmd", "xaringan::moon_reader", "index.html", "docs")'
