aus dem Grundschutzkompendium des BSI 
### Schutzziele der Informationssicherheit:
1. **Vertraulichkeit** Nur autorisierte Zugriffe
2. **Integrität** Schutz vor Manipulation
3. **Verfügbarkeit** Ausfallsicherheit
4. **Authentizität** Verifizierte Quellen
5. **Zurechenbarkeit** Nachverfolgbarkeit von Aktivitäten
6. **Unbestreitbarkeit** Sicherstellung durchgeführter Handlungen
### Datensicherheit
Daten technisch und organisatorisch vor unbefugtem Zugriff, Verlust, Diebstahl oder Beschädigung schützen.
- Verschlüsselung
- Firewalls
	- paketorientiert (klassisch)
	- zustandsorientierte Paketüberprüfung
		- **Stateful Packet Inspection** (SPI)
		- Zuordnung aktiver Sitzungen
			- auf Vermittlungsschicht (OSI-Schicht 3)
		- Zwischenspeicher für Verbindungsstatus
			- in dynamischen Zustandstabellen
		- Auswertung durch TCP SYN-/ACK-/FIN-Bits
			- auch (zustandslose) UDP-Datenpakete
	- Mehrstufige Konzepte
	- Regeln für Endpoints und Clients
- Zugriffskontrollen
- Sicherheitsaudits.
### Netzwerksegmentierung durch VLAN
- Netze logisch trennen
- Datenverkehr priorisieren
- Last verteilen
- Broadcast in Domänen unterteilen
- Kollisionsbereiche minimieren
- Gruppenzugehörigkeiten flexibel anpassen
- Datenverkehr spezifisch trennen
	- VLANs über mehrere VLAN-fähige Switche
		- z.B. Trunk Ports
		- etikettierte Ethernet-Frames
			- Kennzeichnung der VLAN-Zugehörigkeit
### Datenschutz
Gesetze und Regelungen:
- Vorschriften aus **Kapitel 3 der DSGVO**
- **personenbezogene Daten** schützen
- sensible Informationen sichern
- Privatsphäre und Rechte einhalten
- Informationspflichten erfüllen
- Rechte der Personen im Datensatz
- **Datenminimierung**
	- Nur zweckgebundene Daten sammeln
		- für unbedingt notwendige Verarbeitungszwecke
	- Schutz vor übermäßiger Speicherung

Rechtliche und ethische Verantwortung von Organisationen und Einzelpersonen über das angemessene:
- sammeln,
- verarbeiten,
- speichern,
- schützen personenbezogene Daten.
### Maßnahmen
- organisatorisch
- technisch
- personell
### IT-Sicherheitsmanagement
- **ISMS** Informationssicherheits-Managementsystem
### Standards
- ISO/IEC 27000
	- Überblick über Zusammenhänge in ISO/IEC 2700x-Familie
	- grundlegende Begriffe und Definitionen für ISMS
- ISO/IEC 27001
	- inter. Norm für ISMS
	- erfüllt Anforderung für Zertifizierungsmöglichkeit
- ISO 27002 (Code of practice for information security controls)
	- unterstützt bei Auswahl und Umsetzung von ISO/IEC 27001 Maßnahmen
	- Sicherheitsmanagement aufbauen und verankern
- BSI IT-Grundschutz
- BSI-Standard 200-1
	- allgemeine Anforderungen an ISMS
- BSI-Standard 200-2
	- Basis der BSI-Methodik
	- Aufbau des ISMS
### Bundesamt für Sicherheit in der Informationstechnik (BSI)
"Das BSI als die Cyber-Sicherheitsbehörde des Bundes gestaltet Informationssicherheit in der Digitalisierung durch Prävention, Detektion und Reaktion für Staat, Wirtschaft und Gesellschaft." - BSI-Leitbild
### ISO/IEC 27001 -Zertifizierung
- international anerkannter Standard
- Vertrauensgewinn
	- bei Partner
	- bei Kunden
	- in der Öffentlichkeit
- Wettbewerbsvorteil
- Informationssicherheits-Managementsystem (ISMS)
	- Compliance-Anforderungen sicherstellen
	- IT-Risiken minimieren
	- IT-Sicherheitsverfahren etablieren
	- Qualität von IT-Systemen nachhaltig optimieren
	- Sicherheitslücken systematisch aufdecken
	- Abschätzung möglicher Schäden und Folgekosten
