Das "ISO-OSI" 7-Schichtenmodell
**Konzeptionelles Modell** und **gemeinsamer Standard**
zur **Koordinierung der Entwicklung** von **ISO-Normen**, 
zwecks **Systemzusammenschaltung**.
- OSI steht für: "Open System Interconnection"
- Ein konzeptionelles Framework (Rahmenstruktur)
- Legt fest wie Netzwerke miteinander kommunizieren
- Beschreibt Komponenten der Daten-Kommunikation
- Definiert Regeln und Standards für Anwendungen und Netzwerkinfrastruktur
- Prinzipien:
	- Jede Schicht hat ein eigenes Abstraktionsniveau
	- Jede Schicht hat eine spezielle, festgelegte Funktion
	- Die Schichten werden so definiert dass sie international standardisierte Protokolle anwenden
	- Die Schichten erleichtern die Kommunikation innerhalb der Infrastruktur und ihrer Anwendung
- Vorteile:
	- Hersteller können ihre eigenen Protokolle und Geräte produzieren, ohne die Interkonnektivität mit anderen Herstellern zu verlieren.
	- Ereichterte Fehlersuche, wenn Netzwerkkomponenten ausfallen oder eine Anwendung nicht mit dem Netzwerk kommuniziert.
	- Hilft Administratoren den Fehler auf einer der Schichten zurückzuführen und zu identifizieren.
- Abstraktionsschichten beschreiben **vernetzte Kommunikation**
### Layer 1 Physical
**Physikalische Schicht** ( *Netzwerk* )
- " Bitübertragungsschicht "
- Elektrischer Puls
- Kabel, Hubs, Übertragungsmedium
- Physikalische Anbindung, Datenkodierung
- Der Ablauf des physikalischen Datentransfers auf Geräten

Verantwortlich für die Übertragung und den Empfang unstrukturierter Rohdaten zwischen einem Gerät und einem physischen Übertragungsmedium. Es wandelt die digitalen Bits in elektrische, Funk- oder optische Signale um. Die physikalische Schicht reicht bis zur Hardware des Computers. Hier werden die elektrischen Impulse, aus denen die Datenübertragung über ein Netz besteht, gesendet und empfangen. Aufgabe der Bitübertragungsschicht ist es, die binären Daten der Übertragung in Signale umzuwandeln und über das Netz zu übertragen sowie eingehende Signale zu empfangen und wieder in binäre Daten umzuwandeln.
### Layer 2 Data Link
**Sicherungsschicht** ( *Netzwerk* )
- Fehlerkontrolle wie in Schicht 4
- Physikalische Addressierung
- Switch, Bridge, WAP
- Frames, MAC-Adressen
- Überträgt Daten innerhalb des eigenen Netzwerks, wärend die Vermittlungschicht die Kommunikation zwischen verschiedenen Netzwerken ermöglicht
- Verwandelt Datenpakete aus der Vermittlungsschicht in Datenblöcke, so genannte "Frames"

Ermöglicht den Knoten-zu-Knoten-Datenübertragung, eine Verbindung zwischen zwei direkt verbundenen Knoten. Es erkennt und korrigiert möglicherweise Fehler, die in der physischen Schicht auftreten können. IEEE 802 teilt die Datenverbindungsschicht in zwei Unterschichten. Es wandelt die digitalen Bits in elektrische, Funk- oder optische Signale um. Layer-Spezifikationen definieren Eigenschaften wie Spannungspegel, den Zeitpunkt der Spannungsänderungen, der physikalischen Datenraten, maximale Übertragungsabstände, Modulationsschema, Kanalzugriffsverfahren und physikalische Anschlüsse. Die Datenübertragungsschicht konzentriert sich auf die physikalische Adressierung der Übertragung. Sie empfängt ein Paket von der Netzwerkschicht (das die IP-Adresse des entfernten Computers enthält) und fügt die physikalische (MAC-)Adresse des empfangenden Endpunkts hinzu. In jedem netzwerkfähigen Computer befindet sich eine Netzwerkschnittstellenkarte (Network Interface Card, NIC), die mit einer eindeutigen MAC-Adresse (Media Access Control) versehen ist, um sie zu identifizieren. MAC-Adressen werden vom Hersteller festgelegt und buchstäblich in die Karte eingebrannt; sie können nicht geändert werden - obwohl sie gefälscht werden können. Wenn Informationen über ein Netzwerk gesendet werden, wird die physikalische Adresse verwendet, um festzustellen, wohin genau die Informationen zu senden sind. Außerdem ist es die Aufgabe der Sicherungsschicht, die Daten in einem für die Übertragung geeigneten Format darzustellen. Die Datenverbindungsschicht erfüllt auch eine wichtige Funktion beim Empfang von Daten, da sie die empfangenen Informationen überprüft, um sicherzustellen, dass sie während der Übertragung nicht beschädigt wurden, was durchaus passieren kann, wenn die Daten über die Schicht 1, die physikalische Schicht, übertragen werden.
### Layer 3 Network
**Vermittlungsschicht** ( *Internet* )
- Logische Addressierung
- Router
- IP, ICMP
- Ermöglicht Übertragung zwischen zwei Netzwerken, nicht innerhalb einzelner Netzwerke
- Sendegeräte zerlegt die Datenpakete in Fragmente
- Empfängergerät setzt die Fragmente wieder zu Datenpakete zusammen

