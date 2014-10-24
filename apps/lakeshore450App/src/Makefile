TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE

#=============================
# Build the IOC support library

#=============================
# Build the IOC application

PROD_IOC = lakeshore450
# lakeshore450.dbd will be created and installed
DBD += lakeshore450.dbd

# lakeshore450.dbd will be made up from these files:
lakeshore450_DBD += base.dbd
lakeshore450_DBD += drvAsynSerialPort.dbd
lakeshort450_DBD += stream.dbd

# lakeshore450_registerRecordDeviceDriver.cpp derives from lakeshore450.dbd
lakeshore450_SRCS += lakeshore450_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
lakeshore450_SRCS_DEFAULT += lakeshore450Main.cpp
lakeshore450_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#lakeshore450_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Link in the code from the support library
lakeshore450_LIBS += stream
lakeshore450_LIBS += asyn

# Finally link to the EPICS Base libraries
lakeshore450_LIBS += $(EPICS_BASE_IOC_LIBS)

#=============================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

