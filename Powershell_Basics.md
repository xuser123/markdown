**Hinweis:** *Groß- und Kleinschreibung in der Syntax spielt keine Rolle, nur wenn es um Passworte geht.*
### Versionen (absteigend sortiert)
|Ver.|Release|Notes|
|---|---|---|
|7.2|Nov '21|.NET 6.0 |
|7.1|Nov '20|.NET 5.0|
|7.0|Mar '20|.NET Core 3.1|
|6.0|Sep '18|.NET Core 2.0, Linux- & macOS-Support|
|5.1|Aug '16|WMF 5.1, Win: 10, Server 2016|
|5.0|Feb '16|WMF 5.0, Win: 10 1511,8 ,7 SP1, Server 2008 R2 & 2012|
|4.0|Oct '13|Win8.1, Win: 7 SP1, Server 2008 SP1 & 2012|
**Version 5.1** wird noch in vielen Unternehmen benutzt! 

Version identifizieren:
```powershell
$PSVersionTable 
```
Ausgabe-Beispiel ( Version 5.1 ):
```powershell
Name                           Value
----                           -----
PSVersion                      5.1.22621.608
PSEdition                      Desktop
PSCompatibleVersions           {1.0, 2.0, 3.0, 4.0...}
BuildVersion                   10.0.22621.608
CLRVersion                     4.0.30319.42000
WSManStackVersion              3.0
PSRemotingProtocolVersion      2.3
SerializationVersion           1.1.0.1
```
Administrative Privilegien wenn "Administrator" in der Titelleiste steht.
- User Account Control (UAC) muss aktiviert sein
- Rechtsklick, "Als Administrator ausführen" klicken

Als Benutzer eine Aufgabe mit erhöhten Administratorrechten ausführen:
```powershell
runas /user:DOMAIN\Administrator "powershell.exe -Command <Befehl>" 
```
### Ausführungsrichtlinien
Aktuelle Ausführungsrichtlinie ausgeben:
`get-ExecutionPolicy `
- **Restricted**
	- Nur interaktive Befehle
- **AllSigned**
	- Skripts müssen digital signiert sein
- **RemoteSigned**
	- Skripts nur von vertrauenswürdigen Quellen
- **Unrestricted**
	- Alle Skripts ohne Einschränkungen

### Was sind "Scopes" ?
Hierarchische Organisationen & Definitionen für Sichtbarkeiten von:
- Variablen
- Funktionen
- Skript-Elemente
- Code-Teile

Scopes werden durch **Ausführungsrichtlinie** beeinflusst
- Wichtige Scopes:
	- **Lokaler** Scope
	- **Script** Scope
	- **Privater** Scope

Grad der Detaillierung von Daten oder Kontrollstruktur:
- Hohe Granularität = feine Unterteilung
- Niedriege Granularität = grobe Unterteilung

### Scopes und Ausführungsrichtlinie
```powershell
PS C:\WINDOWS\system32> get-executionpolicy -List

        Scope ExecutionPolicy
        ----- ---------------
MachinePolicy       Undefined
   UserPolicy       Undefined
      Process       Undefined
  CurrentUser       Undefined
 LocalMachine       Undefined
```

### Cmdlet "Command-let"
In der Powershell-Umgebung nativ implemtierte Aktions-Befehle zur Verwaltung von Systemen und Daten.
- Eingaben und Ausgaben der Pipeline-Weiterleitung. 
- Sammlung in Module
- Bereitstellung von Funktionalität
- Namensformat mit **Verb** und **Substantiv** Struktur
	- Verben (Beispiele):
		- `Get-`
		- `Set-`
		- `New-`
		- `Add-`
		- `Remove-`
	- Substantive (Beispiele):
		- `Service`
		- `Process`
		- `Content`
	- `Get-Process` oder `Set-Content`
- Prefixe zur Gruppierung von Funktionalitäten
	- `AD` Active Directory 
	- `SP` SharePoint
	- `Az` Azure

### User Management cmdlets
|Cmdlet|Funktion|
|---|---|
|New-ADUser|Benutzer-Account erstellen|
|Set-ADUser|Account-Eigenschaften ändern|
|Remove-ADUser|Account löschen|
|Set-ADAccountPassword|Account-Passwort zurücksetzen|
|Set-ADAccountExpiration|Passwort-Ablaufdatum ändern|
|Unlock-ADAccount|Account-Sperre aufheben|
|Enable-ADAccount|Bestehnden Account aktivieren|
|Disable-ADAccount|Bestehnden Account deaktivieren|
Beispiel: `New-ADUser "Jon Doe" -Department IT `

### Profiles
Powershell-Start-Skripte zur Anpassung der Umgebung, bspw. für Hintergrundfarben.
- Profiltypen verschiedener Ebenen in mehrere Profildateien:
	- Alle Benutzer, alle Hosts
		- `$PSHOME\Profile.ps1`
	- Alle Benutzer, aktueller Host
		- `$PSHOME\Microsoft.Powershell_profile.ps1`
	- Aktueller Benutzer, alle Hosts
		- `$Home[My ]Documents\Powershell\Profile.ps1`
	- Aktueller Benutzer, aktueller Host
		- `$Home[My ]Documents\Powershell\Microsoft.Powershell_profile.ps1`
- Zwei Variablen:
	- `$PSHOME` Powershell-Installationsverzeichnis
	- `$Home` Benutzer-Startverzeichnis
