Freeware E-Mail-Server
- kostenlos,
- quelloffen,
- für Windows
### Protokolle
- SMTP, Port 25
- POP3, Port 995
- IMAP, Port 993
### Verschlüsselung
**SSL/TLS** (Secure Sockets Layer/Transport Layer Security)
- Verschlüsselung zwischen Client und Server
**SMTPS** (Simple Mail Transfer Protokoll Secure)
- Verschlüsseltes SMTP
**IMAPS** (Internet Message Access Protokoll Secure)
- Verschlüsseltes IMAP
**POP3S** (Post-Office Protokoll)
- Verschlüsseltes POP3
**STARTTLS** Port 587
- Verschlüsselung nachdem der Client sich unverschlüsselt mit dem Server verbunden hat
- Integrität und Vertraulichkeit gewährleisten
- **SMTP** über **SSL**
### Protokolle konfigurieren:
- Windows-Oberfläche
### Erweiterung durch Plugins
**ClamWin**
- Email-Virenscanner
**SpamAssassin**
- Spam-Filter gegen unerwünschte E-Mails
**Greylisting**
- Zustellprozess von E-Mails verzögern und Spam reduzieren
**Archive**
- Archivierung für Compliance-Anforderungen
**Database Backup**
- Backups der hMailServer-Datenbank
**Autoban**
- Blockiert IP-Adressen, Brute-Force-Angriffe
**External Account**
- Externes POP3/IMAP-Konto abrufen in System einfügen
**DNS Blacklist**
- Spam-Blacklists
### Datenbankunterstützung
- MySQL
- Microsoft SQL Server
- PostgreSQL
### Exchange Vergleich
- Mehr **Leistung**
- Bessere **Windows-Integration**
- Integrierte **Unified Messaging**-Funktionen
	- (Voicemail und Fax)
- für große unternehmen geeignet
- Mehr Funktionen für Benutzerverwaltung
### hMailServer Vor- und Nachteile
- Kostenlos und OpenSource
- keine integrierten **Unified Messaging**-Funktionen
- für kleine Organisation oder Entwickler
- nicht nativ in Windows AD-Infrastruktur integriert
- weniger erweiterte Funktionen
	- für Richtlinien, Rechte und Integrationen