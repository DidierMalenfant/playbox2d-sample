# SPDX-FileCopyrightText: 2021-present Dustin Mierau
#
# SPDX-License-Identifier: MIT

HEAP_SIZE      = 8388208
STACK_SIZE     = 61800

PRODUCT = playbox2d-sample.pdx

# Locate the SDK
SDK = $(shell egrep '^\s*SDKRoot' ~/.Playdate/config | head -n 1 | cut -c9-)

GAME=$(notdir $(CURDIR))
SIM=Playdate Simulator

# Include sub makefiles
include toyboxes/toyboxes.mk
include extension/extension.mk

include $(SDK)/C_API/buildsupport/common.mk

# Make sure we compile a universal binary for M1 and Intel macs
DYLIB_FLAGS+=-arch x86_64 -arch arm64
