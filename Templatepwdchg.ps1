$Computer = "MyComputer"
$Account = [ADSI]"WinNT://$Computer/Administrator,user"
$Password = "xYz$5678"
$Account.SetPassword($Password)
$Account.SetInfo()