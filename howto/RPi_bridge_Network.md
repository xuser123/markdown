# Raspberry Pi Wheezy Network Bridge

# Variante 1
## Whezzy auf Raspberry Pi 1 Model B
- USB-Wifi-Adapter angeschlossen
- Ethernet-Schnittstelle mit Router A verbunden
- WLAN-Schnittstelle Raspberry Pi soll mit Router B verbunden sein
- Das Netzwerk von Router A soll den Raspberry Pi als Internetzugang nutzen
- Router B vergibt IP-Adressen per DHCP
- Ethernet-Schnittstelle des Raspberry Pi soll eine statische IP-Adresse bekommen und das Netzwerk A mit Netzwerk B verbinden
- Netzwerk B soll nicht wissen, dass außer dem Raspberry Pi noch andere Clients existieren
- Außerdem soll Netzwerk A eine hohe Netzwerksicherheit haben

1. Raspberry-Pi-Updates und -Pakete installieren

Um sicherzustellen, dass alle Pakete auf dem neuesten Stand sind und wir alle erforderlichen Pakete für die Konfiguration installiert haben, verwenden wir die folgende Befehlszeile:

```
sudo apt-get update && sudo apt-get upgrade && sudo apt-get install bridge-utils
```

2. Netzwerk-Configuration

Bevor wir die Bridge einrichten können, müssen wir die Netzwerkschnittstellen konfigurieren. Die Ethernet-Schnittstelle benötigt eine statische IP-Adresse für die Verbindung zu Router A. Überprüfen Sie zunächst, wie die Schnittstellen auf dem Raspberry Pi heißen:

```
ifconfig
```

Die Ausgabe zeigt uns die Schnittstellen: Ethernet-Schnittstelle eth0 und WLAN-Schnittstelle wlan0.

Konfigurieren Sie nun die Netzwerkschnittstellen:

```
sudo nano /etc/network/interfaces
```

Fügen Sie folgende Zeilen am Ende der Datei ein:

```
# Ethernet
auto eth0
iface eth0 inet static
    address 192.168.1.2
    netmask 255.255.255.0
    gateway 192.168.1.1

# WLAN
auto wlan0
iface wlan0 inet dhcp
    wpa-ssid "Name des WLAN-Netzwerks von Router B"
    wpa-psk "Passwort des WLAN-Netzwerks von Router B"
```

Speichern und schließen Sie die Datei.

3. Bridge erstellen

Binden Sie die beiden Netzwerkschnittstellen zur Erstellung der Bridged-Verbindung zusammen, indem Sie die neue Bridging-Konfigurationsdatei hinzufügen:

```
sudo nano /etc/network/interfaces.d/bridge.conf
```

Fügen Sie folgende Zeilen in die Datei ein:

```
# Bridge setup
auto br0
iface br0 inet dhcp
bridge_ports eth0 wlan0
```

Speichern und schließen Sie die Datei.

4. Netzwerk konfigurieren

Stellen Sie sicher, dass die Pakete "arptables" und "ebtables" installiert sind:

```
sudo apt-get install arptables ebtables
```

Sperren Sie den Datenverkehr, der über das Ethernet-Interface des Raspberry Pi geht, um eine bessere Netzwerksicherheit zu gewährleisten. Ausgabe des Befehls:

```
sudo iptables -A FORWARD -i eth0 -j DROP
```

5. Neustart

Starten Sie den Raspberry Pi neu, um alle Änderungen anzuwenden:

```
sudo reboot
```

Wenn Sie Ihren Raspberry-Pi erfolgreich gestartet haben, ist er jetzt mit dem WLAN-Netzwerk von Router B verbunden. Der Raspberry-Pi fungiert als Brücke zwischen Router A und Router B, so dass Router A den Raspberry-Pi als Internetzugang nutzt, Router B jedoch nicht weiß, dass außer dem Raspberry Pi noch andere Clients existieren.

### Sicherheitsvorkehrungen:

1. Passwort des WLAN-Netzwerks von Router B sichern

Das Passwort des WLAN-Netzwerks von Router B, das in der Einstellungsdatei des Netzwerks von Raspberry Pi gespeichert ist, sollte sicher aufbewahrt werden. Es ist am besten, ein Passwort zu verwenden, das aus einer Kombination von Groß- und Kleinbuchstaben, Zahlen und Sonderzeichen besteht.

2. Stärken der Netzwerkkonfiguration

