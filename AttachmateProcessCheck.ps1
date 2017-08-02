$logPath = "C:\AttachmateLogs\Logs.txt"
                           
Do
    {
        $date = Get-Date
        $process = Get-process acc*, java
        $process.WaitForExit()

        Write-output "Accessory Manager has stopped running on $date" | out-file -Filepath 'C:\AttachmateLogs\Logs.txt' -Append 

    # This will restart the ERTComm App if it closes or shutdown!
   
  cd C:\ERTCOMM_TST

  .\ERT.bat

     }

While (1 -eq 1)