- bspw. Visual Studio Code unterstützt Profile

### Groups
Gruppenbereiche:
- **Lokale** Gruppe
	- gleiche Ressourcen auf lokalem Computer 
- **Lokale** Gruppe einer Domäne
	- gleiche Mitgliedschafts-Optionen möglich
- **Universelle** Gruppe
	- gleiche Gesamtstruktur möglich
- **Globale** Gruppe
	- Verschiedene Gesamtstrukturen möglich

### Computer Object Management Cmdlets
|Cmdlet|Funktion|
|---|---|
|`New-ADComputer`|Computer-Account erstellen|
|`Set-ADComputer`|Computer-Account-Eigenschaften ändern|
|`Remove-ADComputer`|Computer-Account löschen|
|`Reset-CommputerMachinePassword`|Computer-Account-Passwort zurücksetzen|
Vertrauensbeziehung zwischen Computer und Domäne verifiziert / reparieren:
`Test-ComputerSecureChannel`

Beispiel: `New-ADComputer -Name LON-CL10 -Path "ou=marketing,dc=adatum,dc=com" -Enable $true`

### Active Directory Object cmdlets
|Cmdlet|Funktion|
|---|---|
|`New-ADObject`|Active-Directory Object erstellen|
|`Set-ADObject`|Active-Directory Object-Eigenschaften ändern|
|`Get-ADObject`|Active-Directory Object-Eigenschaften anzeigen|
|`Remove-ADObject`|Active-Directory Object löschen|
|`Rename-ADObject`|Active-Directory Object umbenennen|
|`Restore-ADObject`|gelöschte Active-Directory Object wiederherstellen|
|`Move-ADObject`|Active-Directory Object in Container verschieben|

Active-Directory Object zwischen zwei Domain-Controller synchronisieren:
```powershell
Sync-ADObject
```
Beispiel: `New-ADObject -Name "JonDoeKontakt" -Type contact`

### Hilfsmittel

Nach Befehl suchen:
```powershell
PS C:\Users\Administrator.ADATUM> Get-Help *resolve* # Befehle mit Suchwort finden # Variante 1

Name                              Category  Module                    Synopsis                     
----                              --------  ------                    --------                     
Resolve-Path                      Cmdlet    Microsoft.PowerShell.M... Resolves the wildcard char...
Resolve-DnsName                   Cmdlet    DnsClient                 Resolve-DnsName...           
Resolve-NfsMappedIdentity         Function  NFS                       ...                          



PS C:\Users\Administrator.ADATUM> Get-Command *resolve* # Befehle mit Suchwort finden # Variante 2

CommandType     Name                                               Version    Source               
-----------     ----                                               -------    ------               
Function        Resolve-NfsMappedIdentity                          1.0        NFS                  
Cmdlet          Resolve-DnsName                                    1.0.0.0    DnsClient            
Cmdlet          Resolve-Path                                       3.1.0.0    Microsoft.PowerShe...



PS C:\Users\Administrator.ADATUM> Get-Command -Verb resolve # Befehle mit Suchwort finden # Variante 3

CommandType     Name                                               Version    Source               
-----------     ----                                               -------    ------               
Function        Resolve-NfsMappedIdentity                          1.0        NFS                  
Cmdlet          Resolve-DnsName                                    1.0.0.0    DnsClient            
Cmdlet          Resolve-Path                                       3.1.0.0    Microsoft.PowerShe...
```


Lern-VM von/für learn.microsoft:
https://lms.godeploy.it/Courses/DelegateView/601be13f-32d8-ed11-9561-00155d800002

"Groß- und Kleinschreibung spielt keine Rolle, nur wenn es um Passworte geht."
Hilfs-Befehle:
- `Get-Help`
	- `Get-Help about* # Regex` 
- `Get-Command`
	- `Get-Command *suchwort* # Regex`
	- `Get-Command -Verb Suchverb # Regex` 
	- `Get-Command -noun Suchsubstantiv # Regex` 
	- `Get-Command -Verb Suchverb -Noun Suchsubstantiv # Regex`
- `Get-Module *Suchwort* -ListAvailable # Regex`
- `Show-Command`

