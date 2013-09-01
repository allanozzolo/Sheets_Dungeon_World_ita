classi=src/classi
tmp=/tmp
pdf=pdf

all: bardo paladino strega stregone druido



bardo:
	ls $(classi)/Bardo-*.svg | xargs -i1 basename 1 .svg | xargs -i1 inkscape $(classi)/1.svg -d 200 --export-pdf $(tmp)/1.pdf
	gs -o $(pdf)/Bardo.pdf -sDEVICE=pdfwrite -dPDFSETTINGS=/prepress `ls $(tmp)/Bardo-*.pdf | sort`

paladino:
	ls $(classi)/Paladino-*.svg | xargs -i1 basename 1 .svg | xargs -i1 inkscape $(classi)/1.svg -d 200 --export-pdf $(tmp)/1.pdf
	gs -o $(pdf)/Paladino.pdf -sDEVICE=pdfwrite -dPDFSETTINGS=/prepress `ls $(tmp)/Paladino-*.pdf | sort`

strega:
	ls $(classi)/Strega-*.svg | xargs -i1 basename 1 .svg | xargs -i1 inkscape $(classi)/1.svg -d 200 --export-pdf $(tmp)/1.pdf
	gs -o $(pdf)/Strega.pdf -sDEVICE=pdfwrite -dPDFSETTINGS=/prepress `ls $(tmp)/Strega-*.pdf | sort`

stregone:
	ls $(classi)/Stregone-*.svg | xargs -i1 basename 1 .svg | xargs -i1 inkscape $(classi)/1.svg -d 200 --export-pdf $(tmp)/1.pdf
	gs -o $(pdf)/Stregone.pdf -sDEVICE=pdfwrite -dPDFSETTINGS=/prepress `ls $(tmp)/Stregone-*.pdf | sort`

druido:
	ls $(classi)/Druido-*.svg | xargs -i1 basename 1 .svg | xargs -i1 inkscape $(classi)/1.svg -d 200 --export-pdf $(tmp)/1.pdf
	gs -o $(pdf)/Druido.pdf -sDEVICE=pdfwrite -dPDFSETTINGS=/prepress `ls $(tmp)/Druido-*.pdf | sort`
