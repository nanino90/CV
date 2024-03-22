CV=cv
REFERENCE=reference

REF_OUTPUT=utrilla_ignacio_reference
CV_OUTPUT=utrilla_ignacio_cv

$(REFERENCE).pdf : $(REFERENCE)/$(REFERENCE).tex
	pdflatex -output-directory=$(REFERENCE) reference/reference.tex 
	mv $(REFERENCE)/$(REFERENCE).pdf $(REF_OUTPUT).pdf

$(CV).pdf : $(CV)/$(CV).tex 
	pdflatex -output-directory=$(CV) cv/cv.tex 
	mv $(CV)/$(CV).pdf $(CV_OUTPUT).pdf
clean:
	@-rm $(REFERENCE)/*.aux $(REFERENCE)/*.pdf $(REFERENCE)/*.log $(REFERENCE)/*.out 2>/dev/null  
	@-rm $(CV)/*.aux $(CV)/*.pdf $(CV)/*.log $(CV)/*.out 2>/dev/null  
