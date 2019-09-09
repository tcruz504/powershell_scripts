$logPath = "C:\Users\location\Desktop\pingResults.txt"
$stateIP = "ip"

if (!(test-path $logPath)){
    New-Item $logPath -ItemType file
}
while (1 -eq 1) {
$date = get-date
if (Test-Connection $stateIP -Count 2){
Write-Output "at $date $stateIP worked" | Out-File -Append $logPath
}
else {
write-Output "at $date $stateIP is DOWN" | Out-File -Append $logPath 
}
Start-sleep 2
} 
