$source = "\\Rts-file\common\Datical\Composite_Repository\3.92.2977\"*""
#$dest = "\\gro-jenk01w-d\Data\Tomcat8\apache-tomcat-8.0.30\webapps\daticalupdates"
$dest1 = "\\t-cruz-hp\c$\Testdir"


If (!(Test-path $dest)) 
{

New-Item $dest -ItemType Directory

}

Else {

Copy -path "\\Rts-file\common\Datical\Composite_Repository\3.92.2977\*"  $dest1 -Force

}

"....................................................................................."
"....................................................................."
".........................................................."
"..........................................."
"..................................."
"....................."
Write-Host "Files COPY complete!" -ForegroundColor Yellow

