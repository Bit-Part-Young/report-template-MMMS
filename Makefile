# Makefile for LaTeX compilation by yangsl

# Optimized by Shend Sept.25 2023
# supports compiling all .tex files in the directory at once

# Set the name of the main tex file (without the .tex extension)
TEXFILE = $(wildcard *.tex)
MAIN = $(patsubst %.tex,%,${TEXFILE})

# Set the LaTeX compiler
LATEX_COMPILER = xelatex

# Set the target file (PDF output)
TARGET = $(patsubst %.tex,%.pdf,${TEXFILE})

.PHONY: all distclean clean

# Define the default target
all: $(TARGET)

# Define the target to build the PDF output
$(TARGET): %.pdf : %.tex
	$(LATEX_COMPILER) $^

# Clean up auxiliary files
clean:
	$(foreach name, ${MAIN},                                        \
		rm -f ${name}.aux ${name}.bbl ${name}.bcf ${name}.blg       \
		${name}.fdb_latexmk ${name}.fls ${name}.log ${name}.out     \
		${name}.run.xml ${name}.synctex.gz ${name}.toc ${name}.xdv; \
	)

# Build PDF and clean
auto: all clean

# Define the target to clean up generated pdf files
distclean: 
	rm -f ${TARGET}
