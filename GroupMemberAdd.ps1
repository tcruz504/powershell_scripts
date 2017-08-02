foreach ($group in (Get-ADUser -Identity "Michael.McCormick" -Properties MemberOf).MemberOf) 
{   Add-ADGroupMember -Identity $group -Members "Christine.Loveless"; }