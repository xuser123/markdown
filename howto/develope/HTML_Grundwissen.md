---
tags:
  - html
  - css
  - php
  - code
  - web
  - development
  - basics
---
- HTML ist eine Auszeichnungssprache
	- keine richtige Programmierung
- Übersetzt Quellcode zur Website-Darstellung
- Beinhaltet Texte, Verweise und Einbettungen
	- Nur die Inhalte, ohne Stil-Vorgaben
	- Stil, Design und Formattierung mit CSS und JS
- Quellcode ist (menschlich-lesbarer) Text
- Website-Elemente sind in s.g. "Tags" gekapselt
- ...man kann eine Website mit jedem Texteditor schreiben
- Entwicklungsumgebung Visual Studio Code / Notepad++
- **Favicons**, Strukturelemente, Metadaten für Suchmaschinen, **robots.txt
- Webseite mit Hilfe eines Templates erstellen**
- Webframeworks integrieren
	- Wordpress
	- Bootstraps
- Datenschutzprobleme mit Schriftarten (Fonts)
- JavaScript und PHP integrieren
- Beispiel:
	1. Anfrage vom Internetbrowser beim DNS-Server über **TCP/IP**
	2. **DNS**-Server übermittelt die IP des Webservers
	3. **HTTP**-Anfrage vom Browser beim Webserver auf **Port 80**
	4. Webserver-Software stellt seine lokale Website-Dateien bereit
		- Website-Inhalt werden aus `index.html` aufgerufen
	5. Internetbrowser lädt verlinkte Dateien
		- (Bspw. JPG, CSS, JS, ...)
### Sonstige Begriffe 
- **IANA** Internet Assigned Numbers Authority
- **ICANN** Internet Corporation for Assigned Names and Numbers
- **IONOS** (United Internet AG)
- **ANS** Autonomous System Number
- **FQDN** Fully Qualified Domain Name
- **FQHN** Fully Qualified Hostname
- DNS-Hierarchie:
	- **Root-Domain** ("Null/Root-Label")
	- **Top-Level-Domain** ("TLD")
	- **Second-Level-Domains**
	- **Third-Level-Domain**
- **DNSSEC** Domain Name System Security Extensions
- Ressource Record (**RR**)
### Ressource Record
ASCII-Format: `<name> [<ttl>] [<class>] <type> [<rdlength>] <rdata> ` 
- `<name>` Domänenname des Objekts
- `<ttl>` (optional) "time to live" Gültigkeit (in Sekunden)
- `<class>` (optional) Protokollgruppe
- `<type>` Typ-Beschreibung des Ressource Records
- `<rdlength>` (optional) Datenlänge / RR-Beschreibung 
- `<rdata>` Ressource-Daten, RR-Beschreibung
	- Beispiele:
		- IP-Adresse für `A-RR`
		- Hostnamen für `NS-RR`
### Protokollgruppen / Klassen:
- `IN` (Internet),
	- andere Klassen sind nur noch von historischer Bedeutung
		- Bspw. CH (Chaosnet), HS (Hesiod), CS (CSNET), ...
### CMD/Terminal-Befehle 
- `ping ` IP oder Domain auf Erreichbarkeit prüfen
- `nslookup ` IP einer Domain erfragen
### Webserver-Host und Domain
- Server im Internet mit fester IP (Gegen € pro Monat)
- Server braucht eine Websoftware (zB. Apache) und Datenträger
- Namen für die IP (Gegen € pro Monat)
### HTML-Grundgerüst
Website-Struktur im < html > Bereich
```html
<!DOCTYPE html>
<html lang="de">
<head>
	<!-- Zeichenformatierung: utf-8 für Umlaute -->
    <meta charset="utf-8"/>
    <!-- Favicon -->
    <link rel="icon" href="includes/favicon.ico">
    <!-- CSS -->
    <link rel="stylesheet" href="includes/style.css">
    <!-- Meta Info über Seite -->
    <meta name="author" content="Verfasser/Autor">
    <meta name="description" content="Beschreibung für Suchmaschinen"/>
    <meta name="keywords" content="Schlüsselworte für Suchmaschinen"/>
    <title>Seitentitel im Browsertab</title>
</head>
<body>
    <!-- Hier liegt der Code für den Seiteninhalt -->
</body>
</html>
```
### PHP (Personal Homepage Preprocessor)
- PHP-Code wird im HTML-Quellcode aufgelöst
	- Stattdessen sieht man nur Eingesetztes
