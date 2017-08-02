Get-Content 'c:\Srvs.txt' | % {
  $account = gwmi Win32_UserAccount -Computer $_ -Filter "name='Administrator'"
  $account.PasswordExpires = $true
  $account.Put()
}