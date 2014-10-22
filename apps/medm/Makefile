ADL_FILES_WITH_PATH = $(shell find .. -name "*.adl" -type f)
GIF_FILES_WITH_PATH = $(shell find .. -name "*.gif" -type f)
SOFT_LINK_COMMAND = $(foreach file_with_path, \
	$(ADL_FILES_WITH_PATH) $(GIF_FILES_WITH_PATH), \
	ln -s $(file_with_path) $(notdir $(file_with_path)) ; )

MEDM_HTTP_COMMAND = $(foreach file_with_path, \
	$(ADL_FILES_WITH_PATH) $(GIF_FILES_WITH_PATH), \
	cp $(file_with_path) /u/group/clas/www/clasweb/html/medm ; )

all: links hbptarg

links:
	$(RM) *.adl
	$(RM) *.gif
	$(SOFT_LINK_COMMAND)

hbptarg:
	ln -s . hbptarg

http:
	$(RM) /u/group/clas/www/clasweb/html/medm/*.adl
	$(RM) /u/group/clas/www/clasweb/html/medm/*.gif
	$(MEDM_HTTP_COMMAND)
