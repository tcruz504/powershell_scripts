$City = Read-Host 'City'
$ou = "OU=Servers,OU=$City,DC=dt,DC=inc"

$Servers = Get-ADComputer -Filter '*' -SearchBase $ou

$Servers | Foreach { $_.DNSHostName } | Out-File c:\ServerList.txt 

$user = "Administrator"
$servers = get-content -path C:\Servers.txt
$pass = "%Cr0wd3d"
foreach ($server in $servers){
$user = [ADSI]"WinNT://$server/$user,user"
$user.SetPassword($pass)
$user.SetInfo()
echo "Changing Password for $server ......"
}