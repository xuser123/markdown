Powershell-Version anzeigen: `$PSVersionTable`

Prüfen ob Sandbox-Feature aktiviert ist:
```powershell
Get-WindowsOptionalFeature -FeatureName "Containers-DisposableClientVM" -Online | Select-Object Enabled
```

Verbindungen alle 60 Sekunden in Datei schreiben
```powershell
netstat -ao 60 >> Networking\2023-04-22-netstat-protocol-1.txt
```

IP-Adresse aus Datei filtern
```powershell
Select-String -Path C:\Users\MikeJung\*-netstat-scan-*.txt -Pattern 192.168.0.1[0-5][012345789]
```

Modul Verzeichnisse aller Profile anzeigen
```powershell
$env:PSModulePath -split ';'
```

Letzten Zeilen einer Datei verfolgen
```powershell
Get-Content -Path "C:\Users\MikeJung\2023-04-21-netstat-protocol-2.log" -Tail 100 -wait
```

Befehl nach 10 Sekunden wiederholen (endlos)
```powershell
$infotext = "`nVerbundene IP's $(Get-Date -Format 'dd.MM.yyyy hh:mm:ss') alle 10 Sekunden" ; while($true) { Write-Host $infotext ; Get-NetTCPConnection -state Established ; Start-Sleep -Seconds 10}
```

IP-Adresse aus Datei filtern
```powershell
Select-String -Path "C:\Users\MikeJung\*-netstat-protocol-*.log" -Pattern 192.168.0.1[0-5][012345789]
```

Filter nach 10 Sekunden wiederholen (endlos)
```powershell
$infotext1 = "`nLogfiles:" ; $infotext2 = "`nClient-IP-Filter"; while($true) { cls ; Write-Host $infotext1 ; Get-ChildItem -Path "C:\Users\MikeJung\*-netstat-protocol-*.log" ; Start-Sleep -Seconds 3 ; Write-Host $infotext2 ; Select-String -Path "C:\Users\MikeJung\*-netstat-protocol-*.log" -Pattern 192.168.0.1[0-5][012345789] ; Start-Sleep -Seconds 15}
```

TCP-Verbindungen, Ports, Namensauflösung, Process ID prüfen
```powershell
# Verbundene Ports prüfen:
PS > Get-NetTCPConnection -state Established

# Beispiel: teamviewer-service.exe
# Lokale Ports: 50380, 50381, 50382, 50365, 5938, 5939, 50260
# RemoteAddress: 213.227.186.145
# OwningProcess (PID): 5972
PS > Get-NetTCPConnection -OwningProcess 5972

LocalAddress                        LocalPort RemoteAddress                       RemotePort State       AppliedSetting OwningProcess
------------                        --------- -------------                       ---------- -----       -------------- -------------
0.0.0.0                             50382     0.0.0.0                             0          Bound                      5972
0.0.0.0                             50380     0.0.0.0                             0          Bound                      5972
0.0.0.0                             50365     0.0.0.0                             0          Bound                      5972
127.0.0.1                           50382     127.0.0.1                           50381      Established Internet       5972
127.0.0.1                           50381     127.0.0.1                           50382      Established Internet       5972
192.168.0.106                       50365     213.227.186.145                     5938       Established Internet       5972
127.0.0.1                           5939      127.0.0.1                           50260      Established Internet       5972
127.0.0.1                           5939      0.0.0.0                             0          Listen                     5972

PS > nslookup 213.227.186.145
Server:  UnKnown
Address:  192.168.0.1

Name:    ES-MAD-ANX-R014.router.teamviewer.com
Address:  213.227.186.145

PS > Get-Process -Id 5972
Handles  NPM(K)    PM(K)      WS(K)     CPU(s)     Id  SI ProcessName
-------  ------    -----      -----     ------     --  -- -----------
   1149      54    48208       2556       0,88   6212   1 teamviewer-service.exe
# Werte sind nicht von teamviewer, aus anderem Prozess entnommen.

```

Lauschende Ports prüfen
```powershell

PS > Get-Nettcpconnection -state Listen

LocalAddress                        LocalPort RemoteAddress                       RemotePort State       AppliedSetting OwningProcess
------------                        --------- -------------                       ---------- -----       -------------- -------------
0.0.0.0                             49669     0.0.0.0                             0          Listen                     1432
0.0.0.0                             49668     0.0.0.0                             0          Listen                     5188
0.0.0.0                             49667     0.0.0.0                             0          Listen                     3756
0.0.0.0                             49666     0.0.0.0                             0          Listen                     2328
0.0.0.0                             49665     0.0.0.0                             0          Listen                     1352
0.0.0.0                             49664     0.0.0.0                             0          Listen                     1536
0.0.0.0                             5040      0.0.0.0                             0          Listen                     9828
0.0.0.0                             2179      0.0.0.0                             0          Listen                     3276
172.30.224.1                        139       0.0.0.0                             0          Listen                     4
169.254.32.232                      139       0.0.0.0                             0          Listen                     4
0.0.0.0                             135       0.0.0.0                             0          Listen                     1848

PS > Get-Process -Id 1848, 6212, 1432, 5188, 3756, 2328,1352, 1536, 9828, 3276, 4

Handles  NPM(K)    PM(K)      WS(K)     CPU(s)     Id  SI ProcessName
-------  ------    -----      -----     ------     --  -- -----------
   1745      28    11744      28636       1,66   1536   0 lsass
    822      12     5804      11188       1,39   1432   0 services
    448      24     5744      17004       0,02   5188   0 spoolsv
   1318      20     7812      15588       8,06   1848   0 svchost
    423      20     6660      17248       0,36   2328   0 svchost
    489      15    19668      21756       0,50   3756   0 svchost
    395      20     5036      18600       0,17   9828   0 svchost
   4737       0       52       3532      67,88      4   0 System
    765      26    60944      46424       0,03   3276   0 vmms
    145      12     1492       6732       0,00   1352   0 wininit
```

Nach Prozessnamen filtern:
```powershell
Get-Process | Where-Object { $_.Name -like "*chrome*" }
```
Dies gibt alle Prozesse zurück, die "chrome" in ihrem Namen haben. Sie können "chrome" durch den Namen des Prozesses ersetzen, nach dem Sie filtern möchten. Außerdem können Sie andere Vergleichsoperatoren wie "-eq", "-ne", "-lt", "-gt" oder "-match" anstelle von "-like" verwenden, um andere Arten von Vergleichen durchzuführen.

### Syntax-Highlighting Module installieren
For all profiles to install and import a module for terminal syntax highlighting in PowerShell
1. Open PowerShell as an administrator.
2. Install the PSReadLine module by running the following command:
   `Install-Module PSReadLine`
3. Once the module is installed, you can import it into all PowerShell profiles by adding the following line of code to your PowerShell profile script:
   `Import-Module PSReadLine`
4. To open your PowerShell profile script, run the following command:
`notepad $PROFILE.AllUsersAllHosts`
5. Add the following line of code to the end of your profile script and save the file:
`Import-Module PSReadLine`
6. Close PowerShell and reopen it to see the changes take effect, should now be enabled for all profiles in PowerShell.

```powershell

```

```powershell

```
