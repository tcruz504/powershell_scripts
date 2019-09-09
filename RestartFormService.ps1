##################################
#                                #
# Restart Form Services "Tomcat" #
#                                #
#                                #
##################################

$srv = ""
$service = Get-service -ComputerName $srv Tom*

If ($service.status -eq "Running" -and "Stopped") {Restart-Service}

Write-host "Tomcat has been Restarted" -ForegroundColor Green

