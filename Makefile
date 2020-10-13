# sane targets
DOCN = dissertation

all: doc 
doc:
	latex $(DOCN).tex
	bibtex $(DOCN)
	latex $(DOCN).tex
	makeglossaries $(DOCN)
	latex $(DOCN).tex
	latex $(DOCN).tex
	dvips  -t letter  $(DOCN).dvi -o $(DOCN).ps
	ps2pdf14 -dEmbedAllFonts#true -dSubsetFonts#true -dEPSCrop#true -dPDFSETTINGS#/prepress $(DOCN).ps
	rm -f *.aux *.dvi *.idx *.ind *.log *.toc *.bak *.blg *.bbl *.ps *.lof *.lot *.acn *.ist *.glo
clean:
	rm -f *.aux *.dvi *.idx *.ind *.log *.toc *.bak *.blg *.bbl *.pdf *.ps *.lof *.lot *.acn *.ist *.glo *.glg *.ent *.out *.lyx *.alg *.acr
