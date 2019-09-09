$user = "Administrator"
$servers = get-content -path C:\Srvs.txt
$pass = ""
foreach ($server in $servers)
{
if ((Test-Connection -ComputerName $server -Count 1 -Quiet) -eq $True)
{
$admin = [ADSI]"WinNT://$server/$user,user"
$admin.SetPassword($pass)
}
Else {"Server $server not available"}
}