Es ist empfehlenswert, die Bridging-Konfigurationsdatei des Raspberry Pi nur für Benutzer mit administrativen Berechtigungen zugänglich zu machen. Um dies zu erreichen, fügen Sie den folgenden Befehl in die Kommandozeile ein:

```
sudo chmod 600 /etc/network/interfaces.d/bridge.conf
```

Dies gewährleistet, dass nur der Systemadministrator der einzige Benutzer ist, der die Bridging-Konfigurationsdatei aufrufen kann.

3. Sperren von Ports und Protokollen

Um die Netzwerksicherheit weiter zu erhöhen, kann man bestimmte Ports und Protokolle sperren, die nicht benötigt werden. Dazu können Sie die Firewall-Regeln anpassen, um den Datenverkehr zu kontrollieren. Eine Möglichkeit, dies zu tun, ist die Verwendung von "UFW" (Uncomplicated Firewall) und dem Einrichten von Regeln für den gesperrten Datenverkehr.

Zum Beispiel können Sie die folgenden Regeln einrichten, um eingehenden Datenverkehr zu sperren, der nicht für das Netzwerk A bestimmt ist:

```
sudo ufw deny in on eth0 from any to any
sudo ufw deny in on wlan0 from any to 192.168.1.0/24
```

Hierbei wird der eingehende Datenverkehr für das Ethernet-Interface des Raspberry Pi gesperrt. Darüber hinaus wird der eingehende Datenverkehr des WLAN-Interfaces eingeschränkt, um nur aus dem Netzwerk A zu kommen.

4. Aktualisierungen und Patches durchführen

Es ist wichtig, sicherzustellen, dass alle Sicherheits-Patches und -Updates für den Raspberry Pi und die installierten Pakete regelmäßig durchgeführt werden, um mögliche Sicherheitslücken zu schließen.

Durch die Implementierung dieser Sicherheitsvorkehrungen können Sie sicherstellen, dass das Netzwerk des Raspberry Pi sicher ist, dass nur der Raspberry Pi Zugriff auf das Netzwerk B hat, und dass das Netzwerk A vor potenziellen Angriffen von außen geschützt ist.
# Variante 2
## wlan-eth-bridged-client-network-router
### Raspberry Pi 1 Model B als WLAN-Ethernet-Router-Bridge für Client-Netzwerk-Router
#### /etc/wpa_supplicant/wpa_supplicant.conf
```
network={
  ssid="NAME"
  psk="PASSWORT"
}
```
#### /etc/network/interfaces
```
auto wlan0
iface wlan0 inet dhcp
wpa-conf /etc/wpa_supplicant/wpa_supplicant.conf
```
`sudo ifup wlan0`
#### /etc/network/interfaces
```
allow-hotplug eth0
iface eth0 inet dhcp
```
`sudo apt-get install dnsmasq`
#### /etc/dnsmasq.conf
```
interface=wlan0
listen-address=192.168.42.1
dhcp-range=192.168.42.10,192.168.42.50,12h
```
`sudo apt-get install dhcpcd`

#### NAT-Konfiguration

IP-Weiterleitung aktivieren
`sudo sh -c "echo 1 > /proc/sys/net/ipv4/ip_forward"`

Leite den Internetverkehr vom Client-Netzwerk an das WLAN-Interface weiter und maskiere Quell-IP-Adressen, damit Antwort vom Router zurückgeleitet werden kann:
`sudo iptables -t nat -A POSTROUTING -o wlan0 -j MASQUERADE`

