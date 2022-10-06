.PHONY: html pdf

html:
	jupyter-book build book

pdf:
	jupyter-book build book --builder pdfhtml
