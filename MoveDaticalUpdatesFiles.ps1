
#################################################
#                                               #
# Move Datical files to Update Site to          #
# Perform the Datical application manual update #
#                                               #
#################################################

cd "\\rts-file.dt.inc\Common\Datical\Composite_Repository\3.93.90317"

cp * -force "\\Gro-jenk01w-d\c$\Data\Tomcat8\apache-tomcat-8.0.30\webapps\daticalupdates"

"......................................................................................"
".............................................................."
".............................................."
"............................"

Write-host "Files have finish copying!!" -ForegroundColor Green

pause 


$server = "gro-jenk01w-d"
$service = get-service -ComputerName $server Tom*

If ($service -eq "Running") {restart-service}

else {

if ( $service -eq "Stopped") {start-service}

       }

Write-host "Restarting" $service.Displayname





