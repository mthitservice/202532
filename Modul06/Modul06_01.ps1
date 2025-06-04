### Daten Export
$path="C:\Powershell\modul06\"
$user =Get-ADUser -Filter *  | Select-Object -Property Name,DistinguishedName,UserPrincipalName
$user | Export-Csv -Path $path"user.csv"
$user | Export-Clixml -Path $path"user.xml"
$user | ConvertTo-Json |  out-file $path"user.json" 


$x= Import-Csv -Path $path"user.csv"
$y = import-Clixml -Path $path"user.xml"
$z = Get-Content -Path  $path"user.json" | ConvertFrom-Json 
$x
$y
$z
$z | ConvertTo-Html >>  $path"user.html" 
