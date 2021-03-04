# Example using FOR

Clear-Host

for ($test = 1; $test -le 10; $test++)
{
    Write-Host "192.168.1.$test"
}