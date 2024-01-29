
Was machen Ports? Im Kontext erklärt: Um einen Brief an Jemanden zu schicken, der in einem Hochhaus wohnt und an seinem Briefkast, aus Sicherheitsgründen keinen Namen hat, braucht man Straße, Hausnummer, Postleitzahl und die Apartment-Nummer. Im Netzwerk besteht die Adresse aus 32 Bits, also 32 Nullen und Einsen.

|Bits|IP|
|-|-|
|11000000 10101000 10110010 00100101|192.168.178.37|
|01000000 11101001 10100000 00000000|64.233.160.0|
Eine IP besteht aus 4 Oktette, die jeweils in Dezimal umgewandelt und mit Punkten getrennt, eine IP-Adresse bilden.

Die IP-Adresse bekommt jetzt noch eine **Port-Nummer**, die wie im o.g. Beispiel die Tür des Empfängers adressiert: ```64.233.160.0:443```
- Port 443 überträgt verschlüsseltes HTTP einer Website (Google.com)

Ports sind Teil der **Transportschicht** (Layer 4) im OSI-Modell. Mit der **Sitzungsschicht** (Layer 5) wird die Kommunikation gesteuert, über s.g. **Sessions** und **Sockets**.

Ports können verschiedene Zustände haben:
- offen
- geschlossen
- gefiltert / geblockt.

Man unterscheidet 2 Arten von Ports:
- **INBOUND** (Eingehend)
	- Computer / Server wartet auf eine Verbindungsanfrage
- **OUTBOUND** (Ausgehend)
	- identifizieren sich mit ihrer Nummer bei den Server-Diensten

Der Internet-Browser schickt Anfragen über HTTP, das Hypertext-Transfer Protocol oder vorzüglich über das verschlüsselte HTTPS (= HTTP Secure). Computer stellen Portanfragen um daraufhin Verbindungen vom Server entgegenzunehmen. Es gibt Standard-Ports, für bestimmte Programme fest-zugeordnete Portnummern. HTTP läuft auf Port 80 über TCP. HTTPS benutzt Port 443.

Ports sind wie Daten-Tunnel. Sie benutzen s.g. Stream- und Datagram Sockets. Entweder TCP oder UDP. Ein Programm kann über mehrere Ports laufen und beide Protokolle verwenden.

Über **TCP** verlaufen Daten "zuverlässig" im bidirektionalem Datenaustausch, ein Verlust von Datenpacketen wird verhindert mit einer verbindungsorientierten Paketvermittlung.

Bei **UDP** ist nicht wichtig dass ALLES ankommt, sondern KONSTANT übertragen wird, mit geduldeten Unterbrechungen, beispielsweise beim Stream gucken oder bei Sprachübertragungen. Daher ist der Durchlass hier größer, dafür aber unzuverlässiger als über TCP.

Mit der Linux Shell Befehl ```ss -lntp``` kann man Sockets untersuchen. Dateien die von Protokolle benutzt werden findet man mit ```lsof -i```

Zum Test kann man mit ```nmap -sT -p- localhost``` Ports abscannen, aber vorsicht! Portscans im Internet sind strafbar!

Um einen Port zu schließen benutzt man ```iptables -A INPUT -p tcp --dport 23 -m state --state NEW,ESTABLISHED j REJECT```, als eine Zeile. **REJECT** simuliert unreachable-Pakete und verschleiert die Firewall-Funktion, normalerweise geht auch **DROP**.

In Windows 10 gibt es für die PowerShell den Befehl ```Get-NetTcpConnection``` um aktive und lauschende Ports anzuzeigen.

Unter Linux (Debian) findet man im APT Advanced Package Tool ein Programm namens **tcpdump**, das alle TCP-Pakete in Echtzeit monitarisieren kann, Befehl: ```tcpdump -i eth0 -n net 192.168.0.0/24```

Logfiles werden mit ```less /var/log/proxy/access.log``` betrachtet oder mit ```tail -f /var/log/proxy/access.log``` verfolgt.
