save_restoreSet_status_prefix("${IOC}:")
save_restoreSet_Debug(0)

save_restoreSet_IncompleteSetsOk(1)
save_restoreSet_DatedBackupFiles(1)

save_restoreSet_NumSeqFiles(3)
save_restoreSet_SeqPeriodInSeconds(30)

set_savefile_path("${TOP}/iocBoot/${IOC}/sav")
set_requestfile_path("${TOP}/iocBoot/${IOC}")
set_requestfile_path("${TOP}", "req")

# created from makeAutosaveFiles()
set_pass0_restoreFile("info_positions.sav")
set_pass1_restoreFile("info_settings.sav")

set_pass1_restoreFile("tempSens_settings.sav")

