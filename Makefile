jesus.pdf: jesus.tex
	xelatex jesus
	xelatex jesus
	makeindex jesus
	#
	# Get Luke 10:25 to come after Luke 1:5.
	# https://tex.stackexchange.com/questions/581025/indexing-in-partial-decimal-order-luke-1025-after-luke-15
	# Bibleref package would probably have accomplished this more simply.
	perl -i -pe 's/(\d+)/$$1+1000/ge' jesus.adx
	makeindex jesus.adx -o jesus.and
	perl -i -pe 's/(\d\d\d\d)/$$1-1000/ge' jesus.and
	#
	xelatex jesus

book: jesus.pdf
	pdfbook2 jesus.pdf
	mv jesus-book.pdf booklet.pdf
	# creates booklet.pdf
	# Instructions for printing: https://tex.stackexchange.com/a/70115/6853
	# Briefly: (1) Print even pages. (2) Flip about an axis "out of the board." (3) Print odd pages.

