# Powershell Kurs Grundlagen
## Trainer Michael Lindner

Eigenes Codesignaturzertifikat auswählen
Damit es in der Domäne gültig ist muss es auf alle Computer unter vertrauenswürdige Herausgeber
> Cert Selektieren
``` Powershell
$cert=Get-ChildItem -Path Cert:\CurrentUser\my -CodeSigningCert
```
>Signatur anwenden

``` Powershell
Set-AuthenticodeSignature -FilePath C:\Powershell\Modul07\modul07.ps1 -Certificate $cert
```

>Ausführrichtlinie verschärfen

``` Powershell
Set-ExecutionPolicy AllSign
```