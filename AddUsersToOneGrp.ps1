$DistroGroup = Get-ADGroup -Identity "RTSLA-MET-Team-Members"
$usrs = Get-Content -Path "C:\Users.txt"

Foreach ($usr in $usrs) {Add-ADGroupMember -Identity $DistroGroup -Members $usr}

