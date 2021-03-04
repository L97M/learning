# Slow workflow

workflow slow_script
{
    while (1)
    {
        (Get-Date).ToString() + " Slow script"
        Start-Sleep -Seconds 2
    }
}

$wfslow = slow_script -AsJob

$wfslow

Receive-Job $wfslow

Suspend-Job $wfslow -Force

Stop-Job $wfslow

Resume-Job $wfslow