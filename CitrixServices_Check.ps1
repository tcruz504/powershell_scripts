#######################################################################
#+-------------------------------------------------------------------+#
#| Name: Citrix Services check   			   	                     |#
#| Author: Tomas Cruz					   	                         |#
#|							   	                                     |#
#|- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -|#
#| 							    	                                 |#
#| Abstract: This script checks for Citrix services necessasry for   |#
#|			 Citrix functionality				                     |#
#|- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -|#
#|							                                         |#
#|Version History:			                     		             |#					   
#|							                                         |#
#|  v1.0    2/19/2016    Initial Version		        	             |#
#|							                                         |#
#+-------------------------------------------------------------------+#
#######################################################################


$msg = "UNKNOWN - This application failed to run. Check to make sure ALL Citrix services are up!"
$err = 3
$msg1 = "is being restarted...."
$ctrxservices = Get-service cit*

Foreach ($service in $ctrxservices){

If ($service.status -ne "Running"){
$err = 2
$msg = "Service is NOT Running"
Start-Service $service 
Write-Host ""$service.DisplayName" $msg1"}

Else {
$err = 0
$msg = "Services are Running"
Write-Host "ALL services are UP and Running!"

        }
}

$Host.SetShouldExit($err)
Write-Host $msg 




