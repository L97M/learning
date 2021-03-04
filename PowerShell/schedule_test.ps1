# Schedule script

Clear-Host

Get-Command -Module PSScheduledJob | Sort-Object Noun

$daily = New-JobTrigger -Daily -At "9:57 pm"

$onetime = New-JobTrigger -Once -At (Get-Date).AddHours(1)

$weekly = New-JobTrigger -Weekly -DaysOfWeek Monday -At 6pm

Register-ScheduledJob -Name Backup -Trigger $daily -ScriptBlock {
    Copy-Item 'C:\Users\lmendes\Documents\PowerShell (Udemy - Daniel Donda)\*.*' 'C:\Users\lmendes\Documents\PowerShell (Udemy - Daniel Donda)\bkp_test\' -Recurse -Force
}

# Não tá funcionando (Roda com sucesso, mas não abre o Edge)
Register-ScheduledJob -Name Browser -Trigger $daily -ScriptBlock {
    Start-Process microsoft-edge: 
}

Get-ScheduledJob Backup | Get-JobTrigger

Get-ScheduledJob Backup | Unregister-ScheduledJob