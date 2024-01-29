- MS Excel Benutzeroberfläche, Aufbau Tabellenblatt, Zellbezüge		
- Übung zu gemischten Bezügen, Zellen verschieben oder kopieren		
- Füllfunktion und Verhalten der Zellinhalte, Möglichkeiten der Berechnung		
- von Zellinhalten, Zellformatierung, Bearbeiten und Löschen von		
- Zellinhalten, Fehler bei der Eingabe und Fehlermeldung		
- Formel anzeigen		

**Excel Basics & Tipps**
- F4-Taste = Funktionswert fixieren
- Funktionsassistent -> Funktion per Maus groß ziehen
- Funktionsargumente per Maus groß ziehen
- Kästchen benennen
	- Feld links oben, unter erster Menügruppe
	- Kästchennamen als Wert in Funktionen benutzen
- Kästchengröße anpassen
	- Doppelklick auf Lineal
- Monate-Füllfunktion per Maus
- Tabellen per Formatvorlagen gestalten
- Tabellenzeile markieren, Formatierung entfernen:
	- Menügruppe "Entwurf", Element "Tools"
		- "In Bereich konvertieren"
- Diagramme
	- Register "Diagrammentwurf", Menügruppe "Entwurf", Element "Diagramm"
- Datum als Funktionswert, z.B. Tage-Berechnung
	- Dateif(<Wert1>;<Wert2>;"Y")
		- Anzahl der Tage, aufgerundet
		- Y = Jahr, D = Tag, W = Woche, M = Monat, Y = Jahr
- Funktion: =ABRUNDEN(<Wert1>;<Wert2>)
	- Auf ganze Zahlen abrunden
	- Siehe "Start" -> "Funktion einfügen" (Liste)
- Funktion: =MONAT(<Wert>)
	- Monatsformat möglich
	- Siehe "Start" -> "Funktion einfügen" (Liste)
- Funktion: ="du "&TEXT(E6;"TTTT, TT.MM.JJJJ")
	- Beispiel-Ergebnis: du Dienstag, 23.08.1969
- Strg-Taste gedrückt halten beim runterziehen (Funktion für Funktionen...lol)

---

- Tabellenformate erzeugen und zurückwandeln, WENN-Funktion		
- Verschachtelte WENN-Funktion über Funktionsassistent lösen		
- Gestaltung und Änderungen von Tabellen inkl. Einfügen und …		
- … Änderung von Diagrammen, Datumsfunktion HEUTE() und JETZT() .		
- Datums und Uhrzeitformate, Rechnen mit Zeitangaben		
- Stundenübersicht		

**MS Excel Funktionen & Co**
- Füllfunktion per Doppelklick, wenn Tabelle vorgelegt ist
- Zeit-Programmierung ist ab 01.01.1900 (Datum-Funktion)
	- Standardwert ist ANzahl der Tage ab 01.01.1900
- Funktion: =(JETZT)
	- Aktuelles Datum & Uhrzeit
- "Zellen formatieren" Formate einstellen
	- z.B. Monats-Nullen ausblenden lassen
- Namen für Zellen vergeben
	- Zellenname in Funktion einbinden
	- Namens-Manager
		- Register "Formeln", Menügruppe "Definierte Namen"
- Regeln (WENN -> DANN)
	- Funktion: =WENN(<Zelle>="<Wert>";"<Ausgabe>";<Funktion>(<Verschachtelung>))
	- "Bedingte Formatierung"
		- Register "Start", Menügruppe "Formatvorlagen"
		- "Manager für Regeln zur bedingten Formatierung"

---

- SUMMEWENN() Funktion und SVERWEIS mit Übungen		
- Fehler-Option bei SVERWEIS		
- Gestaltung von Tabellen über bedingte Formatierungen mit …		
- … Symbolsätzen und Datenbalken, sowie individiuelle Farbgestaltung.		
- Dynamischer Kalender erstellen mit festen und beweglichen Feiertagen		
- Druckbereich einrichten		

- Strg+1 Zellen formatieren für Maßeinheiten
	- Benutzerdefiniert
		- Maßeinheit in " " als String
- Tabellen-Einträge sortieren (z.B. A-Z)
	- Register "Daten", Menügruppe "Sortieren und Filtern"
- Funktionen ANZAHL, ANZAHL2, MIN, MAX, MITTELWERT
	- SUMMEWENN mit Suchkriterien
	- Bsp. =<Funktion>(<Tabelle>!<Zellen,Namen,etc>)
		- Trennzeichen sind ; und :
	- SVERWEIS-Beispiel:
		- =SVERWEIS(Rechnung!B4;Autotyp!C5:F12;2)
		- Suchkriterium: Rechnung!B4
		- Matrix: Autotyp!C5:F12
		- Spaltenindex: 2
- Zelle als Dropdown-Menü
	- Register "Daten", Menügruppe "Datentools", Element "Text in Spalten"
- Register "Daten", Menü "Datenüberprüfung", Element "Zwischen"
	- In das Feld von "Quelle" reinklicken, dann Daten auswählen

---

- Arbeit mit größeren Datne, Tabellen filtern und sortieren,		
- Tabellenformatierung, Tabellenbereich teilen und fixieren		
- Seitenlayout und Umbruchvorschau, Anpassen des Drucktitels ab der …		
- … zweiten Seite, Kopf- und Fußzeile bearbeiten, Seitennummerierung		
- Wiederholungen mit Übungsaufgaben		
- Dienstreiseabrechnung mit Fehlermeldung bei Fehleingaben

**Kalenderfunktionen**
- =KALENDERWOCHE()
- =DATUM(<Jahr;Monat;Tag>)
- WOCHENTAG()
- =WENN(WOCHENTAG(C4;2)=1;KALENDERWOCHE(C4;21);"")
	- Bestimmten Tag (als Anzeiger) für Kalenderwochen-Nummer
- =WOCHENTAG($C4;2)>5
	- Wochenenden (Samstag & Sonntag) definieren
	- Formatierungs Regel-Formel
	- Regeltyp: "Formel zur Ermittlung..."
- Feiertag
	- ZÄHLENWENN(Feiertag!$D$5:$D$18;$C4)=1

---

- Eingabenmaske für Dienstreise-Einzelbeleg, Bedienerfreundliche …		
- Gestaltungsmöglichkeiten, Tabellenschutz und Ausblenden der Formeln		
- Hilfe durch Notizen, Übungsaufgaben		
- Füllfunktion und variable Gestaltung zur besseren Anpassung der Werte		
- Abschlußaufgabe - Schulungsinhalt

**Filter**
- Register "Start", Menü "Bearbeiten", Element "Sortieren und Filtern"
- z.B. nach Namen filtern

**Als Tabelle formatieren**
- Register "Start", Menü "Formatvorlagen", Element "Als Tabelle formatieren"
- Frage ob erste Zeile Überschrift hat mit Häkchen bestätigen

**Zeile fixieren**
- Zeile bleibt an fixer Position beim Scrollen
- Oberhalb der Zeilennummern erscheint Fixierungssymbole
	- Register "Ansicht", Menü "Fenster", Element "Fenster fixieren"

**Seite einrichten**
- Register "Seitenlayout", Menü "Seite einrichten", Element "Druckbereich"
	- z.B. Kopf und Fußzeile

**Aktuelles Datum** mit =HEUTE()

**Zellen sperren**
- Register "Zellen", Menü "Zellen formatieren", Element "Schutz"
	- Kennwort für Aufhebung der Sperre möglich