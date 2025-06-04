# Variablen
$logFile="C:\Powershell\Modul05\log.txt" # Zeichenkette deklariert und initialisiert
$version=1
$user=get-adUser -Filter *
$aktuellesDatum=Get-Date

$logFile # Ausgabe des Inhaltes (impliziter AUfruf der Methode ToString)
$logFile.ToString()
Write-Host $logFile
$version.ToString()
$user.ToString()
$aktuellesDatum.ToString()

$logFile.GetType()
$version.GetType()
$user.GetType()
$aktuellesDatum.GetType()

# Get-Variable

[Byte]$b=240
$b.GetType()
$b

$c="5"
$e=$c+$b
$e
### Datentypmethoden Zugriff
$logFile.Replace("Modul","Funktion")
$logFile.Contains("C:")
$logFile.Insert(2,"Test")
$w=$logFile.Split(".") | Select -last 1
$w.ToUpper()

$aktuellesDatum
$aktuellesDatum.Year
$aktuellesDatum.AddDays(100)
$aktuellesDatum.ToShortDateString()
$aktuellesDatum.ToLongDateString()

#### Array######
$da="ITH-AD35","ITH-MGM01"
$da
$da.GetType()
$da+="ITH-MGM02"
#$da | Get-Member -MemberType Method
$da.Add("Test")
$da

[System.Collections.ArrayList] $daspezial=Get-ADUser -Filter *
$daspezial.Add("test")
$daspezial

$daspezial | Select-Object {$_.getType()}
$daspezial.Count
$daspezial[2].Name
$daspezial.RemoveAt(2)
$daspezial[2].Name

$user=Get-ADUser -Filter *
$user
$user.Count
$user[0].SamAccountName 


## Assoziative Arrays
$benutzer =@{"Lara"="IT";"Peter"="Manager";"Hans"="Vertrieb"}
$benutzer
$benutzer.Lara
$benutzer.Hans="Versand"
$benutzer.Add("Petra","Marketing")
$benutzer
$benutzer.Remove("Lara")
$benutzer