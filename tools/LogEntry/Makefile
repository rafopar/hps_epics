INSTALL_BIN := /usr/local/bin

#PROGFILES   += procServMgr
#PROGFILES   += softioc_console

#CLASSPATH	:=\
#		.\
#		lib/jlog2.jar\
#		lib/mysql-connector-java-5.1.32-bin.jar\
#		src/main/java\
#
#empty	:=
#space	:= $(empty) $(empty)
#colon   := :


#$CLASSPATH:=	$(subst $(space),$(colon),$(CLASSPATH))
CLASSPATH	:=.:lib/jlog2.jar:lib/mysql-connector-java-5.1.32-bin.jar:src/main/java


.PHONY: all clean install uninstall print


install:
	javac -cp $(CLASSPATH) src/main/java/org/jlab/AutoLogEntry/MakeLogEntry.java

uninstall:
	rm -f javac src/main/java/org/jlab/AutoLogEntry/*.class

print:
	echo $(CLASSPATH)
