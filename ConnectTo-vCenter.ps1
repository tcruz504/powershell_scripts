#Connect to vCenter servers
$cred = Get-credential
$server = ""

Connect-viserver -server $server -protocol https -Credential $cred
