jesus.pdf: jesus.tex
	xelatex jesus
	xelatex jesus

book: jesus.pdf
	pdfbook2 jesus.pdf
	mv jesus-book.pdf booklet.pdf
	# creates booklet.pdf
	# Instructions for printing: https://tex.stackexchange.com/a/70115/6853
	# Briefly: (1) Print even pages. (2) Flip about an axis "out of the board." (3) Print odd pages.

