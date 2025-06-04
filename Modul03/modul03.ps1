## PSProvider und PS Drive
Get-PSProvider

Get-PSDrive

# Eigenes PS Drive
New-PSDrive -Name Windir -root c:\windows -psProvider FileSystem

# Generische Anlage eine Ordners
New-Item c:\powershell\test -itemtype directory


## PS Drive Registrierung
Set-Location HKLM:\SOFTWARE

Get-ChildItem
# Registrierungselement erstellen
New-Item -Name ITH
# Erstellen einer Registrierungseigenschaft
New-ItemProperty -path HKLM:\SOFTWARE\ITH -Name PWS202523 -Value '1234' -PropertyType String


Get-ItemProperty -Path HKLM:\SOFTWARE\ITH