Stellt das Funktions- und Verfahrensmittel zur Übertragung von Paketen von einem Knoten zur anderen in "verschiedenen Netzwerken" bereit. Ein Netzwerk ist ein Medium, an dem viele Knoten angeschlossen werden können, auf denen jeder Knoten eine Adresse hat und die mit ihm angeschlossenen Knoten aufweist, um Nachrichten an andere mit ihm angeschlossene Knoten zu übertragen, indem er lediglich den Inhalt einer Nachricht und der Adresse des Ziels anbietet Knoten und das Netzwerk lassen Sie den Weg finden, um die Nachricht an den Zielknoten zu liefern und möglicherweise durch Zwischenknoten zu leiten. Die Netzwerkschicht ist dafür zuständig, das Ziel Ihrer Anfrage zu finden. Das Internet ist beispielsweise ein riesiges Netzwerk; wenn Sie Informationen von einer Webseite anfordern möchten, nimmt die Netzwerkschicht die IP-Adresse der Seite und ermittelt die beste Route. In diesem Stadium arbeiten wir mit der so genannten logischen Adressierung (d. h. IP-Adressen), die immer noch softwaregesteuert ist. Logische Adressen werden verwendet, um Ordnung in Netzwerke zu bringen, sie zu kategorisieren und zu sortieren. Die derzeit gängigste Form der logischen Adressierung ist das IPV4-Format, mit dem Sie wahrscheinlich bereits vertraut sind (z. B. ist 192.168.1.1 eine gängige Adresse für einen Heimrouter).
### Layer 4 Transport
**Transportschicht** ( *Host-to-Host* )
- Protokoll Auswahl
- Flusskontrolle, Segmentierung
- TCP, UDP
- Die Daten werden als Pakete, in kleine Einheiten zerlegt und mit Header-Informationen segmentiert
- Die Segmentierung teilt der Sitzungsschicht mit, ob sie eine erneute Verbindung herstellen muss, falls einzelne Pakete "fallen gelassen" wurden oder unvollständig angekommen sind.

Stellt das Funktions- und Verfahrensmittel zur Übertragung von Datensequenzen mit variabler Länge von einer Quelle an einen Zielhost bereit, während die Qualität der Servicefunktionen aufrechterhält. Die Transportschicht steuert die Zuverlässigkeit eines bestimmten Links durch Durchflusssteuerung, Segmentierung / Desegmentierung und Fehlersteuerung. Die Transportschicht ist eine sehr interessante Schicht, die zahlreiche wichtige Funktionen erfüllt. Ihre erste Aufgabe besteht darin, das Protokoll auszuwählen, über das die Daten übertragen werden sollen. Die beiden gebräuchlichsten Protokolle der Transportschicht sind TCP (Transmission Control Protocol) und UDP (User Datagram Protocol); bei TCP erfolgt die Übertragung verbindungsbasiert, d. h. es wird eine Verbindung zwischen den Computern aufgebaut und für die Dauer der Anfrage aufrechterhalten. Dies ermöglicht eine zuverlässige Übertragung, da über die Verbindung sichergestellt werden kann, dass die Pakete alle an der richtigen Stelle ankommen. Eine TCP-Verbindung ermöglicht es den beiden Computern, in ständiger Kommunikation zu bleiben, um sicherzustellen, dass die Daten mit einer akzeptablen Geschwindigkeit gesendet werden und dass verlorene Daten erneut gesendet werden. Bei UDP ist das Gegenteil der Fall: Datenpakete werden im Wesentlichen auf den empfangenden Computer geworfen - wenn dieser nicht mithalten kann, ist das sein Problem (deshalb kann eine Videoübertragung über etwas wie Skype verpixelt sein, wenn die Verbindung schlecht ist). Das bedeutet, dass TCP in der Regel für Situationen gewählt wird, in denen die Genauigkeit wichtiger ist als die Geschwindigkeit (z. B. bei der Dateiübertragung oder beim Laden einer Webseite), während UDP in Situationen verwendet wird, in denen die Geschwindigkeit wichtiger ist (z. B. beim Videostreaming). Wenn ein Protokoll ausgewählt wurde, teilt die Transportschicht die Übertragung in mundgerechte Stücke auf (bei TCP werden diese als Segmente bezeichnet, bei UDP als Datagramme), was die erfolgreiche Übertragung der Nachricht erleichtert.
### Layer 5 Session
**Sitzungsschicht** ( *Prozess* )
- Verbindungsaufbau, Synchronisation
- Logische Anschlüsse, Ports
- RPC, SQL, NFS, NetBIOS, FTP, HTTP
- Erstellen einer Sitzung für die Kommunikation zwischen zwei Geräten.
- Eine Sitzung ist für jeden Nutzer einzigartig und identifiziert ihn als eindeutig, auf dem Remote-Server.
- Die Session muss solange offen bleiben, wie Daten übertragen werden, danach muss sie sich schließen
- Prüft die Vollständigkeit der übertragenen Daten
- Erneuert eine Übertragung bei Fehler

