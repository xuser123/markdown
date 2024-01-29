- Bestimmt ob/wie ein Element angezeigt wird
- Der Standardwert für die meisten Elemente ist Block oder Inline
	- Block-Elemente: Neue Zeile, gesamte/verfügbare Breite
	- Inline-Element: Behält Zeile, nur benötigte Breite
- Häufig in Verwendung mit JavaScript
	- Elemente aus-/einblenden
- < script > -Elemente standardmäßig display: none

mit `display:` und `visibility:` Objekte ausblenden, verstecken,
oder formen.
- Standardwert (meistens) entweder `block;` oder `Inline;`
- Oft mit JavaScript `<script>`, Standardwert `display: none`.
#### Vorlagen
Gesamte-verfügbare Breite, Textumbrüche
```css
span {display: block;}
```

Nur benötigte-horizontale Breite 
```css
li {display: inline;}
```

Inhalt und Objekt entfernen 
```css
div.removed {display: none;}
```

Inhalt verstecken, Objekt lassen
```css
div.hidden {visibility: hidden;}
```