### Web Verzeichnisse
- Webhost über FTP / SFTP / SSH
- Linux: Apache
	- /var/www/html/index.html 
- Windows: XAMPP 
	- C: > xampp > htdocs > index.html 
- Ordner `includes` oder `assets`
	- `style.css` Darstellung formatieren,
	- `fonts`Schriftarten, 
	- `navibar.js` JavaScript / Skripte
### Sonderzeichen / Codierung
- `<meta charset="utf-8"/>`
	- ...für Umlaute wie ä ö ü
### Pfadangaben
- Bilder: `src="Ordner/Bild.png" `
- HTML/CSS/PHP-Dateien: `href="Ordner/Datei" ` 
### Textformatierung
- Zeilenumbrüche `<hr> ` 
- Absätze `<br> `
- Zitate `<blockquote> `
- präformatierter Text einfügen `<pre>Textzeilen</pre> `
	- Umbrüche werden übernommen
### CSS Design
Cascading Stylesheets
- Formatierung von HTML Elementen
	- Bsp.: `style="text-align:center" ` 
- benötigt HTML Elemente,
	- bspw. `<p><div>` 
- `style` ist die Formatierungsangabe,
	- (Katalog lesen)
- Syntax: `"<format>:<Formatierung>;" ` 
- Formatieren kann man alles,
	- bspw. Schrift, Größer, Boxen, Rahmen, Ränder, Hintergrund ...
- im HTML Dokument oder seperat (von extern)
- Seperate FOrmatierung benötigt Identifizierung der Elemente
- Ientifizierung durch HTML, Klasse, ID
	- Selektoren: [Selektoren](https://developer.mozilla.org/en-US/docs/Learn/CSS/Building_blocks/Selectors)
### HTML Layout 
Ohne Layout wird HTML als Script ausgeführt
- Nebeneinander gibt es nicht ( außer Tabelle )
- Für das Layout wurde `<div>`Tag als Container standardisiert
- Der `<div>` selbst hat keine Funktion
### Beispiel Arbeitsumgebung
- Entwicklungsumgebung für HTML/CSS/PHP/JavaScript
	- z.B. Visual Studio Code
- Dateitransfer zum Webserver
	- SSH oder SFTP
	- Extra Tool **Mobaxterm**
	- VSC integriert
- Zusätzliche Hilfe:
	- [HTML Online](https://html-online.com) html-online.com 
	- [Favicon Generator](https://favicon.pro) favicon.pro 
	- [References](https://developer.mozilla.org) developer.mozilla.org/de **Referenzen** 
	- [HTML Online Code Checker](https://validator.w3.org) HTML/CSS Checker von **w3**
- Webserver:
	- `http://fi22ii.westeurope.cloudapp.azure.com/ `
- Hostadresse:
	- `fi22ii.westeurope.cloudapp.azure.com ` 
- Benutername: Anfangsbuchstabe des Vor- und Nachnamen
	- Bspw. Matthias Reimann = mr
- Kennwort: Fachinformatiker2023
- Webordner: `~/public_html/ ` 
	- Adresse / Zielverzeichnis
		- `http://fi22ii.westeurope.cloudapp.azure.com/~mr ` 
- Verbindung zum Webserver über SSH:
	- `ssh mr@fi22ii.westeurope.cloudapp.azure.com ` 
### VSCode für SSH-Webgestaltung einrichten
VSCode Erweiterungen:
- German Language Pack
- HTML CSS Supply
- Remote SSH
SSH Konfiguration:
- Icon für SSH-Remote unten in der linken Seitenleiste
- "SSH Target": 
	- `ssh mr@fi22ii.westeurope.cloudapp.azure.com ` 
	- `C:\Users\webdeveloper\.ssh\config ` 
	- "Linux" auswählen
	- "Continue" klicken (Schlüssel bestätigen)
- "Explorer"-Icon, oben in der linken Seitenleite klicken
	- auf "Ordner öffnen" klicken
		- `/home/mr/ ` eingeben und "OK"
### index.html erstellen
1. Ordner `puplic_html` anlegen
2. Neue Datei anlegen: `index.html` 
3. HTML-Grundgerüst schreiben
4. Website im Browser aufrufen:
	- `http://fi22ii.westeurope.cloudapp.azure.com/~mr ` 
