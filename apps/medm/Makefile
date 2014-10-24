ADL_FILES_WITH_PATH = $(shell find .. -name "*.adl" -type f)
GIF_FILES_WITH_PATH = $(shell find .. -name "*.gif" -type f)
SOFT_LINK_COMMAND = $(foreach file_with_path, \
	$(ADL_FILES_WITH_PATH) $(GIF_FILES_WITH_PATH), \
	ln -s $(file_with_path) $(notdir $(file_with_path)) ; )

MEDM_HTTP_COMMAND = $(foreach file_with_path, \
	$(ADL_FILES_WITH_PATH) $(GIF_FILES_WITH_PATH), \
	cp $(file_with_path) /u/group/clas/www/clasweb/html/medm)

all: clean
	$(SOFT_LINK_COMMAND)
	ln -s . hbptarg

http:
	$(RM) /u/group/clas/www/clasweb/html/medm/*.adl
	$(RM) /u/group/clas/www/clasweb/html/medm/*.gif
	$(MEDM_HTTP_COMMAND)

clean:
	$(RM) *.adl
	$(RM) *.gif
	$(RM) hbptarg

distclean: clean
install:   all
rebuild:   clean install
realclean: clean

# fake out other EPICS make commands
.PHONY: archclean buildInstall cvsclean help realuninstall uninstall
