# ------------------------------------------------------------------------------
#   Auto-generated variables
# ------------------------------------------------------------------------------
# The following macros will basically produce lists of files (sources and objs)
# from what they found in src/ and tests/ directories.

SOURCES		+= $(shell find $(SRCDIR) \( -type f -o -type l \) -a -name *.$(SRCEXT))
OBJECTS		+= $(patsubst $(SRCDIR)/%,$(BUILDDIRSRC)/%,$(SOURCES:.$(SRCEXT)=.$(OBJEXT)))

#Pull in dependency info for *existing* .o files
-include $(OBJECTS:.$(OBJEXT)=.$(DEPEXT))



#SOURCES_TST	:= $(shell find $(TESTSDIR) -type f -name *.$(SRCEXT))
#OBJECTS_TST	:= $(patsubst $(TESTSDIR)/%,$(BUILDDIRTST)/%,$(SOURCES_TST:.$(SRCEXT)=.$(OBJEXT)))

#-include $(OBJECTS_TST:.$(OBJEXT)=.$(DEPEXT))
