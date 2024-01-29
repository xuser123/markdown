Windows Server 2019 VM Installation:
- ( Hyper-V )
- Domain-Controller
- Core-Server
### Virtueller Switch erstellen
- Name (zweckgemäß): "Domain" 
- Verbindungstyp: "Privates Netzwerk"
### Domain-Controller installieren
1. VM erstellen 
	- alles dynamisch, ISO einbinden 
	- Netzwerk "Domain"
	- "Sicherer Start" deaktivieren 
	- 2 Prozessoren 
2. VM starten und Server einstellen
	- Powershell-Befehl `sconfig ` 
	- IP ändern (Bsp. "192.168.0.1") statisch 
	- DNS = Bsp. 192.168.0.1 ~ 127.0.0.1
	- Neustart
3. Nach Neustart Computernamen ändern 
	- Zweckgemäßen Namen (Bsp. `DC-VM-Server`) 
	- Neustart
4. Windows-Server-Rolle (Rollendienst) installieren
	- "Verwaltung", "Rollen und Features hinzufügen" 
		[x] Active Directory-Domaindienste
		[x] DNS-Server
5. Nach der Installation des Rollendienst:
	- Im "Verwaltung"-Button auf Flagge klicken 
	- Im späteren Verlauf:
		 [x] "Neues Stammverzeichnis" 
		- Domain eingeben (Bsp. `future.local `)
	- Domain-Controller "heraufstufen" 
	- Neustart
### Core-Server installieren
1. VM erstellen 
	- alles dynamisch, ISO einbinden 
	- Netzwerk "Domain"
	- "Sicherer Start" deaktivieren 
	- 2 Prozessoren
2. VM starten und Server einstellen
	- Powershell-Befehl `sconfig `
	- IP ändern (Bsp. "192.168.0.2") statisch
	- DNS =  127.0.0.1 oder 192.168.0.1
	- Neustart
3. Computernamen ändern 
	- Zweckgemäßen Namen (Bsp. `Core-Server`) 
	- "Remotedesktop" für alle Clients aktivieren
	- Neustart
4. Domain-Beitritt
	- Powershell-Befehl `sconfig `
	- "Name der Domäne für den Beitritt:" 
		- `future.local`
	- "autorisierten Benutzer ..." eingeben
		- `future.local\Administrator`
	- Passwort des Administrators eingeben
	- Neustart
5. Active Directory Dienste und Verwaltung installieren
	- Im Terminal `powershell` ausführen 
	- `Install-WindowsFeature -Name AD-Domain-Services -IncludeManagementTools`
### Core-Server prüfen
1. Im Terminal `powershell` ausführen
2. Befehl: `Get-Command -Module ADDSDeployment`
	- Zeigt ob Module vorhanden
3. Test-Installation durchlaufen lassen
	- Befehl: `Test-ADDSDomainControllerInstallation -DomainName future.local -SafeModeAdministratorPassword (Read-Host -Prompt Kennwort -AsSecureString) |fl` 
	- Achtung: Richtige Domain einsetzen / einfügen
	- `|fl` erzeugt "formatierte Liste"
	- Prompt für "Kennwort" erscheint
		- (Passwort des aktuellen Benutzers) 
	- Active-Directory Verbindung mit Domain-Controller wird getestet 
### Windows Domain Controller und PXE
---
Beispiel-Server `192.168.1.2` **WDS** "Windows Deployment Services"
- Server-Rolle in Windows Server Netzwerke
- Verteilung von Windows-Betriebssysteme und -Images
	- Installationen
	- Konfigurationen
	- Aktualisierungen
	- Image-Erstellungen
- in Verbindung mit anderen Windows-Bereitstellungstools:
	- Microsoft SCCM (System Center Configuration Manager)
	- MDT (Microsoft Deployment Toolkit)
- Automatische Windows-Installationen,
	- auf Zielcomputer im Netzwerk,
	- ohne Interaktion,
	- um Fehlerrisiko zu reduzieren,