```powershell
PS C:\Users\Administrator.ADATUM> Get-Help *resolve*                                                                                                                                                                                                                                                              Name                              Category  Module                    Synopsis
----                              --------  ------                    --------
Resolve-Path                      Cmdlet    Microsoft.PowerShell.M... Resolves the wildcard characters in a path, and displays the path contents.
Resolve-DnsName                   Cmdlet    DnsClient                 Resolve-DnsName...
Resolve-NfsMappedIdentity         Function  NFS                       ...

PS C:\Users\Administrator.ADATUM> Get-Command *resolve*

CommandType     Name                                               Version    Source
-----------     ----                                               -------    ------
Function        Resolve-NfsMappedIdentity                          1.0        NFS
Cmdlet          Resolve-DnsName                                    1.0.0.0    DnsClient
Cmdlet          Resolve-Path                                       3.1.0.0    Microsoft.PowerShell.Management

PS C:\Users\Administrator.ADATUM> Get-Command -Verb resolve

CommandType     Name                                               Version    Source
-----------     ----                                               -------    ------
Function        Resolve-NfsMappedIdentity                          1.0        NFS
Cmdlet          Resolve-DnsName                                    1.0.0.0    DnsClient
Cmdlet          Resolve-Path                                       3.1.0.0    Microsoft.PowerShell.Management

PS C:\Users\Administrator.ADATUM> Get-Command -Verb Set -Noun *adapter*

CommandType     Name                                               Version    Source
-----------     ----                                               -------    ------
Function        Set-NetAdapter                                     2.0.0.0    NetAdapter
Function        Set-NetAdapterAdvancedProperty                     2.0.0.0    NetAdapter
Function        Set-NetAdapterBinding                              2.0.0.0    NetAdapter
Function        Set-NetAdapterChecksumOffload                      2.0.0.0    NetAdapter
Function        Set-NetAdapterEncapsulatedPacketTaskOffload        2.0.0.0    NetAdapter
Function        Set-NetAdapterIPsecOffload                         2.0.0.0    NetAdapter
Function        Set-NetAdapterLso                                  2.0.0.0    NetAdapter
Function        Set-NetAdapterPacketDirect                         2.0.0.0    NetAdapter
Function        Set-NetAdapterPowerManagement                      2.0.0.0    NetAdapter
Function        Set-NetAdapterQos                                  2.0.0.0    NetAdapter
Function        Set-NetAdapterRdma                                 2.0.0.0    NetAdapter
Function        Set-NetAdapterRsc                                  2.0.0.0    NetAdapter
Function        Set-NetAdapterRss                                  2.0.0.0    NetAdapter
Function        Set-NetAdapterSriov                                2.0.0.0    NetAdapter
Function        Set-NetAdapterUso                                  2.0.0.0    NetAdapter
Function        Set-NetAdapterVmq                                  2.0.0.0    NetAdapter        

PS C:\Users\Administrator.ADATUM> Get-Module *sched* -ListAvailable

Directory: C:\Windows\system32\WindowsPowerShell\v1.0\Modules


ModuleType Version    Name                                ExportedCommands
---------- -------    ----                                ----------------
Binary     1.1.0.0    PSScheduledJob                      {New-JobTrigger, Add-JobTrigger, Remove-JobTrigger, Get-JobTrigger...}
Manifest   1.0.0.0    ScheduledTasks                      {Get-ScheduledTask, Set-ScheduledTask, Register-ScheduledTask, Unregister-ScheduledTask...}
```

#### Computer ausschalten
`shutdown /s /t <Sekunden>`
#### MAC Adresse auslesen
`Get-NetAdapter | Select-Object -ExpandProperty PhysicalAddress`
#### Gespeicherte Zugangspunkte (SSID) anzeigen:
`(netsh wlan show profiles) | Select-String "\:(.+)$" | %{$name=$_.Matches.Groups[1].Value.Trim(); $_} `
#### WLAN-Passwort anzeigen:
`netsh wlan show profile name=<SSID> key=clear `
Wifi-Passwörter werden erst nach einer erfolgreichen Verbindung gespeichert
#### Netzwerkverbindungen listen alle 60 Sekunden
`netstat -ao 60`
#### Als Administrator ausführen
Variante 1
`runas /noprofile /user:mymachine\administrator Set-ExecutionPolicy`
Variante 2
`runas /profile /user:HAL712\administrator Set-ExecutionPolicy`
#### Weitere nützliche Befehle
`Get-Help about*`
`Get-ADUser`
`Get-Help Get-ADUser`
`Get-Eventlog`
`Update-Help`
`Get-NetSetFirewall`
`Get-NetFirewallAddressFilter`
`Get-NetFirewallAddressFilter > C:\Users\mjsec\Desktop\deleteme.txt`
`Out-File`
`Get-Help Out-File`
`Get-Help Out-File -full`
`Get-Help about_core_commands`
`Get-smbshare`
`Get-NetTcpConnection -OwningProcess <Port>`
`Get-NetTCPConnection | Where-Object state -ne Bound | Select-Object LocalAddress,LocalPort,RemoteAddress,RemotePort,State,OwningProcess, @{n="ProzessName"; e={( Get-Prozess -Id $_.OwningProcess).ProcessName}} | Out-GridView`
### Dateien durchsuchen
Core-Commands und optionale Parameter:
- `Get-ChildItem `
	- Beinhaltete Dateien,
- `-Path `
	- im Verzeichnis-Pfad,
- `-Recurse `
	- und auch in Unterverzeichnisse,
- `-Include ` / `-Exclude `
	- mit RegEx-Filter als Wildcard durchsuchen

Syntax-Beispiele: 
- `Get-ChildItem -Path C:\Windows -Recurse -Include utilman.*
	- In Verzeichnis nach Dateinamen ("utilman") suchen
- `utilman.* `
	- nach Dateinamen ("utilman")
oder:
- `*.exe `
	- nach Dateinamenerweiterung (exe)
oder:
- `*[aeiou] `
	- nach **einem** Buchstabe (Vokal) am Ende des Dateinamen
- `[0-9] `
	- nach **einer** Ziffer in Dateinamen (zwischen 0 und 9)
- `-Exclude *test* `
	- suchen aber bei Dateinamen-Wort ("test") ausschließen

Alternativ funktioniert auch `ls` oder `find` (aus Linux Bash), jedoch mit Unterschiede in der Syntax. ("Aliases")

Zertifikate auslesen:
```powershell
Get-ChildItem -Path CERT: -Recurse
```

### Variablen auslesen

Variable für Log-verzeichnis:
`$logPath = "C:\Logs\"`

