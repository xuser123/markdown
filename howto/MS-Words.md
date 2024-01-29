- Einführung Benutzeroberfläche und Optionen Texteingabe mit Fülltext		
- Textmarkiermöglichkeiten und Formartierungen von Texten		
- Textausrichtung Blocksatz und Silbentrennung, Anzeigedarstellung		
- Tabelle einfügen und bearbeiten, Verwendung von Kopf- und Fußzeile		
- Dokumentengestaltung, Blattränder, Faltmarken ,Absenderzeile		
- Datums und Uhrzeiteingabe und Entwicklertools			

**Kopfzeile: Firmenlogo**
- Seitenränder einstellen

**Falt- / Lochmarkierungen**
- 0,2 cm vom Rand weg
- 0,5 cm Strichlänge
- 10,5 cm, 14,85 cm, 21 cm
- "Einfügen", "Formen", Position: Absolut

Adresse: Zeilenhöhe 11pt, Abstand von oben 4,5 cm

**Betreff-Zeile**
- Aktenzeichen
- Kontaktdaten
- Datum (Tabelle/Tabs)

**Anrede**
- Formulierung
- Fußzeile: Firmendaten (Tabelle/Tabs)

**Fülltext** generieren
- **=rand**(Absätze,Sätze)
- Beispiel: ``=rand(2,6)``

**Inhaltsverzeichnis**
1. "Referenzen", "Inhaltsverzeichnis", "benutzerdefiniert"
2. Korrekturen der Überschriften in den Abschnitten ändern, nicht im Inhaltsverzeichnis.
3. Inhaltsverzeichnis aktualisieren.
4. "Gesamtes Verzeichnis"-Kästchen markieren

Vor neuer Überschrift **Gliederungs-Ebene** checken.

Überschriften: 24pt

Unter-Überschriften: 10pt

---

- Formatvorlagen, Überschriftengestaltung, Nummerierung,		
- Inhaltsverzeichnis erstellen und bearb., Formatvorlagen Inhaltsverz.		
- Seitenangaben in Kopf- und Fußzeile, Formatierung bei Textkopieren		
- Abbildungsverz., Bilder und Bildbeschriftung, Bildrand & zuschneiden		
- Seriendruck, Datenquelleerstellen, Seriendruckfelder einfügen,		
- Vorschau, Regeln einfügen, Seriendruckfelder zusammenführen in PDF

**Quelle** erstellen
- Bekannte Angaben müssen eingegeben werden.
- Von "Masterliste" in "Aktuelle Liste" übertragen.

**Bilder** beschriften
- Grafik einfügen
- Rahmen setzen
- Beschriftung einfügen
- Abbildungsverzeichnis (in Anlage)
	- Abbildung 1 ...
	- Abbildung 2 ...

**Inhaltsverzeichnis**-Muster:
1. Inhaltsverzeichnis
2. Dokumentation
	+ 2.1 Information
	- 2.2 Planung / Konzeption
	- 2.3 Durchführung
	- 2.4 Kontrolle und Abschluss
3. Anlagen
	- 3.1 Anlage 1
	- 3.2 Anlage 2
4. Abbildungsverzeichnis
5. Literaturverzeichnis

Formatvorlage ändern

Seitenzahlen aktualisieren

**Adressblock**
- Empfänger erstellen
- Adressblock hinzufügen (in "Sendungen")
- Empfängerliste bearbeiten
- Adressblock einfügen