- mittels "Antwortdatei"
	- Installations-Informationen,
	- je nach Anforderung, bspw:
		- Produktedition 
		- Version
		- Spracheinstellung
		- Partitionierung
		- Formatierung
		- Benutzerkonten
		- Passwörter
		- IP, Gateway, DNS einstellen
		- Installationsschlüssel
		- Aktivierungsschlüssel
		- Dienste
		- Treiber
		- Anwendungen
		- Konfigurationen
		- Updateeinstellungen
		- Sicherheitseinstellungen
- Beispiel Core3 Server  `192.168.1.3`
- Beispiel Domain `future.local`
- DOMAIN Zutritt Rolle installieren
- Domain-Controller `192.168.1.1`
- DHCP erste 20 Adressen Statisch
- DNS `192.168.1.1`
- 1 Nutzer mit Admin Rechten
### Ablauf
1. IPv4 konfigurieren
---
Ausrufezeichen -> DHCP -- commit ausführen
DHCP -> DC rechtsklick - DHCP Manager
IPV4 -> neuer Bereich: 192.168.1.1 - 192.168.1.250
Statische IPs: 192.168.1.1 - 192.168.1.20
Keine Abfragen weiterleiten
Name ändern auf DC

2. Domäne Installieren
---
Domäne installieren -> verwalten -> rollen und features installieren -> hacken setzen -> active directory, dhcp, dns
Zielserver nach installation neu starten
Gelbes Ausrufezeichen - Server zu einem Domäncontroller Heraufstufen
-> Neue Gesamtstruktur hinzufügen-> future.local
kennwort hinzufügen- Net Bios Name wird automatisch hinzugefügt-> 
Speicherort Datenbank lassen-> weiter installieren

4. DNS
---
DNS-> Server-> rechtsklick DC ->  DNS Manager-> DC.future.local rechtsklick -> DNS- Serverkonfig-> 
Eine Forward- und Reserve Lookupzone erstellen
Name Reserve Lookupzone 192.168.1 
nicht sichere und sichere auswählen- 
Primäre Zone auswählen-> 
mittlere: auf allen DNS Servern, die auf Domänencontrollern in dieser Domäne ausgeführt werden: future.local
Zonenname: future.local -> 
Dynamisches Update ->
nicht sichere und sichere auswählen- 
Reverse- Lookupzone -> 
Ja, eine Reserve- Lookupzone erstellen-> 
Primäre Zone-> 
mittlere Auswahl: Auf allen DNS Servern, die auf Domänencontrollern
in dieser Domäne ausgeführt werden: future.local->
IPv4 Reverse-Lookupzone-> Name der Reverse-Lookupzone 192.168.1->
nicht sichere und sichere dynamische Updates zulassen
Leistungsindikatoren Starten

5. Neuen Benutzer Anlegen
---
Tool -> Active Directory - Benutzer und Computer - future.local unterkategorien öffnen -> user - > neu -> 
Benutzer anlegen -> Herr Bademeister -> 
Mitglied von : Administratoren, Domänen-Admins, Domänen- Benutzer, Remotedesktopüberwachung, Remoteverwaltung

6. SERVER 2
---
Lokaler Server -> IP- Adresse -> IPv4 - eigenschaften -ip. 192.168.1.2 -> dns 192.168.1.1

Computername ändern -> Server2

Arbeitsgruppe - eigenschaften ändern auf Domäne- future.local- > 
Login Name , Bademeister oder future \ Administrator und Kennwort eingeben
Prüfpunkte erstellen  DC und Server2

7. Hardware hinzufügen Server2 HyperV
---
Server2 -> Einstellungen -> Hardware hinzufügen- SCSI Controller - hinzufügen -> DVD - Laufwerk hinzufügen -> 
Imagedatei aussuchen-> Win10iso

8. Rollen hinzufügen
---
- Server2 und Windows Bereitstellungsdienste hinzufügen
- Bereitstellungsserver und Transportserver hacken setzen -> installieren

9. Tools -> Windowsbereitstellungsdienste -> Server2.future.local 
---
rechtsklick -> Server konfigurieren ->
In Active Directory integriert -> Remoteinstallationsordern C:\RemoteInstall -> Allen Clientcomputer antworten ->
Administratorengenehmigung für unbekannte CP erdorderlich machen (Hacken setzen) 
-> Hacken Abbilder jetzt dem Server hinzufügen lassen -> Abbilddatei-> Pfad durchsuchen 
-> E:\sources -> Abbildgruppe erstellen: Win10Clients

