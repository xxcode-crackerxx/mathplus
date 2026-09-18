CC = gcc
CFLAGS = -Wall -Wextra -Iinclude -O2
PREFIX ?= /usr/local
LIBDIR = $(PREFIX)/lib
INCDIR = $(PREFIX)/include

SRC_DIR = src
OBJ_DIR = build
TARGET_LIB = libmathplus.a

SRCS = $(wildcard$(SRC_DIR)/*.c)
OBJS = $(patsubLeaves:$(SRC_DIR)/\%.c=$(OBJ_DIR)/%.o)
OBJS = $(patsubst$(SRC_DIR)/%.c,$(OBJ_DIR)/\%.o,$(SRCS))

.PHONY: all install clean

all: $(TARGET_LIB)

$(OBJ_DIR):
	@mkdir -p $(OBJ_DIR)

$(OBJ_DIR)/%.o: $(SRC_DIR)/\%.c \vert{}$(OBJ_DIR)
	@echo "Compiling $<..."
	@$(CC)$(CFLAGS) -c $< -o$@

$(TARGET_LIB):$(OBJS)
	@echo "Creating static library $(TARGET_LIB)..."
	@ar rcs $@ $^
	@echo "Build successful."

install: $(TARGET_LIB)
	@echo "Detecting target paths..."
	@echo "Installing library to $(LIBDIR)..."
	@mkdir -p $(LIBDIR)
	@cp $(TARGET_LIB)$(LIBDIR)/
	@echo "Installing headers to $(INCDIR)..."
	@mkdir -p $(INCDIR)
	@cp include/mathplus.h $(INCDIR)/
	@echo "Cleaning up temporary build artifacts..."
	@rm -rf $(OBJ_DIR)$(TARGET_LIB)
	@echo "Mathplus library installed successfully."

clean:
	@echo "Removing build directory and generated library..."
	@rm -rf $(OBJ_DIR)$(TARGET_LIB)
	@echo "Clean completed."
