# Compare date

Clear-Host

$date = Get-Date 11/02/1997

If ($date.DayOfWeek -eq (Get-Date).DayOfWeek) {Write-Host "O dia armazenado na variável é o mesmo dia da data de hoje!"} Else {Write-Host "O dia armazenado na variável é diferente da data de hoje!"}