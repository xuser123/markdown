---
tags:
  - uml
  - modeling
  - diagram
  - development
---
### UML-Basics
- Modell von **Grady Booch**
- Object Modeling Technique (OMT)
	- von **James Rumbaugh**
- 1995 Unified Method (UM)
- 1996 UML Version 0.9
	- Object Oriented Software Engineering (OOSE),
		- von **Ivac Jacobson**
- Die 3 Gründer werden auch "Amigos" genannt
- **Object Management Group** (OMG)
	- übernimmt Verantwortung für Weiterentwicklung
		- 1997 UML Version 1.1
		- 2018 UML Version 2.51
- **Objektorientierte Analyse** (OOA)
	- Objekte und deren Beziehungen
- **Objektorientiertes Design** (OOD)
	- Konzeption: Klassen & Benutzeroberfläche (UI),
		- aus den Vorgaben der Analyse
- **Objektorientierte Programmierung** (OOP)
	- Implementierung der Klassen (bspw. mit C#)
### Diagramm-Typen
- Struktur
- Verhalten
### Struktur
**Statische Hinsicht**
- Komponenten der System-Modellierung
- Zeitunabhängig aber nicht dynamisch
- Keine Veränderung in Strukturen / Elemente,
	- nur Veränderung der Daten
- Diagramme:
	- Klassen-,
	- Objekt-,
	- Kompositionsstruktur-,
	- Komponenten-,
	- Verteilungs-,
	- Paket-,
	- Profildiagramm
### Verhalten
**Dynamische Hinsicht**
- Visualisierung der Veränderung
- Diagramme:
	- Anwendungsfall-
	- Sequenz-
	- Aktivitäten-
	- Zustands-
	- Kommunikations-
	- Zeitverlaufs-
	- Interaktionsübersichts-Diagramm
### Objektorientierte Softwareentwicklung
- **Objekte**
	- bestehen aus
		- Attribute (Eigenschaften)
		- Methoden
	- softwaretechnische Repräsentation
- **Attribute**
	- Objekteigenschaften
	- Gekapselt, (geschützt)
	- Zugriff durch Methoden
- **Methoden**
	- Operationen
- **Klassen**
	- "Bauplan" für Objekte
	- Eigenschaften (Attribute & Methoden)
	- Objektinstanzierung 
- Beispiel:

| Objekt 1 |      |
|:-------- |:---- |
| Name     | Ding |
| Anzahl   | 3    |
| Größe    | 5.6  |

|Objekt 2| |	
|:-|:-|
|Name|Dong|
|Anzahl|4|
|Größe|7.8|

|Klasse DingDong|
|:-|
|Attribute: Name, Anzahl, Größe|
|Methoden: benenne(), zähle(), bemaße()|

**Instanzierung:**

|Objekt A\: DingDong|
|:-|
|Name = Ding|
|Anzahl = 3|
|Größe = 5.6|

|Objekt B\: DingDong|
|:-|
|Name = Dong|
|Anzahl = 4|
|Größe = 7.8|

### Generalisierung & Spezialisierung
- Zentrales Thema der Softwareentwicklung
- Konzept für Situationen / Problemstellung
- Umsetzung von "real" in Programmiersprache 
- **Spezialisierung**
	- Vererbung von Klasse an Klasse
	- Klasse nutzt Attribut/Methode anderer Klasse
- **Pseudocode** 
	- Verständliche Schreibweise
	- Algorythmen verdeutlichen
	- Beispiel:
	
```
Definiere Klasse DingDong
	-Geschützter Bereich-
	Attribut Name: Typ Zeichenkette
	Attribut Anzahl: Typ Ganzzahl
	Attribut Größe: Gleitpunktzahl
	
	-Öffentlicher Bereich-
	Methode benennen() (Übergabeparameter N: Typ Zeichenkette)
		Falls N den Regeln entspricht
			Zuweisung: Name <- N
		Ende Falls
	Ende Methode
Ende Klasse

Bilde Objekt A vom Typ DingDong
A.benenne ("Ding")
A.zähle (3)
A.bemaße (5.6)
```
### Vererbung 
- Beziehung zwischen Klassen ("Ist-Beziehung")
- Beispiel:
	- Person -> Generalisierung
	- Kunde -> Spezialisierung
- Vererbende Klasse ist "**Basis-**" / "**Oberklasse**" 
- Erbende Klasse ist "**abgeleitet**" / "**Unterklasse**" 
### Polymorphie
- **Vielgestaltigkeit**
- Gleichnamige Methoden mehrerer Klassen
	- aber unterschiedliche Aufgaben
- Vererbungshierarchie
### Diagramm-Arten
- Klassen-,
	- Klassen und Beziehungen als:
		- Assoziation
		- Aggregation
- Objekt-,
	- Beschreibt konkrete Instanz,
		- von Klassendiagramm
- Kompositionsstruktur-
- Komponenten-,
- Verteilungs-,
- Paketdiagramm
### Softwareentwicklungs-Phasen:
1. Planung
2. Analyse
3. Entwurf
4. Implementierung
5. Abnahme & Einführung
6. Wartung
7. Erweiterung
### Planungsphase: 
Anforderungen der Anwendung ermitteln 
### Analysephase: 
Anwendungsvorgänge beschreiben (Skript)
### Entwurfsphase: 
 
### Implementierungsphase: 

### Abnahme & Einführungsphase: 
- Anwendung in Zielumgebung installieren 
- Funktion nachweisen
- Anwendung in Produktionsprozess integrieren
	- nach Abnahme vom Auftraggeber 
### Wartungsphase: 
- Fehlerhafte Funktionen nachbessern 
	- nach Einführung der Software 
- Notwendige Anpassungen implementieren 
### Erweiterungsphase: 
Funktionalität erweitern
	
### Interaktionsdiagramme
- Fluss der Information auf einem System
- Datentyp und Multiplizität
	- Multiplizität
		- gibt an wie viele Exemplare
			- von Attribut
		- 
				
### Klassen- oder Instanzattribut:
Unterscheidung über Unterstreichung
- unterstrichenes Attribut = Klassenattribut
- Beispiel:
	```
	- Gehalt	Double = 1850.50 {readonly}
	```

### Beschreibung der Methoden
- von außen abrufbar ?
- Welche Werte werden übernommen ?
	- bzw. zurückgegeben ?
	
### Sichtbarkeit:
- \- private Methode
- \+ öffentliche Methode
- \# geschützte Methode ("protected")
- Beispiele:
	- \- Berechnung ()
	- \+ Initialisierung ()
	- \# InterneMethode ()
- **Private Methoden** oft als "Hilfsmethoden"
	- Kann nur Methode eigener Klasse verwenden
	- Nur innerhalb Klasse sinnvoll
	- von außen nicht aufrufbar
	- Beispiel:
		- Methode vertauscht Attributwerte
		- als öffentliche Sortiermethode
- **Geschützte Methode** ("protected")
	- spielt bei der Vererbung eine Rolle
	- innerhalb einer Vererbungshierarchie
		- als wäre sie in der eigenen Klasse
		- als wäre sie privat deklariert
		- nicht abrufbar
- **Öffentliche Methode**
	- Schnittstelle der Klasse nach außen
	- Kommunikation mit Objekt in Klasse

### Übergabeparameter

### Rückgabewert

### Umsetzung Klassendiagramm zu Programmiersprache
Beziehungen zwischen Klassen:
- Aggregation
- Assoziation
- Generalisierung
- Komposition

### Assoziation
Beziehung zwischen zwei Klassen

 ### Sequenzdiagramm
Darstellung der Kommunikation:
- Objekt und Softwaresystem
- Benutzer und Oberfläche
- 