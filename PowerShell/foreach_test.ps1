#Example using FOREACH

Clear-Host

#foreach ($number in 1,2,3,4,5){Write-Host $number}

foreach ($file in Get-ChildItem)
{
if ($file.IsReadOnly)
{
Write-Host $file.FullName}
}

#Get-Process Notepad | foreach kill