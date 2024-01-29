- Dynamisch Verwaltung
- Netzwerk-/Firewall-Zonen
- Vertrauensstufen
	- Netzwerkverbindungen oder Schnittstellen
- IPv4- und IPv6
- Ethernet-Bridges
	- Trennung von Laufzeit- und permanenten Konfigurationsoptionen
- Schnittstelle für Dienste / Anwendungen
- Firewall-Regeln direkt hinzuzufügen
- i.R. kein direkter Aufruf
	- `systemctl` steuert `systemd`
### firewall-cmd
| Funktion | Befehl |
| ---- | ---- |
| `firewall-cmd --zone=<ZONE>` | `<OPTION>` |
| Richtlinie einrichten | `--add-richtlinie=[Richtlinie] ` |
| Dienst aktivieren | `--add-service=[Dienst] ` |
| Port aktivieren | `--add-port=[Port]/[Protokoll] ` |
| Quelle aktivieren | `--add-source=[IP-Adresse] ` |
| Maschinen-IP einrichten | `--set-maschine-ip=[IP-Adresse] ` |
| Netzwerk aktivieren | `--add-network=[Netzwerk] ` |
| Diesnt aktivieren | `--remove-service=[Dienst] ` |
| Ports deaktivieren | `--remove-port=[Port]/[Protokoll] ` |
| Quelle deaktivieren | `--remove-source=[IP-Adresse] ` |
| Netzwerk deaktivieren | `--remove-network=[Netzwerk] ` |
#### "Panic Options"
- Alle eingehenden und ausgehenden Pakete fallen lassen
- aktive Verbindungen auslaufen lassen
- Temporäre Abschottung in Laufzeitumgebung
	- `--panic-on` 
- Aktivierung prüfen, Ausgabe 0 wenn aktiv, andernfalls 1
	- `--query-panic` 
- Deaktivieren, etablierte Verbindungen fortsetzen, abhängig von Ausfall-Dauer
	- `--panic-off` 
#### Szenarien
HTTP-Service temporär in Standard-Zone aktivieren
- `firewall-cmd --add-service=http ` 
Webserver Firewall Regel
- `firewall-cmd --zone=public --add-port=80/tcp --permanent `
- `firewall-cmd --reload `
Port 443/tcp sofort und permanent in der Standardzone aktivieren, auch nach Neustart wirksam
- 1. `firewall-cmd --add-port=443/tcp ` 
- 2. `firewall-cmd --permanent --add-port=443/tcp ` 