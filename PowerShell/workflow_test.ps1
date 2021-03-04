# WorkFlow script

workflow testing
{
    Write-Output "Hello Word!"
}

# Parallel execution

workflow parallel_testing
{
    Parallel
    {
        Start-Process Notepad
        Start-Process Wordpad
    }
}