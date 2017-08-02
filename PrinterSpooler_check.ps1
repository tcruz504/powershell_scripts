# Check Print Spooler

 
$msg = "UNKNOWN - This application failed to run. Check to make sure Printer Spooler service is up!"
$err = 3
$msg1 = "is being restarted...."
$service = Get-service -name "Spooler"

If ($service.status -ne "Running"){
$err = 2
$msg = "Service is NOT Running"
Start-Service $service 
Write-Host ""$service.DisplayName" $msg1"}

Else {
$err = 0
$msg = "Service is Running"
Write-Host "Printer Spooler is Running!"

        }

$Host.SetShouldExit($err)
Write-Host $msg 