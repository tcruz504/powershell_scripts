$servers = Get-Content C:\Srvs.txt 

Get-WmiObject Win32_useraccount -Filter| ForEach-Object {

$servers | ForEach-Object {Get-WmiObject Win32_UserAccount where Name='Administrator' set PasswordExpires=true}





 