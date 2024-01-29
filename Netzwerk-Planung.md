- Komponenten weniger, verschiedener Hersteller
- einheitlicher Betriebssystemstandard
- Netzwerksementierung sorgfältig planen
- einheitliches Netzwerkmanagement
- renommierte und zukunftfähige Anbieter wählen
- gesichter Support und Sicherheitsupdates
### Netzwerkdokumentation
- Inventarisierung und Dokumentation
- Ausfallsicherheit:
	- Notstromversorgung
	- Backups
		- Komponenten-Backup
			- Ersatzteil-Lager
		- USV (Unterbrechungsfreie Stromversorgung)
		- Datenbackups (Server und Clients)
### Netzwerkkarten und Adapter
- PCIe-Netzwerkkarte oder auf der Hauptplatine integriert 
- IEEE 802.3ab oder 100BASE-T (1 GBits/s)
	- i.R ausreichende Geschwindigkeit
- IEEE 802.3ae oder 10GBASE-T (10 GBits/s)
	- Unterstützung durch Netzwerk-Komponenten prüfen
### Netzwerk-Server
- zwei oder mehrere PCIe-Netzwerkkarten
- IEEE 802.3ba
	- 40GBASE-T (40GBits/s)
	- 100GBASE-T (100 GBits/s)
- Trunking und Bonding
	- Mehrere Netzwerkkarten zu einem logischen Anschluss zusammenfassen
	- Übertragungsgeschwindkeit steigern
- Glasfaserverkabelung
	- für Netzwerk-Server
	- Switch- und Router- Vernetzung in Gebäuden
	- Backbone
- Netzwerk-(WLAN-)Adapter
	- einmalige Ethernet MAC-Adresse
	- IEEE 802.3ac
	- IEEE 802.3ax (Wi-Fi 6)
	- WPA3-Verschlüsselung
### Router, Ports und Gateway
##### Multifunktions-Router
- NAS-Dienst
- NAT (Network Address Translation)
- DHCP- und DNS-Server
##### Router und Gateways
- Gateway zum Internet PPPoE-Protokoll für DSL
- DOCSIS für Kabelnetze
- VPN-Gateway
- und vieles mehr
- In größeren Netzen solche Funktionen auf- und verteilen:
	- Skalierung/Administration
	- Performance
	- Sicherheit
##### Access Points
- kein Routing
- kein DHCP-Server
- kein DNS-Server
- Internetverbindung nur über einen Router
- preiswerter als WLAN-Router
### Physische Ports und logische Ports
65.535 verfügbare logische Ports für TCP und UDP

0-1023 **Well Known Ports**
- TCP-Port 21 FTP-Dienst
- TCP-Port 22 SSH-Zugang (verschlüsselt)
- UDP-Port 53 Domain Name Service
- Port 993 Posteingang (IMAP, verschlüsselt)
- Port 465 Postausgang (SMTP, verschlüsselt)

1024-49151 **Registrierte Ports**

49152-65535 **Dynamische Ports**
- frei zu vergebende Ports
- nur wirklich benötigte Router-Ports öffnen,
- alle anderen schießen
- Desktop-Firewall nutzen
- keine Portfreigaben/Weiterleitungen für Internetzugriffe (-> VPN-Zugang)
- Prüfung eigener offener Ports
- notwendige Ports erkennen und besonders schützen
	- kryptische Passwörter, Zertifikate etc.
- nur eigene IP-Adressen testen
	- niemals fremde, könnte illegal sein!
- besonders systemkritische Ports (z.B SSH) unbedingt schliesen
### Router-Funktionalitäten
- integrierte DSL-Modems
- NAT-Funktionalität
- VPN-Routing
- integrierte Firewall
- Multi-NAT
- IPv4- und IPv6-Routing
- Load Balancing
- IP Traffic Shaping
- QoS (Quality of Service)
- Schutz gegen DoS- und DDoS-Attacken
- Syn-Flooding-Schutz
- Portscanning-Schutz
### VLAN (Virtual LAN)

##### ARF (Advanced Routing and Forwarding)
- Bis zu 64 verschiedene IP-Netze verwaltbar
##### VPN-Router
- viele gleichzeitige VPN-Nutzer
- starke Verschlüsselung
- hohe Sicherheit und Performance
- erfordert dedizierte Hardware
##### Unternehmenstelefonie
- Voice over Ip-Router
- IP-Telefonie
- Weiterverwendung analoger oder ISDN Geräte
##### LTE- oder 5G-Router
- Fallback-Lösung bei unterbrochener Internetverbindung
##### WAN-Anschlüsse
- mehrere WAN-Ports
### Clients im Netzwerk
Serverseitige Dateisystem-Dienste:
- SMB (Server Message Block)
- CIFS (Common Internet File System)
- NFS (Network File System)
### Maßnahmen für Clients
- Keine Admin-Rechte für Clients
- USB-Slots im BIOS sperren
- BIOS-Zugang mit Passwort sperren
- Lokale Ordner- und Dateifreigaben deaktivieren
- Mit Desktop Firewall nur benötigte Ports öffnen:
	- 80 (HTTP)
	- 443 (HTTPS)
	- 993 (IMAP)
	- 465 (IMAP)
	- Paketfilter für Programme
