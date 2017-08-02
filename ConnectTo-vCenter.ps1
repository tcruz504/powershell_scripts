#Connect to vCenter servers
$cred = Get-credential
$server = "gro-vc01", "rts-vcenter1"

Connect-viserver -server gro-vc01 -protocol https -Credential $cred