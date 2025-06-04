### WMI CIM

Get-WmiObject -Class Win32_service | Get-Member

Get-Cimclass -Class Win32_service | Select-Object -ExpandProperty CimClassMethods | Sort-Object -Property Name  

Get-WmiObject -class Win32_LogicalDisk
Get-CimInstance -ClassName Win32_LogicalDisk -Filter "DriveType=3"

Get-CimInstance -Query "Select * From Win32_NetworkAdapter"
Get-CimInstance -ClassName Win32_Process -Filter "Name='mspaint.exe'" | Invoke-CimMethod -MethodName Terminate

$s=New-CimSession -ComputerName ith-mgm01
    Get-CimInstance -CimSession $s -ClassName win32_OperatingSystem

$s | Remove-CimSession