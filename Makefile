classi=src/classi
tmp=/tmp
pdf=pdf
src=src

all: varie classi
classi: strega stregone

#book:
#	ls $(src)/Book_A5/*.svg | xargs -i1 basename 1 .svg | xargs -i1 inkscape $(src)/Book_A5/1.svg -d 200 --export-pdf $(tmp)/1.pdf
#	gs -o $(pdf)/Book.pdf -sDEVICE=pdfwrite -dPDFSETTINGS=/prepress `ls $(tmp)/*.pdf | sort`
#	rm $(tmp)/*.pdf

varie:
	ls $(src)/*.svg | xargs -i1 basename 1 .svg | xargs -i1 inkscape $(src)/1.svg -d 200 --export-pdf $(pdf)/1.pdf


strega:
	ls $(classi)/Strega-*.svg | xargs -i1 basename 1 .svg | xargs -i1 inkscape $(classi)/1.svg -d 200 --export-pdf $(tmp)/1.pdf
	gs -o $(pdf)/Strega.pdf -sDEVICE=pdfwrite -dPDFSETTINGS=/prepress `ls $(tmp)/Strega-*.pdf | sort`

stregone:
	ls $(classi)/Stregone-*.svg | xargs -i1 basename 1 .svg | xargs -i1 inkscape $(classi)/1.svg -d 200 --export-pdf $(tmp)/1.pdf
	gs -o $(pdf)/Stregone.pdf -sDEVICE=pdfwrite -dPDFSETTINGS=/prepress `ls $(tmp)/Stregone-*.pdf | sort`

