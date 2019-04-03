.PHONY: all

CC = xelatex
BUILD_DIR = build
RESUME_DIR = resume
RESUME_SRCS = $(shell find $(RESUME_DIR) -name '*.tex')
COVERLETTERS = $(shell find -name '*.nogit.tex' -printf '%f\n')

all: $(foreach x, coverletter resume $(patsubst %.nogit.tex, %.nogit, $(COVERLETTERS)), $(BUILD_DIR)/$x.pdf)

$(BUILD_DIR)/resume.pdf: resume.tex $(RESUME_SRCS)
	mkdir -p $(BUILD_DIR)
	$(CC) -output-directory=$(BUILD_DIR) $<

$(BUILD_DIR)/coverletter.pdf: coverletter.tex
	mkdir -p $(BUILD_DIR)
	$(CC) -output-directory=$(BUILD_DIR) $<
	echo $(patsubst %.nogit.tex, %, $(COVERLETTERS))

$(BUILD_DIR)/%.nogit.pdf: %.nogit.tex
	mkdir -p $(BUILD_DIR)
	$(CC) -output-directory=$(BUILD_DIR) $<

clean:
	rm -rf $(BUILD_DIR)/*
