TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE

#=============================
# Build the IOC support library

#LIBRARY_IOC_DEFAULT += -nil-
LIBRARY_IOC_vxWorks += scaler_cSupport
# xxxRecord.h will be created from xxxRecord.dbd
##DBDINC += xxxRecord
# Install devXxxSoft.dbd into <top>/dbd
##DBD += xxxSupport.dbd
DBD += scaler_cSupport.dbd
scaler_cSupport_DBD += base.dbd
scaler_cSupport_DBD += asyn.dbd

#scaler_cSupport_DBD += drvAsynIPPort.dbd
scaler_cSupport_DBD += stdSupport.dbd
scaler_cSupport_DBD += calcSupport.dbd
scaler_cSupport_DBD += busySupport.dbd 
scaler_cSupport_DBD += sscanSupport.dbd 
scaler_cSupport_DBD += asSupport.dbd
scaler_cSupport_DBD += devSequencer.dbd
#scaler_cSupport_DBD += stream.dbd
#scaler_cSupport_DBD += streamSynApps.dbd
scaler_cSupport_DBD += vmeVXSupport.dbd
scaler_cSupport_DBD += std.dbd



scaler_cSupport_LIBS += $(EPICS_BASE_IOC_LIBS)


#=============================
# Build the IOC application

##PROD_IOC = scaler_c
PROD_IOC_vxWorks = scaler_c
# scaler_c.dbd will be created and installed
DBD += scaler_c.dbd

# scaler_c.dbd will be made up from these files:
scaler_c_DBD += scaler_cSupport.dbd

# scaler_c_registerRecordDeviceDriver.cpp derives from scaler_c.dbd

# Build the main IOC entry point on workstation OSs.
scaler_c_SRCS_DEFAULT += scaler_cMain.cpp

scaler_c_SRCS_vxWorks += scaler_c_registerRecordDeviceDriver.cpp

# Add support from base/src/vxWorks if needed
scaler_c_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Link in the code from the support library
scaler_c_LIBS += scaler_cSupport
scaler_c_LIBS += asyn
scaler_c_LIBS += mca
scaler_c_LIBS += calc
scaler_c_LIBS += busy
scaler_c_LIBS += sscan
scaler_c_LIBS += autosave
scaler_c_LIBS += vme
scaler_c_LIBS += std
#scaler_c_LIBS += stream streamSynApps
scaler_c_LIBS += asyn
scaler_c_LIBS += seqDev seq pv 


# NOTE: To build SNL programs, SNCSEQ must be defined
# in the <top>/configure/RELEASE file

ifneq ($(SNCSEQ),)
    # Build sncExample into scaler_cSupport
##    sncExample_SNCFLAGS += +r
##    scaler_c_DBD += sncExample.dbd
##    scaler_cSupport_SRCS += sncExample.stt
#    scaler_c_restart_SNCFLAGS += +r
    scaler_cSupport_DBD += scaler_cSNC.dbd
    scaler_cSupport_SRCS += scaler_c_restart.st
    scaler_c_SRCS += scaler_c_restart.st
    scaler_cSupport_LIBS += seq pv
##    scaler_c_LIBS += seq pv

    # Build sncProgram as a standalone program
##    PROD_HOST += sncProgram
##    sncProgram_SNCFLAGS += +m
##    sncProgram_SRCS += sncProgram.st
##    sncProgram_LIBS += seq pv
##    sncProgram_LIBS += $(EPICS_BASE_HOST_LIBS)
endif

# Finally link to the EPICS Base libraries
scaler_c_LIBS += $(EPICS_BASE_IOC_LIBS)

#=============================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