Variablen-Typ anzeigen:
`$logPath.GetType()`

```powershell
PS C:\Users\Administrator.ADATUM> $logPath = "C:\Logs\"
PS C:\Users\Administrator.ADATUM> $logPath.GetType()

IsPublic IsSerial Name                                     BaseType
-------- -------- ----                                     --------
True     True     String                                   System.Object
```

### Eigenschaften und Methoden
```powershell
PS C:\Users\Administrator.ADATUM> $logPath | Get-Member

   TypeName: System.String

Name             MemberType            Definition
----             ----------            ----------
Clone            Method                System.Object Clone(), System.Object ICloneable.Clone()
CompareTo        Method                int CompareTo(System.Object value), int CompareTo(string strB), int ICompara...
Contains         Method                bool Contains(string value)
CopyTo           Method                void CopyTo(int sourceIndex, char[] destination, int destinationIndex, int c...
EndsWith         Method                bool EndsWith(string value), bool EndsWith(string value, System.StringCompar...
Equals           Method                bool Equals(System.Object obj), bool Equals(string value), bool Equals(strin...
GetEnumerator    Method                System.CharEnumerator GetEnumerator(), System.Collections.IEnumerator IEnume...
GetHashCode      Method                int GetHashCode()
GetType          Method                type GetType()
GetTypeCode      Method                System.TypeCode GetTypeCode(), System.TypeCode IConvertible.GetTypeCode()
IndexOf          Method                int IndexOf(char value), int IndexOf(char value, int startIndex), int IndexO...
IndexOfAny       Method                int IndexOfAny(char[] anyOf), int IndexOfAny(char[] anyOf, int startIndex), ...
Insert           Method                string Insert(int startIndex, string value)
IsNormalized     Method                bool IsNormalized(), bool IsNormalized(System.Text.NormalizationForm normali...
LastIndexOf      Method                int LastIndexOf(char value), int LastIndexOf(char value, int startIndex), in...
LastIndexOfAny   Method                int LastIndexOfAny(char[] anyOf), int LastIndexOfAny(char[] anyOf, int start...
Normalize        Method                string Normalize(), string Normalize(System.Text.NormalizationForm normaliza...
PadLeft          Method                string PadLeft(int totalWidth), string PadLeft(int totalWidth, char paddingC...
PadRight         Method                string PadRight(int totalWidth), string PadRight(int totalWidth, char paddin...
Remove           Method                string Remove(int startIndex, int count), string Remove(int startIndex)
Replace          Method                string Replace(char oldChar, char newChar), string Replace(string oldValue, ...
Split            Method                string[] Split(Params char[] separator), string[] Split(char[] separator, in...
StartsWith       Method                bool StartsWith(string value), bool StartsWith(string value, System.StringCo...
Substring        Method                string Substring(int startIndex), string Substring(int startIndex, int length)
ToBoolean        Method                bool IConvertible.ToBoolean(System.IFormatProvider provider)
ToByte           Method                byte IConvertible.ToByte(System.IFormatProvider provider)
ToChar           Method                char IConvertible.ToChar(System.IFormatProvider provider)
ToCharArray      Method                char[] ToCharArray(), char[] ToCharArray(int startIndex, int length)
ToDateTime       Method                datetime IConvertible.ToDateTime(System.IFormatProvider provider)
ToDecimal        Method                decimal IConvertible.ToDecimal(System.IFormatProvider provider)
ToDouble         Method                double IConvertible.ToDouble(System.IFormatProvider provider)
ToInt16          Method                int16 IConvertible.ToInt16(System.IFormatProvider provider)
ToInt32          Method                int IConvertible.ToInt32(System.IFormatProvider provider)
ToInt64          Method                long IConvertible.ToInt64(System.IFormatProvider provider)
ToLower          Method                string ToLower(), string ToLower(cultureinfo culture)
ToLowerInvariant Method                string ToLowerInvariant()
ToSByte          Method                sbyte IConvertible.ToSByte(System.IFormatProvider provider)
ToSingle         Method                float IConvertible.ToSingle(System.IFormatProvider provider)
ToString         Method                string ToString(), string ToString(System.IFormatProvider provider), string ...
ToType           Method                System.Object IConvertible.ToType(type conversionType, System.IFormatProvide...
ToUInt16         Method                uint16 IConvertible.ToUInt16(System.IFormatProvider provider)
ToUInt32         Method                uint32 IConvertible.ToUInt32(System.IFormatProvider provider)
ToUInt64         Method                uint64 IConvertible.ToUInt64(System.IFormatProvider provider)
ToUpper          Method                string ToUpper(), string ToUpper(cultureinfo culture)
ToUpperInvariant Method                string ToUpperInvariant()
Trim             Method                string Trim(Params char[] trimChars), string Trim()
TrimEnd          Method                string TrimEnd(Params char[] trimChars)
TrimStart        Method                string TrimStart(Params char[] trimChars)
Chars            ParameterizedProperty char Chars(int index) {get;}
Length           Property              int Length {get;}
```

