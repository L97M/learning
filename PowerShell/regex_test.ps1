# REGEX Test

Clear-Host

$email = Read-Host Qual o seu email?

$validate = "^[a-z]+\.[a-z]+@example.com$"

If ($email -notmatch $validate)
{
    Write-Host "Endereço de email inválido!"
    Exit
}

Write-Host "Endereço correto!"