Get-Content C:\Srvs.txt | % {
  gwmi Win32_UserAccount -Computer $_ -Filter "name='Administrator'" |
     Set-WmiInstance -Argument @{PasswordExpires = $true}
}