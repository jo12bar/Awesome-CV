.PHONY: all

CC = xelatex
BUILD_DIR = build
RESUME_DIR = resume
RESUME_SRCS = $(shell find $(RESUME_DIR) -name '*.tex')

all: $(foreach x, coverletter resume, $(BUILD_DIR)/$x.pdf)

$(BUILD_DIR)/resume.pdf: resume.tex $(RESUME_SRCS)
	mkdir -p $(BUILD_DIR)
	$(CC) -output-directory=$(BUILD_DIR) $<

$(BUILD_DIR)/coverletter.pdf: coverletter.tex
	mkdir -p $(BUILD_DIR)
	$(CC) -output-directory=$(BUILD_DIR) $<

clean:
	rm -rf $(BUILD_DIR)/*
