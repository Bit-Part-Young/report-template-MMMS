# Makefile for LaTeX compilation

# Set the name of the main tex file (without the .tex extension)
MAIN = report-template-sjtu

# Set the LaTeX compiler
LATEX_COMPILER = xelatex

# Set any additional flags or options for the compiler
LATEX_FLAGS = -interaction=nonstopmode

# Set the target file (PDF output)
TARGET = $(MAIN).pdf

# Define the default target
all: $(TARGET)

# Define the target to build the PDF output
$(TARGET): $(MAIN).tex
	$(LATEX_COMPILER) $(LATEX_FLAGS) $(MAIN).tex
	rm -f $(MAIN).aux $(MAIN).log $(MAIN).out $(MAIN).toc

# Define the target to clean up auxiliary files
# clean:
# 	rm -f $(TARGET) $(MAIN).aux $(MAIN).log $(MAIN).out $(MAIN).toc

# Define the target to clean up all generated files
distclean: 
# distclean: clean
	rm -f $(MAIN).pdf

# Phony targets (targets that are not real files)
.PHONY: all distclean
# .PHONY: all clean distclean
