INC += framework/include
SRC += framework/main.cpp

OBJDIR = Build
TARGET = $(OBJDIR)/main

OBJECTS += $(addprefix $(OBJDIR)/,$(addsuffix .o, $(SRC)))
CPPFLAGS += $(addprefix -I,$(INC))

$(TARGET).exe: $(OBJECTS)
	@$(MKDIR) -p $(dir $@)
	$(CP) $(OBJECTS) --output $(basename $@).exe

$(OBJDIR)/%.cpp.o: %.cpp
	@$(MKDIR) -p $(dir $@)
	$(CP) -c $(CPPFLAGS) $< -o $@

.PHONY: clean

all: $(TARGET).exe

clean:
	rm -rf $(OBJDIR)

CC = gcc
CP = g++
MKDIR = mkdir