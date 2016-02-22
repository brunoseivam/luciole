#!../../bin/linux-x86_64/luciole

< envPaths

cd $(TOP)

epicsEnvSet("STREAM_PROTOCOL_PATH", "lucioleApp/Db")
epicsEnvSet("PORT", "LUCI")
epicsEnvSet("P", "TEST:")

dbLoadDatabase("dbd/luciole.dbd",0,0)
luciole_registerRecordDeviceDriver(pdbbase)

drvAsynIPPortConfigure("$(PORT)", "10.17.0.215:4528")
#drvAsynSerialPortConfigure("$(PORT)", "/dev/ttyS0")
#asynSetOption("$(PORT)", 0, "baud", 115200)

#asynSetTraceMask("$(PORT)", -1, 0x9)
#asynSetTraceIOMask("$(PORT)", -1, 0x4)

#dbLoadRecords("db/luciole.db", "P=$(P),PORT=$(PORT),SCAN=Passive")
dbLoadRecords("db/luciole.db", "P=$(P),PORT=$(PORT),SCAN=1 second")

iocInit()