### Vorschriften
- Basel I und II
- SOX
### IT-Grundschutz
- Elementare Gefährdungen
- Prozess Bausteine
- System Bausteine
### Elementare Gefährdungen
- Feuer ,
- Ungünstige klimatische Bedingungen ,
- Wasser ,
- Verschmutzung, Staub, Korrosion ,
- Naturkatastrophen ,
- Katastrophen im Umfeld ,
- Großereignisse im Umfeld ,
- Ausfall oder Störung der Stromversorgung ,
- Ausfall oder Störung von Kommunikationsnetzen ,
- Ausfall oder Störung von Versorgungsnetzen ,
- Ausfall oder Störung von Dienstleistungsunternehmen ,
- Elektromagnetische Störstrahlung ,
- Abfangen kompromittierender Strahlung ,
- Ausspähen von Informationen (Spionage) ,
- Abhören ,
- Diebstahl von Geräten, Datenträgern oder Dokumenten ,
- Verlust von Geräten, Datenträgern oder Dokumenten ,
- Fehlplanung oder fehlende Anpassung ,
- Offenlegung schützenswerter Informationen ,
- Informationen oder Produkte aus unzuverlässiger Quelle ,
- Manipulation von Hard- oder Software  ,
- Manipulation von Informationen ,
- Unbefugtes Eindringen in IT-Systeme ,
- Zerstörung von Geräten oder Datenträgern ,
- Ausfall von Geräten oder Systemen ,
- Fehlfunktion von Geräten oder Systemen ,
- Ressourcenmangel ,
- Software-Schwachstellen oder -Fehler ,
- Verstoß gegen Gesetze oder Regelungen ,
- Unberechtigte Nutzung oder Administration von Geräten und Systemen ,
- Fehlerhafte Nutzung oder Administration von Geräten und Systemen ,
- Missbrauch von Berechtigungen ,
- Personalausfall ,
- Anschlag ,
- Nötigung, Erpressung oder Korruption ,
- Identitätsdiebstahl ,
- Abstreiten von Handlungen ,
- Missbrauch personenbezogener Daten ,
- Schadprogramme ,
- Verhinderung von Diensten (Denial of Service) ,
- Sabotage ,
- Social Engineering ,
- Einspielen von Nachrichten ,
- Unbefugtes Eindringen in Räumlichkeiten ,
- Datenverlust ,
- Integritätsverlust schützenswerter Informationen ,
- Schädliche Seiteneffekte IT-gestützter Angriffe ,
- Social Engineering ,
- Einspielen von Nachrichten ,
- Unbefugtes Eindringen in Räumlichkeiten ,
- Datenverlust ,
- Integritätsverlust schützenswerter Informationen ,
- Schädliche Seiteneffekte IT-gestützter Angriffe .
### Prozess-Bausteine
- Sicherheitsmanagement ( ISMS )
- Organisation und Personal (ORP)
	1. Organisation
	2. Personal
	3. Sensibilisierung und Schulung zur Informationssicherheit
	4. Identitäts- und Berechtigungsmanagement
	5. Compliance Management (Anforderungsmanagement)
### Konzepte und Vorgehensweisen
- Kryptokonzept ,
- Datenschutz ,
- Datensicherungskonzept ,
- Löschen und Vernichten ,
- Informationssicherheit auf Auslandsreisen ,
- Software-Entwicklung ,
- Informationsaustausch ,
- Entwicklung von Webanwendungen ,
- Geheimschutz VS-NUR FÜR DEN DIENSTGEBRAUCH (VS-NfD) .
### Eigener Betrieb
Kern-IT-Betrieb
- Allgemeiner IT-Betrieb
- Ordnungsgemäße IT-Administration
- Patch- und Änderungsmanagement
- Schutz vor Schadprogrammen
- Protokollierung
- Software-Tests und -Freigaben
- Systemmanagement
#### Weiterführende Aufgaben
- Archivierung
- Telearbeit
- Fernwartung
- NTP-Zeitsynchronisation

