
Get-Content C:\Srvs.txt | % 

{
Get-WmiObject -Class Win32_UserAccount -ComputerName $_ -Filter "name = 'administrator'"  | Set-WmiInstance -Argument @{PasswordExpires = 1}
                
 }

