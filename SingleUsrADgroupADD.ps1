$usr = Get-ADUser -Filter {name -like "*shafeeq*"}
$DistroGroup = Get-ADGroup -Identity "RTS-SLM Weekly"

Add-ADGroupMember -Identity $DistroGroup -Members $usr