### Zwei Variablen kombinieren
Zeichen im Wert ersetzen:
```powershell
PS C:\Users\Administrator.ADATUM> $logFile = "log.txt" # Neue Variable Wert zuweisen
PS C:\Users\Administrator.ADATUM> $logPath += $logFile # Variable zu Variable hinzufügen
PS C:\Users\Administrator.ADATUM> $logPath # Wert Ausgeben
C:\Logs\log.txt
PS C:\Users\Administrator.ADATUM> $logPath.Replace("C:","D:") # Zeichen ersetzen
D:\Logs\log.txt
PS C:\Users\Administrator.ADATUM> $logPath = $logPath.Replace("C:","D:")
PS C:\Users\Administrator.ADATUM> $logPath
D:\Logs\log.txt
```

### Datum/Zeit
Variablen:
```powershell
PS C:\Users\Administrator.ADATUM> $today = Get-Date # Heutiges Datum als Wert zuweisen
PS C:\Users\Administrator.ADATUM> $today.GetType() # Typ ausgeben

IsPublic IsSerial Name                                     BaseType
-------- -------- ----                                     --------
True     True     DateTime                                 System.ValueType


PS C:\Users\Administrator.ADATUM> $today | Get-Member # Eigenschaften und Methoden ausgeben


   TypeName: System.DateTime

Name                 MemberType     Definition
----                 ----------     ----------
Add                  Method         datetime Add(timespan value)
AddDays              Method         datetime AddDays(double value)
AddHours             Method         datetime AddHours(double value)
AddMilliseconds      Method         datetime AddMilliseconds(double value)
AddMinutes           Method         datetime AddMinutes(double value)
AddMonths            Method         datetime AddMonths(int months)
AddSeconds           Method         datetime AddSeconds(double value)
AddTicks             Method         datetime AddTicks(long value)
AddYears             Method         datetime AddYears(int value)
CompareTo            Method         int CompareTo(System.Object value), int CompareTo(datetime value), int ICompara...
Equals               Method         bool Equals(System.Object value), bool Equals(datetime value), bool IEquatable[...
GetDateTimeFormats   Method         string[] GetDateTimeFormats(), string[] GetDateTimeFormats(System.IFormatProvid...
GetHashCode          Method         int GetHashCode()
GetObjectData        Method         void ISerializable.GetObjectData(System.Runtime.Serialization.SerializationInfo...
GetType              Method         type GetType()
GetTypeCode          Method         System.TypeCode GetTypeCode(), System.TypeCode IConvertible.GetTypeCode()
IsDaylightSavingTime Method         bool IsDaylightSavingTime()
Subtract             Method         timespan Subtract(datetime value), datetime Subtract(timespan value)
ToBinary             Method         long ToBinary()
ToBoolean            Method         bool IConvertible.ToBoolean(System.IFormatProvider provider)
ToByte               Method         byte IConvertible.ToByte(System.IFormatProvider provider)
ToChar               Method         char IConvertible.ToChar(System.IFormatProvider provider)
ToDateTime           Method         datetime IConvertible.ToDateTime(System.IFormatProvider provider)
ToDecimal            Method         decimal IConvertible.ToDecimal(System.IFormatProvider provider)
ToDouble             Method         double IConvertible.ToDouble(System.IFormatProvider provider)
ToFileTime           Method         long ToFileTime()
ToFileTimeUtc        Method         long ToFileTimeUtc()
ToInt16              Method         int16 IConvertible.ToInt16(System.IFormatProvider provider)
ToInt32              Method         int IConvertible.ToInt32(System.IFormatProvider provider)
ToInt64              Method         long IConvertible.ToInt64(System.IFormatProvider provider)
ToLocalTime          Method         datetime ToLocalTime()
ToLongDateString     Method         string ToLongDateString()
ToLongTimeString     Method         string ToLongTimeString()
ToOADate             Method         double ToOADate()
ToSByte              Method         sbyte IConvertible.ToSByte(System.IFormatProvider provider)
ToShortDateString    Method         string ToShortDateString()
ToShortTimeString    Method         string ToShortTimeString()
ToSingle             Method         float IConvertible.ToSingle(System.IFormatProvider provider)
ToString             Method         string ToString(), string ToString(string format), string ToString(System.IForm...
ToType               Method         System.Object IConvertible.ToType(type conversionType, System.IFormatProvider p...
ToUInt16             Method         uint16 IConvertible.ToUInt16(System.IFormatProvider provider)
ToUInt32             Method         uint32 IConvertible.ToUInt32(System.IFormatProvider provider)
ToUInt64             Method         uint64 IConvertible.ToUInt64(System.IFormatProvider provider)
ToUniversalTime      Method         datetime ToUniversalTime()
DisplayHint          NoteProperty   DisplayHintType DisplayHint=DateTime
Date                 Property       datetime Date {get;}
Day                  Property       int Day {get;}
DayOfWeek            Property       System.DayOfWeek DayOfWeek {get;}
DayOfYear            Property       int DayOfYear {get;}
Hour                 Property       int Hour {get;}
Kind                 Property       System.DateTimeKind Kind {get;}
Millisecond          Property       int Millisecond {get;}
Minute               Property       int Minute {get;}
Month                Property       int Month {get;}
Second               Property       int Second {get;}
Ticks                Property       long Ticks {get;}
TimeOfDay            Property       timespan TimeOfDay {get;}
Year                 Property       int Year {get;}
DateTime             ScriptProperty System.Object DateTime {get=if ((& { Set-StrictMode -Version 1; $this.DisplayHi...

```

