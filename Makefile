all: en es

es: template_es.tex
	mkdir -p tmp
	pdflatex -output-directory tmp template_es.tex > /dev/null
	mv tmp/template_es.pdf cv_es.pdf

en: template_en.tex
	mkdir -p tmp
	pdflatex -output-directory tmp template_en.tex > /dev/null
	mv tmp/template_en.pdf cv_en.pdf

clean: 
	rm -fr tmp