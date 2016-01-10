#$disk = Get-WmiObject Win32_LogicalDisk -ComputerName localhost -Filter "DeviceID='C:'" |
#Select-Object Size,FreeSpace

($disk.Size)/1gb
($disk.FreeSpace)/1gb

Get-PSDrive C | Select-Object Used,Free