### Logfile Namensvergabe
Berechnen eines Datums: ( basierend auf Datum )
```powershell
PS C:\Users\Administrator.ADATUM> $logFile = [string]$today.Year + "-" + $today.Month + "-" + $today.Day + "-" + $today.Hour + "-" + $today.Minute + ".txt"
PS C:\Users\Administrator.ADATUM> $cutOffDate = $today.AddDays(-30) # Datum vor 30 Tagen berechnen
```

Benutzer anzeigen die seit bestimmten Datum angemeldet sind:
```powershell
PS C:\Users\Administrator.ADATUM> Get-ADUser -Properties LastLogonDate -Filter {LastLogonDate -gt $cutOffDate}


DistinguishedName : CN=Administrator,CN=Users,DC=Adatum,DC=com
Enabled           : True
GivenName         :
LastLogonDate     : 4/12/2023 3:17:28 AM
Name              : Administrator
ObjectClass       : user
ObjectGUID        : 9d1013dd-d0ce-421d-9f3d-de3b9aa6fa68
SamAccountName    : Administrator
SID               : S-1-5-21-913749354-169946239-1665692169-500
Surname           :
UserPrincipalName :
```

### Datenbanken
Alle Benutzer der Marketing Abteilung in Variable als Datenbank einfügen, spezielle Ausgaben:
```powershell
PS C:\Users\Administrator.ADATUM> $mktgUsers = Get-ADUser -Filter {Department -eq "Marketing"} -Properties Department
PS C:\Users\Administrator.ADATUM> $mktgUsers.count # Wieviele Benutzer sind in Datenbank
52
PS C:\Users\Administrator.ADATUM> $mktgUsers[0] # Ersten Datenbank Eintrag ausgeben

Department        : Marketing
DistinguishedName : CN=Lizzie Terrell,OU=Marketing,DC=Adatum,DC=com
Enabled           : True
GivenName         : Lizzie
Name              : Lizzie Terrell
ObjectClass       : user
ObjectGUID        : f50fe487-c6ec-4ed9-8ee7-31a0a86d380c
SamAccountName    : Lizzie
SID               : S-1-5-21-913749354-169946239-1665692169-1119
Surname           : Terrell
UserPrincipalName : Lizzie@adatum.com
```

Datenbank verändern, bestimmte Spalten ausgeben:
```powershell
PS C:\Users\Administrator.ADATUM> $mktgUsers | Set-ADUser -Department "Business Development"
PS C:\Users\Administrator.ADATUM> $mktgUsers | Format-Table Name,Department # Bestimmte Datenbank-Einträge ausgeben

Name              Department
----              ----------
Lizzie Terrell    Marketing
Erna ODonnell    Marketing
Sergio Fredericks Marketing
Francisco Sonnier Marketing
Isabella Powers   Marketing
Shari Stephenson  Marketing
Williams Zink     Marketing
Verna Sandoval    Marketing
Ana Cantrell      Marketing
Tasha Stokes      Marketing
Olivia Cline      Marketing
Ada Russell       Marketing
Ernie Moultrie    Marketing
Julian Shifflett  Marketing
Teddy Schiller    Marketing
Rachael Macias    Marketing
Elinor Trevino    Marketing
Colin Bracken     Marketing
Derrick Tolley    Marketing
Spencer McDaniel  Marketing
Sidney Rincon     Marketing
Elise Hughes      Marketing
Tommie Haddad     Marketing
Lamar Silas       Marketing
Patty Brooks      Marketing
Eva Newton        Marketing
Annie Conner      Marketing
Ivy Oliver        Marketing
Becky Kennedy     Marketing
Laurel Wilkinson  Marketing
Shawna Logan      Marketing
Nadia Cotton      Marketing
Johnathon Chinn   Marketing
Samuel Butcher    Marketing
Anthony Lynch     Marketing
Kian Woodward     Marketing
Zachary Hunt      Marketing
Naomi Booth       Marketing
Courtney Atkins   Marketing
Bill Norman       Marketing
Leo Butcher       Marketing
Isaac May         Marketing
Ella Perry        Marketing
Huu Hoang         Marketing
Ilene Beukema     Marketing
Krisjanis Roze    Marketing
Benjamin Kavo     Marketing
Elizabete Briede  Marketing
Mihails Rudzitis  Marketing
Zan Kustrin       Marketing
Alida Eglite      Marketing
Hanh Trang        Marketing
```

