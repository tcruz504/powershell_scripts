$computers = Get-Content -Path "c:\RTSLAworkstationList.txt" | 

foreach ($_. In $computers){Restart-computer $computer -force}

