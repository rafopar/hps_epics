TOOLDIRS := procServMgr

all:
	-@for dir in $(TOOLDIRS); do cd $$dir && make all ; done

install: all
	-@for dir in $(TOOLDIRS); do cd $$dir && make install ; done

clean:
	-@for dir in $(TOOLDIRS); do cd $$dir && make clean ; done

uninstall:
	-@for dir in $(TOOLDIRS); do cd $$dir && make uninstall ; done

distclean: clean