Andere Benutzer nachträglich einer Datenbank hinzufügen:
```powershell
PS C:\Users\Administrator.ADATUM> Get-ADUser -Filter {Department -eq "Marketing"}
PS C:\Users\Administrator.ADATUM> Get-ADUser -Filter {Department -eq "Business Development"}                           

DistinguishedName : CN=Lizzie Terrell,OU=Marketing,DC=Adatum,DC=com
Enabled           : True
GivenName         : Lizzie
Name              : Lizzie Terrell
ObjectClass       : user
ObjectGUID        : f50fe487-c6ec-4ed9-8ee7-31a0a86d380c
SamAccountName    : Lizzie
SID               : S-1-5-21-913749354-169946239-1665692169-1119
Surname           : Terrell
UserPrincipalName : Lizzie@adatum.com

DistinguishedName : CN=Erna O'Donnell,OU=Marketing,DC=Adatum,DC=com
Enabled           : True
GivenName         : Erna
Name              : Erna O'Donnell
ObjectClass       : user
ObjectGUID        : 2ee0c62b-aa1d-48c9-ac75-528c0a85bf70
SamAccountName    : Erna
SID               : S-1-5-21-913749354-169946239-1665692169-1122
Surname           : O'Donnell
UserPrincipalName : Erna@adatum.com

DistinguishedName : CN=Sergio Fredericks,OU=Marketing,DC=Adatum,DC=com
Enabled           : True
GivenName         : Sergio
Name              : Sergio Fredericks
ObjectClass       : user
ObjectGUID        : 07cce3b6-ee19-4d05-ad58-28187afa6ef2
SamAccountName    : Sergio
SID               : S-1-5-21-913749354-169946239-1665692169-1128
Surname           : Fredericks
UserPrincipalName : Sergio@adatum.com

DistinguishedName : CN=Francisco Sonnier,OU=Marketing,DC=Adatum,DC=com
Enabled           : True
GivenName         : Francisco
Name              : Francisco Sonnier
ObjectClass       : user
ObjectGUID        : cd9bca16-d382-4e0e-b357-c1678c08559a
SamAccountName    : Francisco
SID               : S-1-5-21-913749354-169946239-1665692169-1131
Surname           : Sonnier
UserPrincipalName : Francisco@adatum.com
```

### Arrays
Array Liste mit Computernamen erstellen, erweitern, reduzieren, ausgeben: 
```powershell
PS C:\Users\Administrator.ADATUM> [System.Collections.ArrayList]$computers="LON-SRV1","LON-SRV2","LON-DC1"
PS C:\Users\Administrator.ADATUM> $computers.IsFixedSize # Array-Größen Fixierung prüfen
False
PS C:\Users\Administrator.ADATUM> $computers.Add("LON-DC2") # Computernamen zu Array hinzufügen
3
PS C:\Users\Administrator.ADATUM> $computers.Remove("LON-SRV2") # Computernamen in Array entfernen
PS C:\Users\Administrator.ADATUM> $computers # Einträge ausgeben
LON-SRV1
LON-DC1
LON-DC2
```

### Hashtables
Hashtable erstellen, ausgeben, Werte extrahieren, aktualisieren, Werte hinzufügen, entfernen:
```powershell
PS C:\Users\Administrator.ADATUM> $mailList=@{"Frank"="Frank@fabriakm.com";"Libby"="LHayward@contso.com";"Matej"="MSTaojanov@tailspintoys.com"}
PS C:\Users\Administrator.ADATUM> $mailList # Werte ausgeben

Name                           Value
----                           -----
Matej                          MSTaojanov@tailspintoys.com
Libby                          LHayward@contso.com
Frank                          Frank@fabriakm.com


PS C:\Users\Administrator.ADATUM> $mailList.Libby # Email von Libby ausgeben
LHayward@contso.com
PS C:\Users\Administrator.ADATUM> $mailList.Libby="Libby.Hayward@contoso.com" #Email aktualisieren
PS C:\Users\Administrator.ADATUM> $mailList.Add("Stela","Stela.Sahiti") # Namen und Emails hinzufügen
PS C:\Users\Administrator.ADATUM> $mailList.Remove("Frank") # Eintrag entfernen
PS C:\Users\Administrator.ADATUM> $mailList

Name                           Value
----                           -----
Stela                          Stela.Sahiti
Matej                          MSTaojanov@tailspintoys.com
Libby                          Libby.Hayward@contoso.com
```

### Skripts
Mit Liste bekannter Adapter Ungelisteten Netzwerkadapter detektieren:
```powershell
$knownAdapters = Get-Content 'C:\Path\To\KnownAdapters.txt'
$installedAdapters = Get-NetAdapter | Select-Object Name

foreach ($adapter in $installedAdapters) {
    if ($knownAdapters -notcontains $adapter.Name) {
        Write-Host "Unrecognized adapter: $($adapter.Name)"
    }
}

```

Digitales Unterzeichnen von Skripten:
```powershell
PS C:\Users\Administrator.ADATUM> Get-ChildItem Cert:\CurrentUser\My\ -CodeSigningCert # Digitales Unterzeichnen eines Scripts


   PSParentPath: Microsoft.PowerShell.Security\Certificate::CurrentUser\My

Thumbprint                                Subject
----------                                -------
6FD7C7E8319CB133DC4C1643AE7308FC04C2B899  CN=Administrator, CN=Users, DC=Adatum, DC=com
41C72F76CC21D1CF43505DF8CE700779D2A77B7B  CN=Administrator, CN=Users, DC=Adatum, DC=com


PS C:\Users\Administrator.ADATUM> $cert = Get-ChildItem Cert:\CurrentUser\My\ -CodeSigningCert
PS C:\Users\Administrator.ADATUM> Set-Location E:\Mod07\Labfiles
PS E:\Mod07\Labfiles> Rename-Item HelloWorld.txt HelloWorld.ps1
PS E:\Mod07\Labfiles> Set-AuthenticodeSignature -FilePath HelloWorld.ps1 -Certificate $cert
```

