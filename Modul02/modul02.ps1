#Pipelining und Filtering
get-service

Get-Service | Format-List -Property Name,Status

Get-ADComputer -Filter * -Properties OperatingSystem

Get-ADComputer -Filter * -Properties OperatingSystem | ft -Property Name,OperatingSystem

Get-AdUser -Filter *

Get-AdUser -Filter * | fw -AutoSize

###### Datenmenge sortieren
Get-Process | Sort-Object -Property Id

Get-Service | Sort-Object -Property Status -Descending

Get-EventLog -LogName Security -Newest 10

Get-EventLog -LogName Security -Newest 10 | Sort-Object -Property TimeWritten

Get-AdUser -Filter * |Sort-Object -Property SurName | fw -AutoSize

### Hilfsberechnungen
Get-Service | Measure-Object

Get-AdUser -Filter * | Measure-Object

Get-Process | Measure-Object -Property VM -sum -Average

### Neue Spalten (berechnet)
Get-adUser -Filter * -Properties whenCreated

Get-adUser -Filter * -Properties whenCreated | Sort-Object -Property whenCreated -Descending

Get-adUser -Filter * -Properties whenCreated | Sort-Object -Property whenCreated -Descending | Select-Object -Property Name,@{n='Account age';e={(New-TimeSpan -start $PSItem.whenCreated).Hours}} 

##### OOP Eigenschaften, Methoden und Events #####

Get-Service | Get-Member

Get-Process | Get-Member

Get-ChildItem | Get-Member

Get-adUser -Filter * -Properties * | Get-Member -MemberType Properties

# Überschreiben der Pipline
Get-Process -Name Notepad |Stop-Process

Get-Process -Name win32calc | Stop-Process -name Notepad

# Übergabe der Primärschlüssesl as EigenschaftenName

Get-ADComputer ITH-AD35 | Get-Process

Get-Help Get-Process -ShowWindow

Get-ADComputer ITH-AD35| Select-Object @{n='ComputerName';e={$_.Name}} | Get-Process

# Übergabe der Primärschlüssesl as EigenschaftenWert (Zahlen fester Länge)
Get-Service -Name BITS |Get-Member

Get-Help Stop-Service -ShowWindow

Get-Service -Name BITS | Stop-Service