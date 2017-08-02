$serverlist = Get-Content -Path C:\Srvs.txt
$userName = "Administrator"
$newpwd1 = Read-Host -Prompt "Enter new password" -AsSecureString
$newpwd2 = Read-Host -Prompt "Re-type new password" -AsSecureString
$path = Test-Path "\\$servername\admin$"


If ([Runtime.InteropServices.Marshal]::PtrToStringAuto([Runtime.InteropServices.Marshal]::SecureStringToBSTR($newpwd1)) -eq [Runtime.InteropServices.Marshal]::PtrToStringAuto([Runtime.InteropServices.Marshal]::SecureStringToBSTR($newpwd2))) {

    # OK, you can type the same thing twice; let's proceeed!
    
   Foreach ($servername in $serverlist) {
   
   if ($path -eq $true) {
      
        Try {
    
        $pwdText = [Runtime.InteropServices.Marshal]::PtrToStringAuto([Runtime.InteropServices.Marshal]::SecureStringToBSTR($newpwd1))

        $userObj = [ADSI]"WinNT://$servername/$userName,user"
        $userObj.SetPassword($pwdText)
        $userObj.SetInfo()
    }
    Catch {
        $_.Exception
        Write-Host "Password change failed."
    }
  }
}

 
 }   
Else {

    
    Write-Host "New password mismatch. Password change aborted."

     }
     
                                       
     
                                            
