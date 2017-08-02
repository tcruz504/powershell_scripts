$City = Read-Host 'City'
$ou = "OU=Workstations,OU=$City,DC=dt,DC=inc"

$Workstations = Get-ADComputer -Filter '*' -SearchBase $ou

$Workstations | Foreach { $_.DNSHostName } | Out-File c:\RTSLAworkstationList.txt 

