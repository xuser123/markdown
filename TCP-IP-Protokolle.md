- Datenübertragungsprotokoll im Internet und LAN...
- ...damit Computer und andere Geräte Daten Senden und Empfangen können
- TCP steht für: "Transmission Control Protocol"
- IP steht für: "Internet Protocol"
- Ermöglicht die Kommunikation netzwerkfähiger Geräte
- Ursprünglich entwickelt von DARPA in den 70er Jahren
- DARPA steht für "Defense Advanced Research Projects Agency"
- War Anfangs eines von vielen Internetprotokollen
- Wurde später zum Standardprotokoll für das ARPAnet
- ARPAnet ist der Vorläufer des modernen Internets
- TCP/IP ist der globale Standard der Internetkommunikation

Was macht TCP/IP ?
- Bestimmt wie Daten zwischen Geräte übertragen werden
- Stellt sicher dass übertragene Daten unverändert sind
- Daten werden in Pakete aufgeteilt
- Am Kommunikationsziel werden die Pakete zusammengesetzt
- Kleinere Pakete gewähren die Genauigkeit und Vollständigkeit

Unterschied zwischen TCP und IP:
- Es sind zwei seperate Computernetzwerkprotokolle
- Sie haben unterschiedliche Rollen bei der Datenübertragung
- IP ermittelt wohin Daten gesendet werden
	- Adressiert die Übertragung an die IP-Adresse des Ziels
	- Jeder Knoten im Netzwerk hat eine IP-Adresse
- TCP übernimmt anschließend die Datenübermittlung
- Zusammen (mit UDP) bilden sie den Kern der TCP/IP-Protokollfamilie

Wenn man von TCP/IP spricht, meint man manchmal die komplette Internetprotokollfamilie, hierzu zählen ca. 500 Protokolle.
### Das **TCP/IP-Modell**
Weiterentwicklung des DoD-Schichtenmodell von DARPA
- Aufbau wie im OSI-Modell aber nur 4 Schichten:
	- **Netzzugangsschicht** ( Netzwerkschicht )
		- Physische Ebene
		- Entspricht OSI-Schichten 1 & 2 ( Sicherungs- und Bitübertragungsschicht )
		- Beispiele:  Ethernet, Token Bus, Token Ring, FDDI (MAC)
	- **Internetschicht**
		- Adressierung und Routing
		- Entspricht der OSI-Vermittlungsschicht
		- Beispiel-Protokolle: IPv4, IPv6, ICMP (IP)
	- **Transportschicht**
		- Sitzungs- und Datenkommunikations-Dienste für die Anwendungsschicht
		- Entspricht der OSI-Transportschicht
		- Beispiel-Protokolle: TCP, UDP, SCTP (Ports)
	- **Anwendungsschicht**
		- Ermöglicht Anwendung den Zugriff auf Dienste der anderen Schichten
		- Entspricht OSI-Schichten 5-7 (Sitzungs-, Darstellungs- und Anwendungsschicht)
		- Beispiel-Protokolle: HTTP, FTP, SMTP, POP, Telnet, DHCP, TLS SOCKS
- Schichten entsprechen einzelner oder mehrere OSI-Schichten
- unabhängig von der Netzwerkzugriffs-Methode
- Kommunikation zwischen unterschiedlichsten Typen ist möglich
- LAN, WLAN, WAN, ATM, usw.