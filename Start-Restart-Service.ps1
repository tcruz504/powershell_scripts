$service = Get-service "Tomcat5" -ComputerName Ncert-cert

If ($service -eq "Stopped") {

Start-Service | Write-Host "Service was Started" -ForegroundColor Yellow

   }

#Else {

#If ($service -eq "Running") {

#Restart-Service -Force | Write-Host "Service has been Restarted" -ForegroundColor Yellow

#}

 # }