$user = "Administrator"
$servers = get-content -path C:\Server.txt
$pass = "%Cr0wd3d!"
foreach ($server in $servers){
$account = [ADSI]"WinNT://$server/$user,user"
$account.SetPassword($pass)
#$user.SetInfo()
echo "Changing Password for $server ......"
}

