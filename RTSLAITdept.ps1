﻿#*###########################################################
#*                                                   
#* This Script will isntall VPN, Vontu and TrackIT on Your PC
#*  
#*###########################################################

# This will install GotoAssist

Start-Process "\\source\adminshare\IT Dept\IT Programs and Files\GOtoassist\GoToAssistHelpAlert.exe" /passive -Wait
"****Done****"

# Anyconnect VPN client

Start-Process "\\source1\adminshare\IT Dept\IT Programs and Files\VPNClient\anyconnect-win-3.1.04059-pre-deploy-k9.msi" /passive -Wait
"****Done****"

# This will install Putty

Start-Process "\\source\adminshare\IT Dept\IT Programs and Files\Putty\putty.exe" /passive -Wait
"****Done****"

# This will install TrackIT

Start-Process "\\source\adminshare\IT Dept\IT Programs and Files\TrackITclient\TechnicianClient\en\setup.exe" /passive -Wait
"****Done****"
