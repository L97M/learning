# Teste Hash Table Script

Clear-Host

$servers = [ordered] @{Server1="127.0.0.1";Server2="127.0.0.2";Server3="127.0.0.3";}

$servers

# Add value to Hash Table
$servers["Server4"]="127.0.0.4"

# Remove value from Hash Table
$servers.Remove("Server4")

# Show values
$servers.Values

# Test Connection
Test-Connection $servers.Server1