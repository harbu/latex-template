show: document.pdf
	chromium document.pdf

document.pdf: document.tex
	pdflatex document

toc:
	pdflatex document
	pdflatex document

bib:
	pdflatex document
	biber document
	pdflatex document
	pdflatex document

words: document.pdf
	pdftotext document.pdf - | wc -w
clean:
	rm -f *.aux *.log *.toc *.blg *.bbl *~ *-eps-converted-to.pdf document.pdf *.bcf *.run.xml