Erlaube Geräten im Client-Netzwerk, bereits etablierte Verbindungen
`sudo iptables -A FORWARD -i wlan0 -o eth0 -m state --state RELATED,ESTABLISHED -j ACCEPT

Erlaubt Geräten im Client-Netzwerk, Verbindungen zum Internet
`sudo iptables -A FORWARD -i eth0 -o wlan0 -j ACCEPT`

Firewallregeln bei jedem Systemstart automatisch
`sudo sh -c "iptables-save > /etc/iptables.ipv4.nat"`

### /etc/network/interfaces
`up iptables-restore < /etc/iptables.ipv4.nat`
`sudo service network-manager stop`
`sudo service networking restart`
`sudo service dnsmasq restart`

### /etc/dhcpcd.conf
In dieser Konfiguration weisen wir der Ethernet-Schnittstelle eth0 eine statische IP-Adresse von 192.168.42.1/24 zu.
dhcpcd soll mit wpa_supplicant zusammenarbeiten. Außerdem verbieten wir dhcpcd, die WLAN-Schnittstelle wlan0 automatisch zu konfigurieren. Die Konfiguration der WLAN-Schnittstelle erfolgt stattdessen über wpa_supplicant.conf.
```
interface eth0
static ip_address=192.168.42.1/24
nohook wpa_supplicant
denyinterfaces wlan0
interface wlan0
nohook wpa_supplicant
```

### /etc/dnsmasq.conf
dnsmasq soll auf wlan0 lauschen und IP-Adressen im Bereich von 192.168.42.10 bis 192.168.42.50 verteilen, mit einer Lease-Zeit von 12 Stunden. IP-Adresse 192.168.42.1 belauschen und Anfragen nur auf dieser Adresse akzeptieren.
Erlaubt es dem dnsmasq-Dienst, DHCP-Anfragen von Geräten im Client-Netzwerk zu erhalten und ihnen IP-Adressen zuzuweisen. Außerdem kann es DNS-Anfragen beantworten und den Clients Namen im Netzwerk zuweisen.
```
interface=wlan0
listen-address=192.168.42.1
dhcp-range=192.168.42.10,192.168.42.50,12h
```
# Variante 3
## Raspian Network Bridge
### Proxy mit eth0-zu-wlan0-Netzwerkbrücke für zwei Router auf Raspbian

Geräte die per LAN-Ports einer Fritzbox, die einen Proxy mit Netzwerkbrücke als Internetzugang auf LAN-Port 1 benutzen und beide Router mit dem Internet des zweiten Router verbinden

Erforderliche Pakete installiere:

```
sudo apt-get update
sudo apt-get install bridge-utils
```

Netzwerkbrücke zwischen eth0 und wlan0 erstellen. 
`/etc/network/interfaces` editieren (Zeilen einfügen):

```
auto lo

iface lo inet loopback
iface eth0 inet manual
iface wlan0 inet manual

auto br0
iface br0 inet dhcp
bridge_ports eth0 wlan0
```

Sobald die Brücke erstellt wurde, können wir nun den Proxy konfigurieren. Hier gehen wir davon aus, dass du Squid als Proxy-Server verwendest. Installiere Squid mit dem folgenden Befehl:

```
sudo apt-get install squid
```

Anschließend öffne die Datei `/etc/squid/squid.conf` und füge die folgenden Zeilen hinzu:

```
http_port 3128
cache_dir ufs /var/cache/squid 100 16 256

acl localnet src 192.168.0.0/16
http_access allow localnet
http_access deny all
```

Dies konfiguriert Squid, um auf Anfragen auf Port 3128 zu lauschen und Anfragen von Geräten im 192.168.0.0/16-Netzwerk zuzulassen. Wenn du ein anderes Netzwerk verwendest, musst du die IP-Adresse entsprechend anpassen.

Als nächstes konfigurieren wir die Fritzbox, um den Proxy-Server zu verwenden. Öffne das Fritzbox-Webinterface und navigiere zum "Internet" - "Zugangsdaten" - "Erweiterte Einstellungen" - "Internetverbindung". Wähle "Manuelle Einstellung" aus und trage anschließend die IP-Adresse und Port-Nummer des Proxy-Servers ein (in diesem Beispiel 192.168.0.1 auf Port 3128).

Zum Schluss müssen wir sicherstellen, dass die Geräte, die mit dem zweiten Router verbunden sind, dessen IP-Adresse als Standard-Gateway und DNS-Server verwenden. Öffne dazu die Einstellungen der jeweiligen Geräte und trage die IP-Adresse des Routers als Standard-Gateway und DNS-Server ein.

Damit sollten nun alle Geräte mit dem Internet des zweiten Routers verbunden sein und den Proxy-Server über die Fritzbox als Internetzugang nutzen.

# Variante 4
### Netzwerk-ID von Fritzbox 192.168.178.0, zweiter Router Internetzugang 192.168.0.0

In diesem Fall die Konfiguration anpassen

1. Öffne die Datei `/etc/network/interfaces` und füge die folgenden Zeilen hinzu:

```
auto lo

iface lo inet loopback
iface eth0 inet manual
iface wlan0 inet manual

