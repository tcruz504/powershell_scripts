$user = "Administrator"
$servers = get-content -path C:\SrvsDTINC.txt
$status = "Failed to change Password"
$newpwd1 = Read-Host -Prompt "Enter new password" -AsSecureString
$newpwd2 = Read-Host -Prompt "Re-type new password" -AsSecureString

If ([Runtime.InteropServices.Marshal]::PtrToStringAuto([Runtime.InteropServices.Marshal]::SecureStringToBSTR($newpwd1)) -eq [Runtime.InteropServices.Marshal]::PtrToStringAuto([Runtime.InteropServices.Marshal]::SecureStringToBSTR($newpwd2))) {

 $servers | ForEach-Object {

    Try {

#$cred

$pwdText = [Runtime.InteropServices.Marshal]::PtrToStringAuto([Runtime.InteropServices.Marshal]::SecureStringToBSTR($newpwd1))
$userObj = [ADSI]"WinNT://$_./$user,user"
$userObj.SetPassword($pwdText)
$userObj.SetInfo()

echo "Changing Password for $_. ......"
    }

    Catch {
        $_.Exception
        Write-Host $status 

      }
     }
}

Else {

       Write-Host "New password mismatch. Password change aborted."

     }
                                  
#Start next block?!!



 

 

