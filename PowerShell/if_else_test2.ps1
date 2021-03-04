# Check Intenet Status

Clear-Host

$connection = (Test-Connection www.google.com -Count 1 -Quiet)

If ($connection -eq "true") {Write-Host "Internet connected!" -ForegroundColor Green}