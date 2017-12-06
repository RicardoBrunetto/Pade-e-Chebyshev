SHELL=cmd.exe
all: execute
	@echo "Sucesso!"

compile:
	@pdflatex --interaction=batchmode pade 2>NUL
	@-bibtex	pade.aux 2>NUL
	@-makeindex pade.tex 2>NUL
	@pdflatex --interaction=batchmode pade 2>NUL
	@pdflatex --interaction=batchmode pade 2>NUL

clear: compile
	@rm -f *.synctex.gz
	@rm -f *.aux
	@rm -f *.log
	@rm -f *.out
	@rm -f *.blg
	@rm -f *.bbl
	@rm -f *.ind
	@rm -f *.ilg

clear_W: compile
	@del *.synctex.gz 2>NUL
	@del *.aux 2>NUL
	@del *.log 2>NUL
	@del *.out 2>NUL
	@del *.blg 2>NUL
	@del *.bbl 2>NUL
	@del *.ind 2>NUL
	@del *.ilg 2>NUL

execute: clear_W
	@start "" pade.pdf
