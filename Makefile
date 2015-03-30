all: clean solutions

clean:
	@ #check if solutions/ exists
	@if [ ! -d out ]; then \
		mkdir out;           \
	fi
	rm -f out/*

solutions: clean solutions1 solutions2
	pdflatex --output-directory=out Assignments.tex

solutions1:
	pdflatex --output-directory=out Assignments.tex

solutions2:
	pdflatex --output-directory=out Assignments.tex