Betrieb *von Dritten*
- Cloud-Nutzung
- Nutzung von Outsourcing
Betrieb *für Dritte*
- Anbieten von Outsourcing
#### Detektion und Reaktion
- Detektion von sicherheitsrelevanten Ereignissen
#### Security Incident Management
- Behandlung von Sicherheitsvorfällen
- Vorsorge für die IT-Forensik
- Bereinigung weitreichender Sicherheitsvorfälle
#### Sicherheitsprüfungen
- Audits und Revisionen
- Revisionen auf Basis des Leitfadens IS-Revision
- Notfallmanagement
### System-Bausteine
Anwendungen
#### Client-Anwendungen
- APP.1.1 Office-Produkte
- APP.1.2 Webbrowser
- APP.1.4 Mobile Anwendungen (Apps)
#### Verzeichnisdienst
- APP.2.1 Allgemeiner Verzeichnisdienst
- APP.2.2 Active Directory Domain Services
- APP.2.3 OpenLDAP
#### Netzbasierte Dienste
- APP.3.1 Webanwendungen und Webservices
- APP.3.2 Webserver
- APP.3.3 Fileserver
- APP.3.4 Samba
- APP.3.6 DNS-Server
#### Business-Anwendungen
- APP.4.2 SAP-ERP-System
- APP.4.3 Relationale Datenbanken
- APP.4.4 Kubernetes
- APP.4.6 SAP ABAP-Programmierung
#### E-Mail/Groupware/Kommunikation
- APP.5.2 Microsoft Exchange und Outlook
- APP.5.3 Allgemeiner E-Mail-Client und -Server
- APP.5.4 Unified Communications und Collaboration (UCC)
- APP.6 Allgemeine Software
- APP.7 Entwicklung von Individualsoftware
### IT-Systeme
**Server**
- SYS.1.1 Allgemeiner Server
- SYS.1.2 Windows Server
- SYS.1.2.2 Windows Server 2012
- SYS.1.2.3 Windows Server
- SYS.1.3 Server unter Linux und Unix
- SYS.1.5 Virtualisierung
- SYS.1.6 Containerisierung
- SYS.1.7 IBM Z
- SYS.1.8 Speicherlösungen
- SYS.1.9 Terminalserver

**Desktop-Systeme**
- SYS.2.1 Allgemeiner Client
- SYS.2.2 Windows-Clients
- SYS.2.2.3 Clients unter Windows
- SYS.2.3 Clients unter Linux und Unix
- SYS.2.4 Clients unter macOS
- SYS.2.5 Client-Virtualisierung
- SYS.2.6 Virtual Desktop Infrastructure

**SYS.3 Mobile Devices**
- SYS.3.1 Laptops
- SYS.3.2 Tablet und Smartphone
- SYS.3.2.1 Allgemeine Smartphones und Tablets
- SYS.3.2.2 Mobile Device Management (MDM)
- SYS.3.2.3 iOS (for Enterprise)
- SYS.3.2.4 Android
- SYS.3.3 Mobiltelefon

**SYS.4 Sonstige Systeme**
- SYS.4.1 Drucker, Kopierer und Multifunktionsgeräte
- SYS.4.3 Eingebettete Systeme
- SYS.4.4 Allgemeines IoT-Gerät
- SYS.4.5 Wechseldatenträger
### Industrielle IT
##### IND.1 Prozessleit- und Automatisierungstechnik
##### IND.2 ICS-Komponenten
- IND.2.1 Allgemeine ICS-Komponente
- IND.2.2 Speicherprogrammierbare Steuerung (SPS)
- IND.2.3 Sensoren und Aktoren
- IND.2.4 Maschine
- IND.2.7 Safety Instrumented Systems
##### IND.3 Produktionsnetze
- IND.3.2 Fernwartung im industriellen Umfeld
### Netze und Kommunikation
#### NET.1 Netze
- NET.1.1 Netzarchitektur und -design
- NET.1.2 Netzmanagement
#### NET.2 Funknetze
- NET.2.1 WLAN-Betrieb
- NET.2.2 WLAN-Nutzung
#### NET.3 Netzkomponenten
- NET.3.1 Router und Switches
- NET.3.2 Firewall
- NET.3.3 VPN
	- logisches Netzwerk
	- getunnelte Verbindung
		- Sicherheit im unsicheren Netzwerk
	- verschlüsselte Protokolle
		- L2TP over IPsec
		- SSL-VPN
		- OpenVPN
		- Layer-2-VPN
	- **End-to-Site**
		- Host-to-LAN
		- Host-to-Gateway
		- Remote-Access-VPN
	- **Site-to-Site**
		- LAN-to-LAN
		- Gateway-to-Gateway
	- **End-to-End**
		- Host-to-Host
		- Remote-Desktop-VPN
- NET.3.4 Network Access Control
#### NET.4: Telekommunikation
- NET.4.1 TK-Anlagen
- NET.4.2 VoIP
- NET.4.3 Faxgeräte und Faxserver
#### INF: Infrastruktur
- INF.1 Allgemeines Gebäude
- INF.2 Rechenzentrum sowie Serverraum
- INF.5 Raum sowie Schrank für technische Infrastruktur
- INF.6 Datenträgerarchiv
- INF.7 Büroarbeitsplatz
- INF.8 Häuslicher Arbeitsplatz
- INF.9 Mobiler Arbeitsplatz
- INF.10 Besprechungs-, Veranstaltungs- und Schulungsräume
- INF.11 Allgemeines Fahrzeug
- INF.12 Verkabelung
- INF.13 Technisches Gebäudemanagement
- INF.14 Gebäudeautomation
### Schutzbedarfsanalyse
- Beauftragte
- Sicherheitsbewusstseins
- Prävention
	- Grundschutz