Execution Policy einstellen:
```powershell
PS E:\Mod07\Labfiles> Set-ExecutionPolicy AllSigned # Execution Policy einstellen

Execution Policy Change
The execution policy helps protect you from scripts that you do not trust. Changing the execution policy might expose you to the security risks
described in the about_Execution_Policies help topic at https:/go.microsoft.com/fwlink/?LinkID=135170. Do you want to change the execution
policy?
[Y] Yes  [A] Yes to All  [N] No  [L] No to All  [S] Suspend  [?] Help (default is "N"): A # YES to All
PS E:\Mod07\Labfiles> .\HelloWorld.ps1

PS E:\Mod07\Labfiles> Set-ExecutionPolicy Unrestricted

Execution Policy Change
The execution policy helps protect you from scripts that you do not trust. Changing the execution policy might expose you to the security risks
described in the about_Execution_Policies help topic at https:/go.microsoft.com/fwlink/?LinkID=135170. Do you want to change the execution
policy?
[Y] Yes  [A] Yes to All  [N] No  [L] No to All  [S] Suspend  [?] Help (default is "N"): Y # YES
```

Gruppe erstellen:
```powershell
PS C:\Users\Administrator.ADATUM> New-ADGroup -Name IPPhoneTest -GroupScope Universal -GroupCategory Security
PS C:\Users\Administrator.ADATUM> Move-ADObject "CN=IPPhoneTest,CN=Users,DC=Adatum,DC=com" -TargetPath "OU=IT,DC=Adatum,DC=com"
PS C:\Users\Administrator.ADATUM> Add-ADGroupMember IPPhoneTest -MeAbbi,Ida,Parsa,Tonia 
```

Skript für ipPhone Attribut Konfiguration erstellen:
```powershell
PS C:\Users\Administrator.ADATUM> # Items-Prozess mit if-Statement
PS C:\Users\Administrator.ADATUM> Set-Location E:\Mod07\Labfiles # Location mit Skript
PS E:\Mod07\Labfiles> New-Item services.txt -ItemType File


    Directory: E:\Mod07\Labfiles


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----         4/13/2023   2:35 AM              0 services.txt


PS E:\Mod07\Labfiles> Get-Service "Print Spooler" | Select -ExpandProperty Name | Out-File services.txt -Append
PS E:\Mod07\Labfiles> Get-Service "Windows Time" | Select -ExpandProperty Name | Out-File services.txt -Append
PS E:\Mod07\Labfiles> # Skript um gestoppte Services zu starten erstellen:
```

Azure Az Modul installieren und Abo aktivieren: 
```powershell
$PSVersionTable.PSVersion # Powershell Version anzeigen

Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser # Richtlinie anpassen
Install-Module -Name Az -Scope CurrentUser -Repository PSGallery -Force # Az Installation
Connect-AzAccount # Mit Azure Account verbinden
```
Output:
```powershell
# Account SubscriptionName TenantId Environment
# ------- ---------------- -------- -----------
# user@domain a1234ab1-123a-1234-1a12-12abc12abc1a AzureCloud
# Browser opens for sign in
```

Azure AD Modul installieren und mit Azure Active Directory verbinden:
```powershell
Install-Module AzureAD
Connect-AzureAD
# Anmeldung wird aufgefordert
Get-AzureADUser # Userliste anzeigen
```

Administrativen Benutzer erstellen:
```powershell
$PasswordProfile = New-Object -TypeName Microsoft.Open.AzureAD.Model.PasswordProfile
$PasswordProfile.Password = "<password>" # Passwort vergeben
```

Azure AD Benutzer in der Konsole erstellen:
```powershell
New-AzureADUser -DisplayName "Noreen Riggs" -UserPrincipalName Noreen@M365x35793811.onmicrosoft.com -AccountEnabled $true -PasswordProfile $PasswordProfile -MailNickName Noreen
   
$user = Get-AzureADUser -ObjectID Noreen@M365x35793811.onmicrosoft.com
$role = Get-AzureADDirectoryRole | Where {$_.displayName -eq 'Global Administrator'}

```

Administrator-Rolle in eine Variable platzieren:
```powershell
$role = Get-AzureADDirectoryRole | Where {$_.displayName -eq 'Global Administrator'}
```

Flugmodus aktivieren, auf lokalem Rechner:
```powershell
Set-NetAdapter -InterfaceDescription 'Wi-Fi' -MediaState 'Disabled'
```

Equivalent zu Linux `tail -f ` in Windows Powershell:
```powershell
Get-Content -Path "C:\example.log" -Tail 10 -Wait
# in älteren Powershell Versionen für Streams nicht möglich:
# Select-Object -Path "C:\example.log" -Last
```

```powershell

```

```powershell

```

#### Vorhandene Treiber in Zip-Datei speichern
praktisch bei System-Neuinstallation:
```powershell
Export-WindowsDriver -Online -Destination <Verzeichnispfad>
```

#### List of common "member operators" in PowerShell
-   `.Count`: Returns the number of items in a collection or array.
-   `.Length`: Returns the length of a string.
-   `.ToUpper()`: Converts a string to uppercase.  
-   `.ToLower()`: Converts a string to lowercase.    
-   `.IndexOf()`: Returns the index of the first occurrence of a specified value in a string or array.
-   `.Substring()`: Returns a substring of a specified length from a string.
-   `.Replace()`: Replaces all occurrences of a specified value in a string with another specified value.
-   `.Split()`: Splits a string into an array of substrings based on a specified delimiter.
-   `.Join()`: Joins the elements of an array into a single string, using a specified delimiter.
-   `.Trim()`: Removes all leading and trailing white space from a string.
-   `.GetType()`: Returns the data type of a variable or expression.

You can use the `Get-Member` cmdlet to explore the available members of a particular object.

