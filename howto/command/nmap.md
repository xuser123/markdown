Informationgathering-Netzwerktool

Tipp von Florian Dalwgk [Quelle](https://youtu.be/VG-7BOaTcXI):`nmap -sV -sC -p- <ZIEL>`

- `nmap -sP <Ziel>` - Ping Scan: Überprüft die Erreichbarkeit von Hosts im Netzwerk.
- `nmap -sT <Ziel>` - TCP Connect Scan: Öffnet eine vollständige TCP-Verbindung zum Ziel.
- `nmap -sU <Ziel>` - UDP Scan: Überprüft offene UDP-Ports auf dem Ziel.
- `nmap -sS <Ziel>` - SYN Scan: Sendet SYN-Pakete, um offene Ports zu erkennen.
- `nmap -sV <Ziel>` - Version Detection: Ermittelt Dienstversionen auf offenen Ports.
- `nmap -A <Ziel>` - Aggressive Scan: Kombiniert OS-Detection, Version Detection und Traceroute.
- `nmap -p <Portbereich> <Ziel>` - Scant spezifische Ports oder Portbereiche.
- `nmap -F <Ziel>` - Fast Scan: Scant nur die am häufigsten verwendeten Ports.
- `nmap -O <Ziel>` - OS Detection: Versucht, das Betriebssystem des Ziels zu identifizieren.
- `nmap -v <Ziel>` - Verbose Mode: Gibt detaillierte Ausgaben während des Scans aus.
- `nmap -T<0-5> <Ziel>` - Timing Templates: Kontrolliert den Scan-Geschwindigkeitsmodus.
- `nmap --script <Script> <Ziel>` - Führt ein bestimmtes NSE-Skript aus.
- `nmap -p- <Ziel>` - Scant alle 65535 Ports.
- `nmap -O --osscan-guess <Ziel>` - OS Detection mit Rate der Vermutung.
- `nmap -p 80,443 <Ziel>` - Scant nur HTTP und HTTPS Ports.
- `nmap -sV --version-intensity 0 <Ziel>` - Deaktiviert die Versionserkennung.
- `nmap -sn <Ziel>` - Kein Port-Scan, nur Host-Discovery.
- `nmap -T4 -F <Ziel>` - Schneller Scan mit aggressiverem Timing.
- `nmap -p 22 --script ssh-auth-methods <Ziel>` - Überprüft verfügbare SSH-Authentifizierungsmethoden.
- `nmap -p 21 --script ftp-anon <Ziel>` - Identifiziert anonymen FTP-Zugriff.

Verwendung mit Vorsicht und ethisch verantwortungsbewusst, um nicht gegen geltende Gesetze oder Richtlinien zu verstoßen.