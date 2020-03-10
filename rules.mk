# linux
$(TARGET).so: $(OBJECTS)
	@$(MKDIR) -p $(dir $@)
	$(CPP) -shared $(OBJECTS) --output $(basename $@).so

# windows
$(TARGET).dll: $(OBJECTS)
	@$(MKDIR) -p $(dir $@)
	$(CPP) -shared $(OBJECTS) --output $(basename $@).dll

# OS X
$(TARGET).dylib: $(OBJECTS)
	@$(MKDIR) -p $(dir $@)
	$(CPP) -dynamiclib $(OBJECTS) --output $(basename $@).dylib

$(OBJDIR)/%.cpp.o: %.cpp
	@$(MKDIR) -p $(dir $@)
	$(CPP) -c $(CPPFLAGS) -DBDLL $< -o $@