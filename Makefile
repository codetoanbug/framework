INC += framework
SRC += framework/main.cpp

OBJDIR = Build
TARGET = $(OBJDIR)/test

OBJECTS += $(addprefix $(OBJDIR)/,$(addsuffix .o, $(SRC)))
CPPFLAGS += $(addprefix -I,$(INC))

.PHONY: clean

all: so dll dylib
so:		$(TARGET).so
dll: 	$(TARGET).dll
dylib:	$(TARGET).dylib

clean:
	rm -rf $(OBJDIR)

include rules.mk

CC = gcc
CPP = g++
MKDIR = mkdir