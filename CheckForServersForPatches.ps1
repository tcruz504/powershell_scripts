get-adcomputer -filter {Enabled -eq $true} -server corp.trivin.com -Properties CanonicalName | foreach-object{
    
    #Output name of computer we're checking
    $status = "Checking "+$_.Name; Write-Host $status;
    
    # Find the patches we're looking for
    $patches = Get-WmiObject -Class Win32_QuickFixEngineering -ComputerName $_.Name -Filter {HotFixId = 'KB4012212' OR HotFixId = 'KB4012215' OR HotFixId = 'KB4012598' OR HotFixId = 'KB4012214' OR HotFixID = 'KB4012217' OR HotFixId = 'KB4012213' OR HotFixId = 'KB4012216'};
    $OS = Get-WmiObject -Class Win32_OperatingSystem -ComputerName $_.Name
    
    #Set a flag variable we'll use later
    If ($patches) {$installed = $true} Else {$installed = $false};
    
    #Output the server name, CN, and whether the patch is installed to a summary file
    #$_ | Select-Object @{Name="Server";Expression={$_.name}}, @{Name="CN";Expression={$_.CanonicalName}}, @{Name="MS017-010 Installed?";Expression={$installed}} | Export-Csv -Path MS017-010_Summary.csv -Append -NoTypeInformation;
    $_ | Select-Object Name, CanonicalName, @{Name="MS017-010 Installed?";Expression={$installed}} | Export-Csv -Path C:\Users\tomas.cruz.DTINC\Desktop\Patches\MS017-010_Summary.csv -Append -NoTypeInformation;
    
    #Output specific installed patch information to another file
    $patches | Export-Csv -Path C:\Users\tomas.cruz.DTINC\Desktop\Patches\MS017-010.csv -Append -NoTypeInformation

} 