**Serienbrief** Platzhalter
<<Anrede>>
- {MERGEFIELD Anrede}
<<Vorname>> <<Nachname>>
- {MERGEFIELD Vorname}{MERGEFIELD Nachname}
<<Adresszeile>>
- {MERGEFIELD ...

HIER NACHARBEITEN !!!
<<Postleitzahl>> <<ORT>>

Anrede: "Sehr geehrte/r" programmieren mit Regel
- Sehr {IF{MERGEFIELD Anrede}="Herr""geehrter""geehrte"}{MERGEFIELD Anrede}
- {MERGEFIELD Nachname},

Menüband "Sendungen", Element "Regeln v"
- Bedingungsfeld einfügen (wenn dann sonst)

Alt+F9 = Feldfunktionen EIN / AUS

Überschriften-Nummerierung:
Menüband "Formatvorlagen", Element "Überschriften-Ebene zuweisen"

Arial 1,5 Blockseite

---

- Speichern, Menüband individualisieren, Autokorrektur, Textfelder		
- Bilder spezifisches, Illustrationen und deren Einsatzzwecke,		
- Datenschutz, Serienbrief Troubleshooting, Tabstopps,		
- Bausteine, Dokument einrichten		

**Fülltext generieren**
- ``rand(3.2)``
- ``lorem()``
- ``rand.old(2.1)``

**Layout Zeilennummern**
- Gruppe "Suchen und Ersetzen"

**Textdatei-Suffix**
- Word-Dokument: .docx
- OpenDocument-Text: .odt

**temporäre Datei** 96 Stunden (4 Tage) vorhanden
- %AppData%\Microsoft\Word\

**Strg + S** = Speichern, **F1** = Hilfe

**Hyperlink einfügen**
- Gruppe "Bearbeiten"
- Tipp: "Quick Info" bearbeiten

**Benutzeroberfläche**

| Begriff | Beschreibung |
| ---- | ---- |
| Register | Menüleiste "Datei", "Start", "Einfügen", ... |
| Backstage | Dateiverwaltung, bei Klick auf "Datei" |
| Menü-Band | Menügruppen unter Menüleiste |
| Gruppe | Gruppierte Elemente im Menüband |
| Element | Tool-Auswahl in Menügruppe |


**Oberfläche definieren**
- Word-Optionen, "Menüband anpassen"

**Automatische Korrektur**
- Word-Optionen, "Dokumentenprüfung", "AutoKorrektur"

**Textfeldkatalog**
- Gruppe "Text", Element "Textfeld"
- "Auswahl im Textfeldkatalog speichern"
	- <Textfeld-Name> eingeben (als Text), F3 drücken.
	- Textfeld wird eingefügt (aus Textfeldkatalog)
- \Users\\Dokumente\Meine Datenquellen\Datenbank.mdb

**Programmfenster-Screenshot**
- AltGr + Druck = Screenshot im Zwischenspeicher
- Snipping Tool (snp)

- Achtung: Word kann nicht zuschneiden, nur ausblenden!

**Bild hinter Text platzieren**
- Register "Start", Gruppe "Bearbeiten"
- "Markieren", "Objekt auswählen"

**Vertikale Auswahl (Spalten)**
- Alt + (Linke Maustaste gedrückt)

**Word-Ordner mit temporären Dateien**
- %AppData%\Microsoft\Document Building Blocks\

**Tabulator-Trick** Tabstopps in Zwischenablage kopieren
- in Text-Absatz klicken, "Absätze", "Tabstopps", "OK"
- Einfügen: Text markieren, F4 drücken

---

- Erweiterte Funktionen, Mail, Kalender, Kontakte, Augaben		
- Effizientes Arbeiten, Kontakte anlegen, Termine, Aufgaben		
- Grundmenüs in der Ansicht anpassen		
- Tipps zum effizienten Arbeiten in Outlook		

**Word - Basics & Tipps**
- "Überprüfen"-Register
	- Menügruppe "Kommentare", Element "Kommentare anzeigen"
		- "Neuer Kommentar", Text vorher markieren!
	- "Threat gelöst"-Funktion
- "Änderungen annehmen"-Funktion
- Passwort-Funktion

**Prüfungstipp**:
- Bilder mit Farben die dem Hintergrund gleichen, hervorheben!
	- ...durch einen Rahmen, z.B. in grau und dünn
- Tab-Abstände per Doppelklick
	- ...ins Dokument, an Stelle doppelklicken
- Formel 32 -> 39 !!!! Keine Ahnung was ich da notiert habe, sry !!!!