auto br0
iface br0 inet dhcp
bridge_ports eth0 wlan0
bridge_stp off
bridge_fd 0
```

Erstellt die Netzwerkbrücke zwischen eth0 und wlan0 und setzt die Bridge-Optionen.

2. Installiere Squid mit dem folgenden Befehl:

```
sudo apt-get install squid
```

3. Öffne die Datei `/etc/squid/squid.conf` und füge die folgenden Zeilen hinzu:

```
http_port 3128
cache_dir ufs /var/cache/squid 100 16 256

acl localnet src 192.168.0.0/24
http_access allow localnet
http_access deny all
```

Dies konfiguriert Squid, um auf Anfragen auf Port 3128 zu lauschen und Anfragen von Geräten im 192.168.0.0/24-Netzwerk zuzulassen. Beachte, dass die Netzwerk-ID des zweiten Routers 192.168.0 ist, daher hat das Netzwerk eine Netzmaske von 255.255.255.0.

4. Öffne das Fritzbox-Webinterface und navigiere zu "Heimnetz" - "Netzwerk" - "Netzwerkeinstellungen". Ändere den IP-Adressbereich der Fritzbox auf 192.168.0.0, um Überschneidungen mit dem Netzwerk der zweiten Router zu vermeiden.

5. Verbinde die Router über ein LAN-Kabel und schließe den zweiten Router an den Raspbian an.

6. Konfiguriere den zweiten Router mit den folgenden Einstellungen:

- IP-Adresse: 192.168.0.1
- Subnetzmaske: 255.255.255.0
- Standard-Gateway: 192.168.0.2
- DNS-Server: 192.168.0.2

7. Konfiguriere die Fritzbox mit den folgenden Einstellungen:

- IP-Adresse: 192.168.0.2
- Subnetzmaske: 255.255.255.0
- Standard-Gateway: (leer lassen)
- DNS-Server: 192.168.0.1

8. Konfiguriere die Geräte, die an den zweiten Router angeschlossen sind, mit den folgenden Einstellungen:

- IP-Adresse: 192.168.0.x (wobei x der Geräte-Nummer entspricht)
- Subnetzmaske: 255.255.255.0
- Standard-Gateway: 192.168.0.1
- DNS-Server: 192.168.0.1

Damit sollten nun alle Geräte mit dem Internet des zweiten Routers verbunden sein und den Proxy-Server über die Fritzbox als Internetzugang nutzen.

# Variante 5
## Ethernet-zu-WiFi-Proxy auf Raspbian konfigurieren

1. Installieren Sie dnsmasq: `sudo apt-get install dnsmasq`

2. Öffnen Sie die dnsmasq-Konfigurationsdatei `/etc/dnsmasq.conf` und bearbeiten Sie sie entsprechend. Fügen Sie die folgenden Zeilen hinzu:

```
interface=wlan0
dhcp-range=192.168.4.2,192.168.4.20,255.255.255.0,24h
```

Hier ist `wlan0` die WLAN-Schnittstelle, die als Zugangspunkt konfiguriert ist, und `dhcp-range` gibt den IP-Adressbereich an, der für die Geräte verfügbar sein soll.

3. Konfigurieren Sie die IP-Adresse für die Ethernet-Schnittstelle. Dies kann durch Bearbeiten der Datei `/etc/network/interfaces` erfolgen. Fügen Sie die folgenden Zeilen hinzu:

```
auto eth0
iface eth0 inet static
address 192.168.4.1
netmask 255.255.255.0
```

Hier ist `eth0` die Ethernet-Schnittstelle und die IP-Adresse wurde auf `192.168.4.1` festgelegt.

4. Aktivieren Sie IP-Weiterleitung: `sudo sysctl net.ipv4.ip_forward=1`.

5. Konfigurieren Sie iptables, um den Netzwerkverkehr zu NAT (Network Address Translation) weiterzuleiten:

```
sudo iptables -t nat -A POSTROUTING -o wlan0 -j MASQUERADE
sudo iptables -A FORWARD -i wlan0 -o eth0 -m state --state RELATED,ESTABLISHED -j ACCEPT
sudo iptables -A FORWARD -i eth0 -o wlan0 -j ACCEPT
```

Diese Konfiguration würde den Internetzugang über die Ethernet-Schnittstelle teilen und alle angeschlossenen Geräte (über WLAN) würden über die IP-Adresse `192.168.4.1` mit dem Internet verbunden werden.

Nun haben Sie die Konfiguration eines Ethernet-zu-WiFi-Proxys auf einem Raspbian-System abgeschlossen.