$user = "Administrator"
$servers = get-content -path C:\Srvs.txt
$status = "Failed to change Password"
$newpwd1 = Read-Host -Prompt "Enter new password" -AsSecureString
$newpwd2 = Read-Host -Prompt "Re-type new password" -AsSecureString

#input password to be changed

If ([Runtime.InteropServices.Marshal]::PtrToStringAuto([Runtime.InteropServices.Marshal]::SecureStringToBSTR($newpwd1)) -eq [Runtime.InteropServices.Marshal]::PtrToStringAuto([Runtime.InteropServices.Marshal]::SecureStringToBSTR($newpwd2))) {

 $servers | ForEach-Object {

    Try {

$pwdText = [Runtime.InteropServices.Marshal]::PtrToStringAuto([Runtime.InteropServices.Marshal]::SecureStringToBSTR($newpwd1))
$userObj = [ADSI]"WinNT://$_./$user,user"
$userObj.SetPassword($pwdText)
$userObj.SetInfo()

echo "Changing Password for $_ ......."

Start-Sleep 5

"......................................................."
".............................................................DONE!!!"
    }

    Catch {
        $_.Exception
        Write-Host $status "for $_ " 

      }
     }
}

Else {

       Write-Host "New password mismatch. Password change aborted."

     }
                                  
#end



 

 

