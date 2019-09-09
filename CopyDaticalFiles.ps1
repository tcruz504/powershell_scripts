$source = "\\server\directory\"*""
#$dest = "\\gro-jenk01w-d\Data\Tomcat8\apache-tomcat-8.0.30\webapps\daticalupdates"
$dest1 = "\\server\c$\Testdir"


If (!(Test-path $dest)) 
{

New-Item $dest -ItemType Directory

}

Else {

Copy -path "\\server\directory\*"  $dest1 -Force

}

"....................................................................................."
"....................................................................."
".........................................................."
"..........................................."
"..................................."
"....................."
Write-Host "Files COPY complete!" -ForegroundColor Yellow

