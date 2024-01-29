---
tags:
  - windows
  - shell
  - security
  - network
  - administration
---
Saved APs ( SSIDs )
```powershell
(netsh wlan show profiles) | Select-String "\:(.+)$" | %{$name=$_.Matches.Groups[1].Value.Trim(); $_}
```

WLAN-Password 
```powershell
netsh wlan show profile name=<SSID> key=clear
```
