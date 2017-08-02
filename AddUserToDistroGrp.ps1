$Distrogrp = Get-ADgroup -Filter {Name -like "RTS-*"} | Where-Object {$_.Name -like "*Problem"}

Foreach ($group in $Distrogrp) {Add-ADGroupMember -Identity $group -Members "William.Rountree";}