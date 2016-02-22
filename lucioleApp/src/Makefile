TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application

PROD_IOC = luciole
# luciole.dbd will be created and installed
DBD += luciole.dbd

# luciole.dbd will be made up from these files:
luciole_DBD += base.dbd

# Include dbd files from all support applications:
#luciole_DBD += xxx.dbd

# Add all the support libraries needed by this IOC
#luciole_LIBS += xxx

# luciole_registerRecordDeviceDriver.cpp derives from luciole.dbd
luciole_SRCS += luciole_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
luciole_SRCS_DEFAULT += lucioleMain.cpp
luciole_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#luciole_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Finally link to the EPICS Base libraries
luciole_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

luciole_DBD += asyn.dbd
luciole_DBD += drvAsynSerialPort.dbd
luciole_DBD += drvAsynIPPort.dbd
luciole_DBD += stream.dbd

luciole_LIBS += asyn
luciole_LIBS += stream


