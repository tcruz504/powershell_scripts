# This will check for the Citrix Desktop Service and restart it

$logDir = "C:\CitrixLogs\Logs.txt"
$Service = Get-Service -DisplayName "Citrix Desktop Service"
$date = Get-Date

If ($Service.Status -eq "Running", "Stopped") {Restart-Service} 
 
 Write-output "Restarted Citrix Desktop Service on $date" | Out-File -Append $logDir
