Param(
    [string]$Path=(Read-Host "Gib einen Pfad an"),
    [switch]$Recurse

)
Write-Host "Programm Start"
$path
$files=Get-ChildItem -Path $path -File -Recurse:$Recurse -ErrorAction SilentlyContinue
$files