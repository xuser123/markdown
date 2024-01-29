### Windows Defender
---
Systemeigener Antivirus, in neueren Windows Versionen vorinstalliert.
#### Dienst und Einstellungen prüfen
Einagabeaufforderung (als Admin), Befehl: `sc query windefend`
- Ausgabe "`RUNNING`" sollte erscheinen,
- wenn nicht dann Meldung "`STOPPED`". Falls nötig ( und möglich ) Dienst manuell starten, mit Befehl `net start windefend`

**Gerätesicherheit** und **Manipulationsschutz** (Windows 11) prüfen:
1. In Einstellungen bei "*Update & Sicherheit*"
2. Im linken Menü "*Windows Security*"
3. Im Fenster rechten Bereich auf "*Gerätesicherheit*"
4. "*Einstellungen für Gerätesicherheit öffnen*" klicken
	- *Kernisolierung* aktiviert ?
	- *Manipulationsschutz* aktiviert ?
##### AntiSpyware Dienst prüfen
Powershell-Befehl ( als Administrator ) ausführen: `Get-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender" -Name "DisableAntiSpyware"`. Keine Ausgabe bedeutet Dienst inaktiv !
##### Abhängige Zugriffberechtigung prüfen
1. Windows-Explorer öffnen, Pfad: `C:\Windows\System32\DriverStore\FileRepository\`
2. Rechte Maustaste Ordner "*query*", dann "*Eigenschaften*"
3. Im Fenster "Eigenschaften" auf Registerkarte "*Sicherheit*"
4. Prüfen ob Benutzerkonto in Liste "Benutzer"
	- falls nicht, auf Schaltfläche "*Bearbeiten*" und Benutzer hinzufügen
5. Prüfen ob Benutzerkonto Berechtigung "Vollzugriff" ist
##### Abhängige Gruppenrichtlinien prüfen
1. Gruppenrichtlinien-Editor öffnen: `gpedit.msc` in Windows-Suchleiste eingeben
2. "Computerkonfiguration" -> "*Administrative Vorlagen*" -> "*Windows-Komponenten*"
   -> "Windows Defender Antivirus"
3. Rechte Seite im Fenster, Option "*Manipulationsschutz*" sollte aktiviert sein
4. Falls nicht, dann aktivieren und Computer neustarten !
	- Falls immer noch keine Berechtigung: Eventuell-beschädigte **regsvr32**-Programmdateien prüfen:
		- wuaueng.dll
		- wucltui.dll
		- softpub.dll
		- wintrust.dll
		- initpki.dll
		- wups.dll
		- wuweb.dll
		- atl.dll
		- mssip32.dll
#### System aktualisieren und auf Schadware prüfen
Windows-Updates installieren, Schritte wiederholen und System scannen.
#### Tipp: Malware in Treiber ?
Falls möglich, Treiber entfernen: `pnputil /delete-driver <treiber>.inf /uninstall /force /reboot` 

### Windows-Firewall
---
Allgemeine Strategie und Vorgehensweise:
1. Alles blockieren
2. Regeln bestimmen
3. Schrittweise zulassen
#### 1. ALLES ( IPs und Ports ) blockieren
Powershell-Skript um alle Eingänge zu blockieren:
```powershell
# Alle Eingänge blockieren
New-NetFirewallRule -DisplayName "Block Incoming" -Direction Inbound -Action Block -Enabled True

# Alle Ausgänge blockieren
New-NetFirewallRule -DisplayName "Block Outgoing" -Direction Outbound -Action Block -Enabled True
```
#### 2. Welche Anwendungen und Ports erlauben?
- Anforderungen der Netzwerkumgebung
- Sicherheitsbedürfnisse
- Erforderliche Geschäftsprozesse, usw.
#### Firewall Profile und Regeln erstellen
Wirksam vor potentiellen Angriffen und Bedrohungen schützen.
##### Bekannte IP-Adressen definieren
Powershell-Skript um bekannte IP-Adressen in Variable zu speichern:
```powershell
# Bekannte IP-Adressen des lokalen Netzwerks ( hier anpassen )
$LocalIPs = @("192.168.0.1", "192.168.0.2", "192.168.0.3")
```
##### Unbekannte IP-Adressen blockieren
Powershell-Skript um den Traffic unbekannter IP-Adressen zu blockieren:
```powershell
# Eingänge von unbekannten IP-Adressen blockieren
New-NetFirewallRule -DisplayName "Block Incoming Unknown IP" -Direction Inbound -Action Block -RemoteAddress "!$LocalIPs" -Enabled True

# Ausgänge von unbekannten IP-Adressen blockieren
New-NetFirewallRule -DisplayName "Block Outgoing Unknown IP" -Direction Outbound -Action Block -RemoteAddress "!$LocalIPs" -Enabled True
```
#### 3. Spezifische Anwendungen zulassen
1. Cmd `wf` ausführen.
2. *Programm* -> *Weiter* -> *Durchsuchen*.
3. Ausführbare Programmdatei auswählen -> *Zulassen*.
4. Dann *Weiter* -> Netzwerkprofil -> *Weiter* -> *Fertigstellen*.
##### Benötigte Ports zulassen
Powershell-Skript um HTTP-Port 80 zu erlauben:
```powershell
# HTTP-Eignang erlauben
New-NetFirewallRule -DisplayName "Allow Incoming Port 80" -Direction Inbound -Protocol TCP -LocalPort 80 -Action Allow -Enabled True

# HTTP-Ausgang erlauben
New-NetFirewallRule -DisplayName "Allow Outgoing Port 80" -Direction Outbound -Protocol TCP -RemotePort 80 -Action Allow -Enabled True
```
#### Firewall prüfen
Konfiguration mit Netzwerkanforderungen vergleichen und ggf. anpassen.
##### Freigegebene Anwendungen testen
1. Konfiguration nochmal überprüfen !
2. Programme einzeln testen und sicherstellen dass alle benötigten Anwendungen ordnungsgemäß funktionieren.

### Windows Verbindungen
---
#### Teams
IP-Adressen:
- 13.107.136.0/24
- 52.112.0.0/14
- 104.146.128.0/17
- 52.120.0.0/14
Ports:
- Port 80 und 443 für HTTP und HTTPS-Verbindungen
- Port 3478 für STUN ( Session Traversal Utilities for NAT )
- Port 3480 für TURN ( Traversal Using Relay NAT )
#### Edge
Port:
- 60000
