@echo off
reg add HKLM\SYSTEM\CurrentControlSet\Control\Print /v DnsOnWire /t REG_DWORD /d 1 /f

reg add "hklm\system\currentcontrolset\services\lanmanserver\parameters" /v OptionalNames /t REG_SZ /d "aliasname" /f

reg add HKLM\SYSTEM\CurrentControlSet\Control\Print /v DnsOnWire /t REG_DWORD /d 1 /f

reg add HKLM\SYSTEM\CurrentControlSet\Control\Print /v DnsOnWire /t REG_DWORD /d 1 /f

reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Print\Providers\Client Side Rendering Print Provider" /v InactiveGuidPrinterAge /t REG_DWORD /d 1200 /f

reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Print\Providers\Client Side Rendering Print Provider" /v InactiveGuidPrinterTrim /t REG_DWORD /d 3600 /f

net stop spooler

net start spooler

pause
