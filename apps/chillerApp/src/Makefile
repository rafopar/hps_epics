TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE

#=============================
# Build the IOC support library

LIBRARY_IOC += chillerSupport

# xxxRecord.h will be created from xxxRecord.dbd
DBDINC += xxxRecord
# Install devXxxSoft.dbd into <top>/dbd
DBD += xxxSupport.dbd

# Compile and add the code to the support library
chillerSupport_SRCS += xxxRecord.c
chillerSupport_SRCS += devXxxSoft.c

# Link locally-provided code into the support library,
# rather than directly into the IOC application.
chillerSupport_SRCS += dbSubExample.c
chillerSupport_SRCS += chillerHello.c
chillerSupport_SRCS += initTrace.c

chillerSupport_LIBS += $(EPICS_BASE_IOC_LIBS)

#=============================
# Build the IOC application

PROD_IOC = chiller
# chiller.dbd will be created and installed
DBD += chiller.dbd

# chiller.dbd will be made up from these files:
chiller_DBD += base.dbd
chiller_DBD += xxxSupport.dbd
chiller_DBD += dbSubExample.dbd
chiller_DBD += chillerHello.dbd
chiller_DBD += initTrace.dbd

# chiller_registerRecordDeviceDriver.cpp derives from chiller.dbd
chiller_SRCS += chiller_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
chiller_SRCS_DEFAULT += chillerMain.cpp
chiller_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#chiller_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Link in the code from the support library
chiller_LIBS += chillerSupport

# NOTE: To build SNL programs, SNCSEQ must be defined
# in the <top>/configure/RELEASE file

ifneq ($(SNCSEQ),)
    # Build sncExample into chillerSupport
    sncExample_SNCFLAGS += +r
    chiller_DBD += sncExample.dbd
    chillerSupport_SRCS += sncExample.stt
    chillerSupport_LIBS += seq pv
    chiller_LIBS += seq pv

    # Build sncProgram as a standalone program
    PROD_HOST += sncProgram
    sncProgram_SNCFLAGS += +m
    sncProgram_SRCS += sncProgram.st
    sncProgram_LIBS += seq pv
    sncProgram_LIBS += $(EPICS_BASE_HOST_LIBS)
endif

# Finally link to the EPICS Base libraries
chiller_LIBS += $(EPICS_BASE_IOC_LIBS)

#=============================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

