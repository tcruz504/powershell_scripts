$user = "Administrator"
$pass = ""
$servers = Get-Content -path C:\Servers.txt
foreach ($server in $servers){
$newpass = [ADSI]"WinNT://$_/$user,user"
$newpass.SetPassword($pass)
$newpass.SetInfo()
echo "Changing Password for $server ......"
}

