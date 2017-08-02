#Run this everyday to check the status of all Helpdesk Systems

$Helpdesk = "Met-helpdesk2", "Met-helpdesk3", "Met-helpdesk4"
$Service = "Spiceworks"
Get-Service -Name $Service -ComputerName $Helpdesk | Select Name, Displayname, Status, Machinename | format-list | Get-date | select Day, Month, Year| Out-File -FilePath c:\status.log -Append