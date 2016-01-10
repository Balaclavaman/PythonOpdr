$MachineList = Get-Content -Path "C:\Users\Okan Cekem\Desktop\Windows PS\ps_python_opdr\Machines.txt"; # One system name per line
foreach ($Machine in $MachineList){
    ($Machine + ": " + @(Get-WmiObject -ComputerName $Machine -Namespace root\cimv2 -Class Win32_ComputerSystem)[0].UserName);
}