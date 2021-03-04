# Check service status

Clear-Host

$service = Get-Service -Name Spooler

#If ($service.Status -eq "Running") {Write-Host "Service is running!"}

If ($service.Status -eq "Running")
{
    Write-Host "Service is running!"
} Else
{
    Write-Host "Service is stopped!"
}

