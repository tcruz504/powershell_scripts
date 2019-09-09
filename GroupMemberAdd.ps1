foreach ($group in (Get-ADUser -Identity "sourceUser" -Properties MemberOf).MemberOf) 
{   Add-ADGroupMember -Identity $group -Members "destinationUserr"; }