10. Win10PXE installieren
---
Neuer virtueller Computer -> Win10PXE -> Gen1 -> Domain -> 60GB RAM -> Betriebssystem von einem netzwerkbasierten
Installationsserver installieren auswählen

### Powershell Skripts
Einstellungen für Serverumgebung:
- Rechnername und IP
- Domäne und DNS
- Benutzer und OU (Organisational Unit)
- ACL Zugriffsrechte
#### Rechnername und IP
- Rechnername zu "DC1" ändern
- IP-Konfiguration ändern:
	-   IP : 10.0.0.1 / 8
	-   GW : 10.0.0.1
	-   DNS : 10.0.0.1, 8.8.8.8
- Neustart

```powershell
# Computernamen ändern
Rename-Computer -NewName "DC1"

# Netzwerk konfigurieren
New-NetIPAddress `
	-InterfaceAlias "Ethernet" ` 
	-IPAddress 10.0.0.1 ` 
	-DefaultGateway 10.0.0.1 ` 
	-PrefixLength 8 `

Set-DnsClientServerAddress ` 
	-InterfaceAlias "Ethernet" ` 
	-ServerAddresses 10.0.0.1, 8.8.8.8

# Computer neustarten, Änderungen übernehmen
Restart-Computer
```
#### Domäne und DNS
- Installation und Konfiguration
- Neustart

 ```powershell
# Vordefiniertes Passwort in Variable speichern
$SafeModeAdminPassword = (ConvertTo-SecureString -AsPlainTex ` "Str0ngPa55w.rd!" -Force)

# Active-Directory-Domain-Services installieren
Install-WindowsFeature -Name AD-Domain-Services -IncludeManagementTools

# AD-Anbringungs Modul importieren
Import-Module -Name "ADDSDeployment" ` 

# Neue AD-Domain erstellen, Passwort vergeben
Install-ADDSForest ` 
	-DomainName "blueteam.int" `
	-DomainNetbiosName "BLUETEAM" `
	-SafeModeAdministratorPassword $SafeModeAdminPassword ` 
	
# Computer neustarten, Änderungen übernehmen
Restart-Computer
```
- DNS Adressen festlegen
`Set-DnsClientServerAddress -InterfaceAlias "Ethernet" -ServerAddresses 10.0.0.1, 8.8.8.8`
#### Benutzer und OU (Organisational Unit)
 - Erstellen eines Benutzers
 - Erstellen einer OU namens "IT"
 - Verschieben des erstellten Benutzers in die OU "IT"

```powershell
# Neuen AD-Benutzer erstellen
New-ADUser ` 
	-Name "CableGuy" ` 
	-SamAccountName "CableGuy" ` 
	-UserPrincipalName "CableGuy@blueteam.int" ` 
	-AccountPassword (ConvertTo-SecureString "Str0ngPa55w.rd!" ` 
		-AsPlainText ` 
		-Force) ` 
	-Enabled $true 

# Neue Organisations Einheit erstellen
New-ADOrganizationalUnit -Name "IT" 

# AD-Benutzer in Organisations-Einheit verschieben
Move-ADObject ` 
	-Identity "CN=CableGuy" ` 
	-TargetPath "OU=blueteam"
```
#### ACL Zugriffsrechte
 - Erstellen eines Dateiverzeichnisses
	-   `C:\Dateien`
	- Angelegte Benutzer soll Zugriffsrechte auf Lokalen Ordner bekommen.
-   Zuordnung der ACL Rechte für den erstellten Benutzer
-   Berechtigungen Lesen-Schreiben-Ausführen.

```powershell
# Ordner erstellen
New-Item -ItemType Directory -Path "C:\Dateien"

# Zugriffsrechte für Benutzer auf den Ordner zuweisen
$user = "CableGuy" `
$acl = Get-Acl -Path "C:\Dateien" `
$permission = New-Object System.Security.AccessControl.FileSystemAccessRule($user,$permission,"Allow") ` 
$acl.SetAccessRule($permission) ` 
$acl | Set-Acl -Path "C:\Dateien"
```

