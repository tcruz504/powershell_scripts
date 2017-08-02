
Get-content C:\Srvs.txt | % {

$user = gwmi Win32_UserAccount -Computer $_ -Filter "name= 'Administrator'"
$user.PasswordExpires = $true
$user.Put()

}
