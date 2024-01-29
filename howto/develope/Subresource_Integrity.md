---
tags:
  - sri
  - subresource
  - integrity
  - development
  - prevention
  - security
  - cdn
  - cors
---
Link: [developer.mozilla.org - Subresource Integrity (SRI)](https://developer.mozilla.org/en-US/docs/Web/Security/Subresource_Integrity)
### SRI-Basics
**Prüfsummen** von geladenen Ressourcen im Webbrowser mit **definierten Werten** vergleichen um Dateimanipulation zu verhinderen.
### Anwendung
Datei-Integrität
- Markup (.html .xml ...)
- Stylesheets (.css)
- Fonts (.svg .ttf .woff .woff2 ...)
- JavaScript (.js .json)
- Bilder (.jpg .png .ico ...)
- Content Delivery Networks (CDNs)
### Templates
Prüfsummen-Wert und Dateipfad/URL für Fonts mit HTML-Element 
`<link>` oder `<script>` im Website-Quelltext einsetzen:
```html
<link
	rel="stylesheet"
	href="pfad/schrift.datei"
	integrity="algorithmus-pruefsumme"
	crossorigin="anonymous"
/>
```

```html
<script
	src="https://adresse/schrift.datei"
	integrity="algorithmus-pruefsumme"
	crossorigin="anonymous"
/>
```
### Cross-Origin Resource Sharing (CORS)
1. Client-Anfrage einer Website-Datei
2. Server-**CORS-Header** Anonymisierung
	- Selbstbestimmte **Quellenangabe**
		- Erlaubnis für angefragte Ressourcen

3. Client-"**Preflight-Anfrage**" vor der Hauptanfrage sendet berechnete Prüfsumme, informiert über HTTP-Methode und Header der Hauptanfrage.
4. Server bestätigt bei Übereinstimmung der Prüfsummen-Werte und erlaubt die Hauptanfrage.
 


