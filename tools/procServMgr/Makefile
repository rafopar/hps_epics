INSTALL_BIN := /usr/local/bin

PROGFILES   += procServMgr
PROGFILES   += softioc_console

.PHONY: all clean


install:
	@for file in $(PROGFILES); do \
		echo "Installing $(INSTALL_BIN)/$$file" ; \
		ln -s $$file $(INSTALL_BIN)/$$file ; \
	done

uninstall:
	@for file in $(PROGFILES); do $(RM) $(INSTALL_BIN)/$$file; done
