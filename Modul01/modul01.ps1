# Verwenden der Hilfe

Get-Help about*

Get-Help about_Aliases

Get-Help about_Eventlogs -ShowWindow

Get-Help about_TestDrive -ShowWindow

Get-Help *beep*

# Aliase
# dir -> Get-ChildItem
dir

Get-ChildItem
# Welcher Befehl befindet sich hinter einem Alias
Get-Alias dir
# Alle Aliasse Anzeigen
Get-Alias
# Eigener Alias für den Begriff list
New-Alias list  Get-ChildItem
# Zeige alle Aliasse zum Befeh Get-Child Item
Get-Alias -Definition Get-ChildItem

########### Hilfe zu Commands ###########
Get-Command *net*

Get-Help *net* -Category Cmdlet
# Gibt alle Verben zurück
Get-Verb

## Umgebungsvariable mit Moulpfaden auslesen
$env:PSModulePath
## Zeige alle geladenen Module
Get-Module

Get-Command -Noun  ADUser

get-aduser -filter *
# Modul Importieren
Import-Module ServerManager

Get-Module -ListAvailable

