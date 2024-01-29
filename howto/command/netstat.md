### Flags
| Flaggen | Funktion | in Windows |
| ---- | ---- | ---- |
| a | Aktive Verbindungen und Ports |  |
| s | Statistik aller Protokolle |  |
| i | Netzwerk-Interfaces |  |
| g | ulticast-Gruppen |  |
| r | Routing-Tabelle |  |
| n | "numerisch", keine Namensauflösung |  |
| t | Nur TCP-Verbindungen |  |
| u | Nur UDP-Verbindungen |  |
| p | Prozesse auflisten |  |
Mit `watch -d ` kombinierbar
### Powershell Flags
| Flaggen | In Windows |
| ---- | ---- |
| nanop | Alle Informationen aller Verbindungen |
| `-e -s` | Statistiken: Ethernet und Protokolle |
| `-s -p <PROTOKOLL>` | `tcp`, `udp`, `icmp`, `ip`, `tcpv6`, `udpv6`, `icmpv6`, `ipv6` |
| `-of 5` | TCP-Verbindungen, PIDs und FQDNs alle 5 Sekunden |
| `-n -o` | TCP-Verbindungen und PIDs (numerisch) |
