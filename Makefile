CC = gcc
CFLAGS = -Wall -Wextra -Iinclude -O2
PREFIX ?= /usr/local
LIBDIR = $(PREFIX)/lib
INCDIR = $(PREFIX)/include

SRC_DIR = src
OBJ_DIR = build
TARGET_LIB = libmathplus.a

# Recursively find all .c files in src/ and its subfolders
SRCS = $(shell find $(SRC_DIR) -name '*.c')
# Flatten object files into the build directory
OBJS = $(patsubst $(SRC_DIR)/%.c, $(OBJ_DIR)/%.o, $(SRCS))

.PHONY: all install clean

all: $(TARGET_LIB)

$(OBJ_DIR):
	@mkdir -p $(OBJ_DIR)

# Rule to compile source files into object files (handles subdirectories)
$(OBJ_DIR)/%.o: $(SRC_DIR)/%.c | $(OBJ_DIR)
	@mkdir -p $(dir $@)
	@echo "Compiling $<..."
	@$(CC) $(CFLAGS) -c $< -o $@

$(TARGET_LIB): $(OBJS)
	@echo "Creating static library $(TARGET_LIB)..."
	@ar rcs $@ $^
	@echo "Build successful."

install: $(TARGET_LIB)
	@echo "Detecting target paths..."
	@echo "Installing library to $(LIBDIR)..."
	@mkdir -p $(LIBDIR)
	@cp $(TARGET_LIB) $(LIBDIR)/
	@echo "Installing headers to $(INCDIR)..."
	@mkdir -p $(INCDIR)
	@cp include/mathplus.h $(INCDIR)/
	@echo "Running clean up..."
	@$(MAKE) clean

clean:
	@echo "Removing build directory and generated library..."
	@rm -rf $(OBJ_DIR) $(TARGET_LIB)
	@echo "Clean completed."
