Powershell Konfigurationsskripte zur Einrichtung und Einstellung für Serverumgebung
## Domain erstellen:
1. Ein Windows Server "Base Image" mit Windows Server .ISO erstellen
2. Netzwerkkonfiguration mit `sconfig` einstellen
	- Tipp: IP Adresse: 172.16.0.1 ( "meistens nicht vergeben" )
### Skript 1
- Rechnernamens in "DC1" ändern
- IP-Konfiguration ändern:
	-   IP : 10.0.0.1 / 8
	-   GW : 10.0.0.1
	-   DNS : 10.0.0.1, 8.8.8.8
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
### Skript 2
Domäne und DNS installieren und konfigurieren

**Version:** Windows Server 2019
 ```powershell
# Vordefiniertes Passwort in Variable speichern
$SafeModeAdminPassword = (ConvertTo-SecureString -AsPlainTex ` "Str0ngPa55w.rd!" -Force) `

# Active-Directory-Domain-Services installieren
Install-WindowsFeature -Name AD-Domain-Services -IncludeManagementTools `

# AD-Anbringungs Modul importieren
Import-Module -Name "ADDSDeployment" ` 

# Neue AD-Domain erstellen, Passwort vergeben
Install-ADDSForest ` 
	-CreateDnsDelegation:$false `  
	-DatabasePath "C:\Windows\NTDS" `  
	-DomainMode "WinThreshold" ` 
	-DomainName "blueteam.int" `
	-DomainNetbiosName "BLUETEAM" `  
	-ForestMode "WinThreshold" `  
	-InstallDns:$true `  
	-LogPath "C:\Windows\NTDS" `  
	-NoRebootOnCompletion:$false `  
	-SysvolPath "C:\Windows\SYSVOL" `  
	-Force:$true `  
	-SafeModeAdministratorPassword $SafeModeAdminPassword ` 

# Computer neustarten, Änderungen übernehmen
Restart-Computer
```

**Version:** Windows Server 2016
```powershell
Import-Module -Name "ADDSDeployment" `
Install-ADDSForest `
	-CreateDnsDelegation:$false `
	-DatabasePath "C:\Windows\NTDS" `
	-DomainMode "WinThreshold" `
	-DomainName "future.int" `
	-DomainNetbiosName "FUTURE" `
	-ForestMode "WinThreshold" `
	-InstallDns:$true `
	-LogPath "C:\Windows\NTDS" `
	-NoRebootOnCompletion:$false `
	-SysvolPath "C:\Windows\SYSVOL" `
	-Force:$true
```
### Skript 3
 - Erstellen eines Benutzers
 - Erstellen einer OU namens "IT"
 - Verschieben des erstellten Benutzers in die OU "IT"
 - Erstellen eines Dateiverzeichnisses
	-   `C:\Dateien`
	- Angelegte Benutzer soll Zugriffsrechte auf Lokalen Ordner bekommen.
-   Zuordnung der ACL Rechte für den erstellten Benutzer
-   Berechtigungen Lesen-Schreiben-Ausführen.
```powershell
# Neuen AD-Benutzer erstellen
New-ADUser ` 
	-Name "CableGuy" ` 
	-SamAccountName "CableGuy" ` 
	-UserPrincipalName "CableGuy@blueteam.int" ` 
	-AccountPassword (ConvertTo-SecureString "Str0ngPa55w.rd!" ` 
	-AsPlainText ` 
	-Force) ` 
	-Enabled $true `

# Neue Organisations Einheit erstellen
New-ADOrganizationalUnit -Name "IT" `

# AD-Benutzer in Organisations-Einheit verschieben
Move-ADObject ` 
	-Identity "CN=CableGuy" ` 
	-TargetPath "OU=blueteam" `

# Ordner erstellen
New-Item -ItemType Directory -Path "C:\Dateien" `

# Zugriffsrechte für Benutzer auf den Ordner zuweisen
$user = "CableGuy" `
$acl = Get-Acl -Path "C:\Dateien" `
$permission = New-Object System.Security.AccessControl.FileSystemAccessRule($user,$permission,"Allow") ` 
$acl.SetAccessRule($permission) ` 
$acl | Set-Acl -Path "C:\Dateien" `

# Aktiviere die Windows-Firewall
Set-NetFirewallProfile `
	-Profile Domain,Public,Private `
	-Enabled True `

# Installiere wichtige Updates
Install-WindowsUpdate `
	-AcceptAll `
	-AutoReboot `

# Erstelle einen neuen lokalen Administrator-Account mit zufälligem Kennwort
$adminPassword = ConvertTo-SecureString `
	-String "P@ssw0rd123!" `
	-AsPlainText `
	-Force `

New-LocalUser `
	-Name "Hacker" `
	-Password $adminPassword `
	-PasswordNeverExpires `
	-AccountNeverExpires `
	-UserMayNotChangePassword `
	-Description "Lokaler Administratorzugang für Hacker" `

# Neustart um Änderungen zu übernehmen
Restart-Computer
```
### AD-Account Befehle:
|Cmdlet|Beschreibung|
|--------|---------------|
|New-ADUser|Benutzerkonto erstellen|
|GetADUser|Benutzerkonto abrufen|
|Set-ADUser|Kontoeigenschaften änder|
|Remove_ADUser|Benutzerkonto löschen|
|Set-ADAccountPassword|Kontopasswort zurücksetzen|
|Unlock-ADAccount|Kontosperre aufheben|
|Enable-ADAccount|Benutzerkonto aktivieren|
|Disable-ADAccount|Benutzerkonto deaktivieren|