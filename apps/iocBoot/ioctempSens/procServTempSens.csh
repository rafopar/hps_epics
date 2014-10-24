#!/bin/csh



procServ -c "/usr/local/clas12/release/0.2/epics/apps/iocBoot/ioctempSens" -n "IOC for Calorimetry Temp Sensors" -i ^D^C 250XX  ./st.cmd &;
