.PHONY: all

CC = xelatex
BUILD_DIR = ./build
RESUME_DIR = ./resume
RESUME_SRCS = $(shell find $(RESUME_DIR) -name '*.tex')

all: $(foreach x, coverletter resume, $x.pdf)

resume.pdf: resume.tex $(RESUME_SRCS)
	$(CC) -output-directory=$(BUILD_DIR) $<

coverletter.pdf: coverletter.tex
	$(CC) -output-directory=$(BUILD_DIR) $<

clean:
	rm -rf $(BUILD_DIR)/*