- Security by Design
- Security by Default
- Datensicherung
	- Backup auf Speichermedien
		- inkrementell
		- differenziell
		- voll
		- Rotationsschema
			- Generationenprinzip
			- Großvater-Vater-Sohn-Prinzip
				- 20 Speichermedien bei 5-Tage-Wochen-Zyklus
					- 4 Sohn-Medien für Tage (inkrementell)
					- 4 Vater-medien für Wochen (voll)
					- 12 Großvater-Medien für Monate (voll)
	- Backupmedien-Kriterien
		- Lebensdauer
		- Zugriffsgeschwindigkeit
		- Kosten
		- Störanfälligkeit
		- Kapazität
	- Hot/Cold Backup
	- Sicherungswürdige Daten
	- Risikoanalyse
		- Risiken identifizieren
		- Auswirkungen analysieren bei...
			- Datenverlust
			- Verstoß gegen Gesetze, Vorschriften oder Verträge
			- Missbrauch von personenbezogener Daten
			- finanziellem Schaden
		- Auswirkung durch kategorische Kriterien priorisieren
			- Normal:
				- geringfügige juristische Konsequenzen
				- minimale Auswirkungen auf Betroffene
				- nachhaltig-erschüttertes Ansehen bei Kunden und Partnern
				- unter 50.000 Euro verlust
			- Hoch:
				- schwerwiegende juristische Konsequenzen
				- massive Auswirkungen auf Betroffene
				- erschüttertes Ansehen bei Kunden und Partnern
				- 50.000 bis 500.000 Euro verlust
			- Sehr hoch:
				- existenzbedrohende juristische Konsequenzen
				- existenzbedrohende Auswirkungen auf Betroffene
				- nachhaltig-erschüttertes Ansehen bei Kunden und Partnern
				- über 500.000 Euro verlust
		- Angriffsrisiko
		- Objekte mit besonderem Sicherheitsrisiko
		- konkrete Bedrohungsszenarien
		- mögliche Schäden durch Angriffe
		- aktuelles Gefährdungspotenzial
		- geeignete Maßnahmen
		- Kosten-Nutzen / Risikoberechnung
		- **Nutzwertanalyse**
			- Kriterien
				- Preis
				- Qualität
			- Punkteskala
			- Summenwerte vergleichen
				- Gewichtung * Punktzahl
	- Vermeidungsstrategien
	- Verschrottung
		- sichere Löschung vor der Verschrottung
			- durch technische Verfahren nach **DIN 66399**
				- mechanisch
				- magnetisch
				- thermische
		- umwelt- und fachgerechte Entsorgung
			- durch zertifiziertes Entsorgungsunternehmen
### Schadprogramme
- Virus
- Worm
- Rootkit
- Botnet
- Trojan
- Malware
- Ransomware
- Spyware
- Adware
- Scareware
- Hoax
- Dialer
- Keylogger
### Hacker
- White Hat
- Black Hat
- Grey Hat
- Red Hat
- Blue Hat
- Packet Hat
- Cracker
- Script-Kiddies
### Methoden
- Spam
- Phishing
- Sniffing
- Spoofing
- Man-in-the-Middle
- SQL-Injection
- Cross-Site-Scripting
- CSRF
- Session Hijacking
- DoS
- DDos
- Exploit of a Mom
- Social-Engineering
- Backdoor
- Exploit
- 0-Day-Exploit
- Rootkit
### Kryptografie
- Verschlüsselungstechniken
	- symmetrisch
	- asymmetrisch