- Windows Defender nutzen
- Clouddienste mit hoher Schadsoftware-Aktualität nutzen
### Windows Netzwerkeinstellungen
1. Netzwerkprofil auf "Privat"
2. "Firewall- und Sicherheitseinstellungen"
	-  "Zugriff von App durch Firewal zulassen"
		- "Zugelassene Apps und Features" konfigurieren
3. Bei "Ethernet" die "Adapteroptionen ändern"
	- Client- und Adapteroption Installationen prüfen
		- "Datei- und Druckerfreigabe" deaktivieren
		- IPv4 und IPv6 aktiviert lassen
	- Zusätzlich benötigte Dienste installieren
### Server-Verbindung
Lokale Windows Server über Netzwerkfenster-Adressleiste erreichbar:
- Syntax mit zwei "Backslash" `\\<IP>`
	- z.B.: `\\192.168.0.6`
Bei Android muss Netzwerk-App "AndSMB" installiert werden
### Remote-Administration
- Windows **Server Manager**
	- Standard Oberfläche
- Windows **Admin Center**
	- öffnet sich im Edgebrowser
 	- Zugriff auf wichtige Funktionen und Dienste
	- Kombination aus Server Manager und MMC (Microsoft Management Console)
- **Remotedesktop** (kostenlose Microsoft Store App)
	- Verfügbar auf MacOS, Android und iOS
	- Vorraussetzung:
		- "Remotedesktopdienste" (RDP)
			- "Remote Desktop Session Host" muss auf Server installiert sein
			- Nur Nutzerauthentifizierung auf lokaler Netzwerkebene zulassen
- **Powershell** (SSH oder SFTP, beide über Port 22)
	- SSH Publickey und Privatkey
	- TFTP über TLS auch möglich
- **Teamviewer**
	- Firewall- / Routerkonfiguration nicht nötig
	- 2048-bit-RSA-Verschlüsselung und 256-bit-AES-Verschlüsselung
	- Eigene Routing-Server im Internet
	- Verbindung per "Tunneling" über TCP oder HTTP mit Software
	- ID und Kennwort 
### VPN (Virtual Privat Network)
- Ausfallsicher weil mehrere Routen
- Bei Windows Server muss "Remotezugriff" installiert sein
- Verschiedene VPN-Standards
	- Gewählte Variante muss auf beiden Instanzen installiert sein
	- PPTP (Point-to-Point Tunneling Protocol)
		- veraltet!
	- L2TP (Layer 2 Tunneling Protocol)
		- Wird von allen unterstützt
		- Open Source
	- IPSec (Internet Protocol Security)
		- Zusätzliche Verschlüsselung
		- PreSharedKey
		- oder digitales Zertifikat (sicherer!)
	- L2TP/IPSec
		- 256-bit-AES-Verschlüsselung
		- UDP-Port 500
			- Standardmäßig gesperrt von Firewalls!
	- SSTP (Secure Socket Tunnelig Protocol)
		- In Windows Standarmäßig unterstützt
	- IKEv2 (Internet Key Exchange Version 2)
		- In Windows integriert
		- Sicher, flexibel und stabil
		- Auf vielen Geräten implementiert oder nachrüstbar
		- Symetrische AES-Verschlüsselung
		- Open Source
	- OpenVPN
		- Sicher und flexibel
		- Open Source
- VPN-Einstellung auf Router möglich,
	- bspw. im FRITZ!Box-Menü: "Internet", "Freigaben"
		- "Fernzugang für einen Benutzer einrichten"
			- FRITZ!Box-Benutzer für VPN-Nutzung berechtigen
		- "Diese FRITZ!Box mit einem Firmen-VPN verbinden"
			- Anmeldedaten:
				- VPN-Benutzername(Key-ID)
				- VPN-Kennwort (Preshared Key)
				- XAUTH verwenden
					- XAUTH-Benutzername
					- XAUTH-Kennwort
				- Internet-Adresse der Gegenstelle
				- Internet-Adresse dieser FRITZ!Box
		- "Eine VPN-Konfiguration aus einer vorhandenen VPN-Einstellungsdatei importieren"
	- Bei dynamische IP-Adressen DDNS (DynDNS) Service verwenden
	- Typische Ports:
		- PPTP 1723 (TCP) benötigt DynDNS
		- L2DP 500, 1701 (UDP) benötigt DynDNS

