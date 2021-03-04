# Test Array Script

Clear-Host

$GoogleDNS = @("8.8.8.8", "8.8.4.4")

$totalDNS = $GoogleDNS.Count

Write-Host Pinging every $totalDNS Google DNS

Test-Connection $GoogleDNS -Count 1

sleep 3

Write-Host "End =)"