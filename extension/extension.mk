# SPDX-FileCopyrightText: 2021-present Dustin Mierau
#
# SPDX-License-Identifier: MIT

# -- Find out more about where this file is relative to the Makefile including it
RELATIVE_FILE_PATH := $(lastword $(MAKEFILE_LIST))
RELATIVE_DIR := $(subst /$(notdir $(RELATIVE_FILE_PATH)),,$(RELATIVE_FILE_PATH))
RELATIVE_PARENT_DIR := $(subst /$(notdir $(RELATIVE_DIR)),,$(RELATIVE_DIR))

# -- Add us as an include search folder only if it's not already there
uniq = $(if $1,$(firstword $1) $(call uniq,$(filter-out $(firstword $1),$1)))
UINCDIR := $(call uniq, $(UINCDIR) $(RELATIVE_PARENT_DIR))

# -- Add our source files
SRC := $(SRC) \
       $(RELATIVE_DIR)/main.c
