all: clean solutions

clean:
	@ #check if solutions/ exists
	@if [ ! -d out ]; then \
		mkdir out;           \
	fi
	rm -f out/*
	@ #check if solutions/ exists
	@if [ ! -d aux ]; then \
		mkdir aux;           \
	fi
	rm -f aux/*

debug: clean
	pdflatex --shell-escape --enable-write18 Assignments.tex
	pdflatex --shell-escape --enable-write18 Assignments.tex
	pdflatex --shell-escape --enable-write18 Assignments.tex

	#@mv *.table aux
	#@mv *.gnuplot aux
	@mv *.pdf out
	@mv *.out out
	@mv *.log out
	@mv *.aux aux

solutions: clean solutions1 solutions2
	pdflatex -interaction=batchmode --shell-escape --enable-write18 Assignments.tex

	#@mv *.table aux
	#@mv *.gnuplot aux
	@mv *.pdf out
	@mv *.out out
	@mv *.log out
	@mv *.aux aux

solutions1:
	pdflatex -interaction=batchmode --shell-escape --enable-write18 Assignments.tex

solutions2:
	pdflatex -interaction=batchmode --shell-escape --enable-write18 Assignments.tex
