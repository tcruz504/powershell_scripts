﻿#****************************************************************************************
#* Run this Script to install RTS-LA local Software after You SCCM/build a new PC 
#* Created by: Tomas Cruz      
#* Location: Metairie, LA  "PLEASE RUN THIS SCRIPT AFTER SCCM A MACHINE"
#****************************************************************************************

                                                                         "RTS-LA IT DEPT"

Get-ExecutionPolicy


# This will change the local Admin password

$pass = ""
$pcname = $env:COMPUTERNAME

$admin = ([adsi]"WinNT://$pcname/Administrator,user")
$admin.SetPassword($pass)
$admin.SetInfo()
Echo "Administrator Password changed!"

"*****DONE*****"
