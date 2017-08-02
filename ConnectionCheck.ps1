#######################################################################
#+-------------------------------------------------------------------+#
#| Name: LA ERT Connection check   			   	                     |#
#| Author: Adam Sulik					   	                         |#
#|							   	                                     |#
#|- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -|#
#| 							    	                                 |#
#| Abstract: This check looks in the latest ERTCOMMERR log   	     |#
#|           file and looks for STATE IS DOWN error.	   	         |#
#|							                                         |#
#|- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -|#
#|							                                         |#
#|Version History:			                     		             |#					   
#|							                                         |#
#|  1.0    9/29/2014    Initial Version		        	             |#
#|							                                         |#
#+-------------------------------------------------------------------+#
#######################################################################

$err = 3
$msg = "UNKNOWN - The application check has failed, App may be up or down. Please manually check app and make sure all is well"


if (Test-Path -Path C:\ERTCOMM\ERTCOMM_*.log){
$ertCommErrorLOG = Get-ChildItem C:\ERTCOMM\ERTCOMM_*.log | sort LastWriteTime | select -Last 1
}else{
$ertCommErrorLOG = Get-ChildItem C:\ERTCOMM\ERTCOMM.log | sort LastWriteTime | select -Last 1
}
$content = Get-Content $ertCommErrorLOG -tail 100

foreach ($line in $content){
    if ($line.contains('ERROR: The state is down!')){
        $err = 2
        $msg = "CRITICAL!! - Connection error with Lousiana DMV"
        break
      
    } else {
        $err = 0
        $msg = "OK - No detected issues"    
    }
    }

Write-Host $msg
$host.SetShouldExit($err)