- Hashverfahren
- Zertifikate
- Certificated Authenticators (CAs)
- Digitale Signaturen
- PKI
- Techniken
	- HTTPS over TLS
	- zentral-verschlüsselte E-Mails
		- digital-signiert durch TLS/SSL-Zertifikate
			- **POP3** Post-Office Protocol (Port 995)
			- **IMAP** Internet Message Access Protocol (Port 993)
			- **SMTP** Simple Mail Transfer Protocol (Port 465/587)
	- SSH vs. Telnet
	- Wireless Personal-Key-Authentication (WPA/PSK)
		- **SSID** Service Set Identifier
			- IEEE-Norm 802.11
			- Netzwerkname
			- bis 32 Byte ASCII Zeichenlänge
			- Broadcastdomain
		- Multi-SSID
			- mehrere Broadcastdomänen verwalten
		- MAC-Filter (-Whitelist)
		- WPS
		- Wi-Fi Easy Connect
		- WEP
		- Enterprise
		- RADIUS (-Server)
		- Verschlüsselungsstandards:
			- **AES** Advanced Encryption Standard
			- **TKIP** Temporal Key Integrity Protocol
			- **SAE** Simultaneous Authentication of Equals
		- Optional: Zusätzlicher Schutz durch VPN-Verbindung
	- WPA2-Personal/Enterprise
	- WPA3-Personal/Enterprise
	- Endpoint-Security
		- Zugriffskontrolle
		- Isolation
		- Überwachung
		- Verwaltung
		- Whitelists oder Blacklists
	- Application Controlled
	- Datenverschlüsselung
	- Virenscanner
	- Firewall
		- Packet Filter
		- Stateful Packet Inspection
		- Application Firewall
		- WAF
	- DMZ
	- Portforwarding
- Authentifizierung
- Autorisierung
- MFA
- Passwortrichtlinien (Password-Policy)
	- Entropie durch Zeichenlänge und -kombination
		- Mindestlänge (8,12 oder 22 Zeichen)
		- Groß- und Kleinbuchstaben, Zahlen und Sonderzeichen
				- entspricht **94 mögliche Zeichen**
					- 26 Großbuchstaben
					- 26 Kleinbuchstaben
					- 10 Zahlen
					- 32 Sonderzeichen
				- 2(hoch)n=94(hoch)L
					- n=(Bitstärke), L=(Passwortlänge)
						- 8 Zeichen = 2(hoch)n=94(hoch)8
							- N =~ 52,8
							- entspricht 53-bit
						- 64-bit = 2(hoch)64=94(hoch)L
							- L =~ 11,3
							- entspricht 12 Zeichen
						- 128-bit = 2(hoch)128=94(hoch)L
							- L =~ 21,5
							- entspricht 22 Zeichen
	- Keine Logindatenbestandteile im Passwort selbst
	- Ablaufdatum für Passwörter (z.B. 30-90 Tage)
	- Begrenzte Loginversuche
	- Kontosperre bei Login-Fehlversuchen
	- Optional: Einpräsame Passwortsätze
	- Optional: Multi-Factor-Authentication (MFA)
### Phasen eines Sicherheitsprozess
- nach BSI-Standard 100-2
1. Initiierung
	- Verantwortung übernehmen
		- durch Leitungsebene
	- Prozess konzepieren und planen
	- Leitlinien erstellen
	- Organisationsstruktur aufbauen
		- Informationssicherheits-Management
	- Ressourcen bereitstellen
		- finanziel
		- personel
		- zeitlich
	- Mitarbeitende in Prozess einbinden
2. Konzept erstellen
3. Konzept umsetzen
4. Prozess im laufenden Betrieb aufrechterhalten
	- kontinuierlich verbessern
### Unterbrechungsfreie Stromversorgung (USV)
- Klassifizierung nach **IEC 62040-3**
- 3 Klassen:
	- **Klasse 1 VFI** Voltage and Frequency Independent
		- Online-USV, schützt vor Folgen bei...
			- Stromausfall
			- Unterspannung
			- Überspannung
			- Frequenzschwankung
		- permanente Sinusspannung am Ausgang
		- dauerhafte Versorgung
			- ohne Einschränkungen
		- gleichzeitige Akku-aufladung
		- Eingangsspannung kann schwanken
			- zwischen 160 und 290 Volt
		- Ausgangsspannung entspricht Sinuskurve
			- keine Störspannungen
			- keine elektromagnetischen Einflüsse
			- keine Frequenzstörungen
			- keine Spannungsverzerungen
		- unterbrechungsfreier Übergang auf Akkubetrieb
	- **Klasse 2 VI** Voltage Independent
		- Netzinteraktive USV, schützt vor Folgen bei...
			- Stromausfall
			- Unterspannung
			- Überspannung
		- 2-4 ms Umschaltzeit
			-  von Akku- zum Netzbetrieb
	- **Klasse 3 VFD** Voltage and Frequency Dependent
		- Offline- / Standby-USV, schützt vor Folgen bei...
			- Stromausfall...
		- 4-10 ms Umschaltzeit
### Zentral-verschlüsselte E-Mails
Digital-signiert durch TLS/SSL-Zertifikate
- **POP3** Post-Office Protocol (Port 995)
- **IMAP** Internet Message Access Protocol (Port 993)
- **SMTP** Simple Mail Transfer Protocol (Port 465/587)
