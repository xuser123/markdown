
Mehr über Sicherheitsberechtigungen mit `whoami /priv` 

| Unterschiede / Rechte | Admin | Domain-User | Domain-Admin | Schema-Admin |
| ---- | ---- | ---- | ---- | ---- |
| System-Funktionen | Alles | Alles | Alles | Alles |
| Zugriff | Alles | Zugriff | Zugriff | Zugriff |
#### Ausgabe vom CA-Admin:
| Berechtigung | Rechte | Status |
|-------------------|--------------|-|
| SeIncreaseQuotaPrivilege | Anpassen von Speicherkontingenten für einen Prozess | Deaktiviert |
| SeSecurityPrivilege | Verwalten von Überwachungs- und Sicherheitsprotokollen | Deaktiviert |
| SeTakeOwnershipPrivilege | Übernehmen des Besitzes von Dateien und Objekten | Deaktiviert |
| SeLoadDriverPrivilege | Laden und Entfernen von Gerätetreibern | Deaktiviert |
| SeSystemProfilePrivilege | Erstellen eines Profils der Systemleistung | Deaktiviert |
| SeSystemtimePrivilege | Ändern der Systemzeit | Deaktiviert |
| SeProfileSingleProcessPrivilege | Erstellen eines Profils für einen Einzelprozess | Deaktiviert |
| SeIncreaseBasePriorityPrivilege | Anheben der Zeitplanungspriorität | Deaktiviert |
| SeCreatePagefilePrivilege | Erstellen einer Auslagerungsdatei | Deaktiviert |
| SeBackupPrivilege | Sichern von Dateien und Verzeichnissen | Deaktiviert |
| SeRestorePrivilege | Wiederherstellen von Dateien und Verzeichnissen | Deaktiviert |
| SeShutdownPrivilege | Herunterfahren des Systems | Deaktiviert |
| SeDebugPrivilege | Debuggen von Programmen | Deaktiviert |
| SeSystemEnvironmentPrivilege | Verändern der Firmwareumgebungsvariablen | Deaktiviert |
| SeChangeNotifyPrivilege | Auslassen der durchsuchenden Überprüfung | Aktiviert |
| SeRemoteShutdownPrivilege | Erzwingen des Herunterfahrens von einem Remotesystem aus | Deaktiviert |
| SeUndockPrivilege | Entfernen des Computers von der Docking-Station | Deaktiviert |
| SeManageVolumePrivilege | Durchführen von Volumewartungsaufgaben | Deaktiviert |
| SeImpersonatePrivilege | Annehmen der Clientidentität nach Authentifizierung | Aktiviert |
| SeCreateGlobalPrivilege | Erstellen globaler Objekte | Aktiviert |
| SeIncreaseWorkingSetPrivilege | Arbeitssatz eines Prozesses vergrößern | Deaktiviert |
| SeTimeZonePrivilege | Ändern der Zeitzone | Deaktiviert |
| SeCreateSymbolicLinkPrivilege | Erstellen symbolischer Verknüpfungen | Deaktiviert |
| SeDelegateSessionUserImpersonatePrivilege | Identitätstoken für einen anderen Benutzer in derselben Sitzung abrufen | Deaktiviert |
`gpedit.msc` -> "Benutzerkonfiguration" -> Administrative Vorlagen -> System -> "Zugriff auf Eingabeaufforderung verhindern"