Steuert die Dialoge (Verbindungen) zwischen Computern. Es etabliert, verwaltet und beendet die Verbindungen zwischen der lokalen und entfernten Anwendung. Es bietet Full-Duplex, Halbduplex- oder Simplex-Betrieb und etabliert Verfahren zum Prüfen, Aufhängen, Neustart und Beenden einer Sitzung. Wenn die Sitzungsschicht die korrekt formatierten Daten von der Präsentationsschicht erhält, prüft sie, ob sie eine Verbindung mit dem anderen Computer über das Netz herstellen kann. Ist dies nicht der Fall, sendet sie eine Fehlermeldung zurück und der Prozess wird nicht fortgesetzt. Wenn eine Sitzung aufgebaut werden kann, ist es die Aufgabe der Sitzungsschicht, diese aufrechtzuerhalten und mit der Sitzungsschicht des entfernten Computers zusammenzuarbeiten, um die Kommunikation zu synchronisieren. Die Sitzungsschicht ist besonders wichtig, da die von ihr erstellte Sitzung für die betreffende Kommunikation einzigartig ist.
Sie ermöglicht es Ihnen, mehrere Anfragen an verschiedene Endpunkte gleichzeitig zu stellen, ohne dass alle Daten durcheinander geraten ( denken Sie an das gleichzeitige Öffnen von zwei Registerkarten in einem  Webbrowser )! Wenn die Sitzungsschicht eine Verbindung zwischen dem Host und dem entfernten Computer erfolgreich protokolliert hat, werden die Daten an die Schicht 4 weitergegeben: die Transportschicht.
### Layer 6 Presentation
**Darstellungsschicht** ( *Prozess* )
- " Präsentatinsschicht "
- Format-Übersetzung, Standardisierung
- Syntax, Code, Daten-Konvertierung
- JPEG, ASCII, GIF, FTP, HTTP
- Aufbereitung der Daten für das Anzeigen auf Schicht 7
- Kodierung und Verschlüsselung
	- Es ist üblich dass zwei verschiedene Anwendungen die gleiche Kodierung verwenden, z.B. bei der Verschlüsselten Kommunikation zwischen Webserver und Client über HTTPS
- Komprimierung für die Übersendung

Empfängt Daten von der Anwendungsschicht.
Diese Daten liegen in der Regel in einem Format vor,
das die Anwendung versteht,
aber nicht unbedingt in einem standardisierten Format,
das von der Anwendungsschicht auf dem empfangenden Computer verstanden werden könnte.
Die Präsentationsschicht übersetzt die Daten in ein standardisiertes Format und kümmert sich um die Verschlüsselung,
Komprimierung oder andere Umwandlungen der Daten.
Danach werden die Daten an die Sitzungsschicht weitergegeben. Die Präsentationsschicht stellt den Kontext zwischen Anwendungsschicht-Entitäten her, in dem die Application-Layer-Entitäten unterschiedliche Syntax und Semantik verwenden können, wenn der Präsentationsdienst eine Abbildung zwischen ihnen bietet. Wenn ein Mapping verfügbar ist, werden Präsentationsprotokolldateneinheiten in Session-Protokolldateneinheiten eingekapselt und den Protokollstapel übergeben.
### Layer 7 Application
**Anwendungsschicht** ( *Prozess* )
- Anwendungsschnittstelle
- Dateneingabe/-Ausgabe
- SMTP, FTP, HTTP
- Kommuniziert direkt mit dem Nutzer
- Sichtbare Anwendung auf der Benutzeroberfläche
- Beispiel E-Mail-Client: Nutzer sieht Nachrichten
- Anwendungsprotokolle hier sind zum Beispiel:
	- Simple Mail-Transfer Protocol, kurz: SMTP
	- Hypertext-Transfer Protocol, kurz: HTTP

Stellt den Kontext zwischen Anwendungsschicht-Entitäten her, in dem die Application-Layer-Entitäten unterschiedliche Syntax und Semantik verwenden können, wenn der Präsentationsdienst eine Abbildung zwischen ihnen bietet. Wenn ein Mapping verfügbar ist, werden Präsentationsprotokolldateneinheiten in Session-Protokolldateneinheiten eingekapselt und den Protokollstapel übergeben. Ist die OSI-Schicht, die dem Endbenutzer am nächsten ist, dh sowohl die OSI-Anwendungsschicht als auch der Benutzer interagieren direkt mit der Softwareanwendung. Diese Schicht interagiert mit Softwareanwendungen, die eine kommunizierende Komponente implementieren. Die Anwendungsschicht des OSI-Modells bietet im Wesentlichen Netzwerkoptionen für Programme. Sie arbeitet fast ausschließlich mit Anwendungen und stellt ihnen eine Schnittstelle zur Verfügung, über die sie Daten übertragen können. Wenn Daten an die Anwendungsschicht gegeben werden, werden sie an die Darstellungsschicht weitergegeben.

