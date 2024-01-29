
### ERM-Basics
##### Normalformen in Datenbanken
Definitionen der 4 Normalformen in Datenbanken

**1NF** (First Normal Form): Hier müssen alle Attribute in atomare Werte unterteilt werden. Jedes Attribut darf nur einen einzigen Wert pro Datensatz enthalten.

**2NF** (*Second Normal Form*): Jedes Nicht-Schlüssel-Attribut muss funktional von dem Primärschlüssel abhängig sein. Wenn eine Tabelle einen zusammengesetzten Primärschlüssel hat, dann muss jedes Nicht-Schlüssel-Attribut von allen Elementen des Schlüssels abhängig sein.

**3NF** (*Third Normal Form*): Jedes Nicht-Schlüssel-Attribut muss von keiner transitive von dem Primärschlüssel abhängigen Nicht-Schlüssel-Attributen abhängig sein.

**BCNF** (*Boyce-Codd Normal Form*): Jede Bestimmtheit muss funktional von dem Kandidatenschlüssel abhängig sein, das bedeutet, dass es keine funktionalen Abhängigkeiten mehr gibt, die nicht direkt vom Schlüssel abhängen.
### Auflösen von Beziehungen
Gründe:
- auch Dekomposition genannt
- Wenn eine Tabelle in mehrere kleinere Tabellen aufgeteilt wird
- um Redundanz und Inkonsistenzen in der Datenbank zu vermeiden
- typischerweise um die Normalformen der Datenbank zu verbessern
- komplexe Beziehungen zwischen den Attributen in einfachere Beziehungen aufteilen
- Verbesserung der Performance bei Abfragen, erhöht die Geschwindigkeit
- Gut strukturierte Datenbank reduziert den Zugriff auf Speicherressourcen
- Dekomposition vorsichtig planen
- dass Integrität der Daten und die korrekte Beziehung zwischen den Tabellen gewahrt bleibt

### Normalisierungsprobleme Beispiel
#### Kunden- und Bestelldaten

| Kunde ID | Vorname | Nachname | Straße | Stadt | Bundesland | PLZ | Bestell ID | Bestelldatum | Produkt ID | Produktname | Anzahl | Preis |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | ---| --- |
| 001 | John | Smith | 123 Main St | Anytown | California | 12345 | 1001 | 2021-04-01 | 001 | T-Shirt | 2 | 19.99 |
| 001 | John | Smith | 123 Main St | Anytown | California | 12345 | 1002 | 2021-05-01 | 002 | Jeans | 1 | 59.99 |
| 002 | Jane | Doe | 456 High St | Othertown | Texas | 98765 | 1003 | 2021-06-01 | 003 | Sneakers | 4 | 39.99 |
| 002 | Jane | Doe | 456 High St | Othertown | Texas | 98765 | 1004 | 2021-07-01 | 004 | Jacke | 1 | 89.99 |

In dieser Tabelle haben wir Redundanzen in Bezug auf Kundeninformationen, da jeder Kunde mehrere Bestellungen aufgegeben hat und somit ihre Daten mehrmals wiederholt werden. Darüber hinaus haben wir in jeder Zeile mehrere Attribute, die funktional voneinander abhängen, wie zum Beispiel Bundesland und PLZ.

### Dekomponierung
Separate Kunden- und Bestell-Tabelle
#### Kunden-Tabelle
| Kunde ID | Vorname | Nachname | Straße | Stadt | Bundesland | PLZ |
| --- | --- | --- | --- | --- | --- | --- |
| 001 | John | Smith | 123 Main St | Anytown | California | 12345 |
| 002 | Jane | Doe | 456 High St | Othertown | Texas | 98765 |
#### Bestell-Tabelle
| Bestell ID | Kunden ID | Bestelldatum | Produkt ID | Anzahl | Preis |
| --- | --- | --- | --- | --- | --- |
| 1001 | 001 | 2021-04-01 | 001 | 2 | 19.99 |
| 1002 | 001 | 2021-05-01 | 002 | 1 | 59.99 |
| 1003 | 002 | 2021-06-01 | 003 | 4 | 39.99 |
| 1004 | 002 | 2021-07-01 | 004 | 1 | 89.99 |

Durch Dekomposition in zwei separate Tabellen haben wir:
- die Redundanz in Bezug auf Kundendaten vermieden
- die funktionale Abhängigkeit von Bundesland und PLZ in der Kunden-Tabelle verhindert 
- in eigenständige Tabelle mit Gemeinde-Informationen aufgeteilt.

### ERM Diagramm (Entity-Relationship Model)

```
                               +------------+                             +------------+
                               |   Kunden   |                             |  Bestellung |
                               +-----+------+                             +------+-----+
                                     |                                            |
                                     |                                            |
                                     |                                            |
+---------------+          +--------------+                                     |
| Kunde_ID (PK) |          | Bestell_ID (PK) |                                     |
|   Vorname     |          |   Kunden_ID    |                                     |
|   Nachname    |          | Bestelldatum   |                                     |
|      ...      |          |  Produkt_ID    |                                     |
+---------------+          |    Anzahl      |                                     |
                            |     Preis      |                                     |
                            +-----+---------+                                     |
                                  |                                               |
                                  +-----------------------------------------------+
                                              |
                                              |
                                              |
                                      +---------------+
                                      |   Produkte    |
                                      +---------------+
                                         |
                                         |
                                         |
                            +---------------+----------------+
                            | Gemeinde_Info |                |
                            +---------------+                |
                                   |                            |
                                   +----------------------------+
```
### In 3 Sätzen zusammengefasst

1. Datenbank-Normalformen stellen sicher, dass die Daten in einer Datenbank angemessen strukturiert sind, um Redundanz und Anomalien zu vermeiden.
2. Eine Dekomposition von Tabellen in Datenbanken kann helfen, die Normalformen zu verbessern, indem komplexe Beziehungen in einfachere aufgeteilt werden, aber es muss sorgfältig durchgeführt und geplant werden, um die Integrität der Daten und die Beziehungen aufrechtzuerhalten.
3. Ein ERM-Diagramm kann verwendet werden, um die Entitäten in Datenbanken und ihre Beziehungen auf eine visuelle Darstellung darzustellen, um ihre Struktur und Beziehungen besser zu verstehen.
Fragen stellen oder X eingeben zum beenden.

### Beispiele zu Normalformen hinzugefügt

1. 1NF: Betrachten wir eine Tabelle mit Namen und Telefonnummern. Ein Beispiel für eine Verletzung der 1NF wäre, wenn es mehrere Telefonnummern in der gleichen Spalte gibt, getrennt durch ein Komma. Stattdessen sollten diese Nummern in separate Spalten aufgeteilt werden, so dass jedes Attribut nur einen einzigen Wert enthält.

  |   Name   |       Telefon       |
  |----------|------------------|
  |   John   | 555-1234, 555-5678 |

  sollte in

  |  Name  | Telefon 1  | Telefon 2  |
  |-------|-----------|-----------|
  |  John |   555-1234  |   555-5678  |

2. 2NF: Betrachten wir eine Tabelle mit Bestellungen und deren Artikeln. Eine Verletzung der 2NF würde auftreten, wenn die Menge der Artikel und ihr Preis sowohl von der Bestellungsnummer als auch von der Kundennummer abhängen, was zur Folge hätte, dass in jeder Zeile diese Informationen wiederholt werden. Stattdessen sollten Menge und Preis direkt von einer Bestellungsnummer abhängig sein, wie im folgenden Beispiel gezeigt.

  | Bestellungsnummer | Kundennummer | Produkt | Menge | Preis |
  |------------------|--------------|---------|-------|-------|
  |       001        |       101    |  Shirt  |   2    |  20   |
  |       002        |       102    |  Jeans  |   3    |  30   |

  sollte in

  | Bestellungsnummer | Menge | Preis |
  |------------------|--------------|---------|
  |       001        |       2    |  20   |
  |       002        |       3    |  30   |

3. 3NF: Betrachten wir eine Kunden-Tabelle mit Postleitzahl und Bundesland. Ein Beispiel für eine Verletzung der 3NF wäre, wenn für jedes Bundesland die Postleitzahl angegeben wird, da dies eine transitive Abhängigkeit darstellt. Stattdessen sollten die Gemeindeinformationen in eine separate Tabelle ausgelagert werden, wie im folgenden Beispiel gezeigt.

  | Kunden ID | Vorname | Nachname | Straße | Stadt | Bundesland | PLZ |
  |-----------|---------|---------|--------|--------|------------|------|
  |   001     |  John   |   Doe   | 123 Main St| Atown | California |  12345 |
  |   002     |   Jane  |   Smith | 456 Oak St |Btown  |   Texas     |  56789 |

  sollte in

  | Bundesland |   PLZ   |   Stadt   |
  |------------|--------|-----------|
  | California |  12345 |   Atown   |
  |   Texas    |  56789 |   Btown   |

  | Kunden ID | Vorname | Nachname | Straße | Gemeinde_ID |
  |-----------|---------|---------|--------|-------------|
  |   001     |   John  |    Doe  | 123 Main St|      001      |
  |   002     |   Jane  |   Smith | 456 Oak St |      002      |


### Fachliche Begriffe Datenbanken
Kein Problem! Hier ist eine Tabelle mit einigen der wichtigsten fachlichen Begriffe, die in Bezug auf Datenbanken verwendet werden:

| Begriff | Erklärung |
| ------ |------------|
| Datenbank | Ein organisiertes System zum Speichern und Verwalten von Daten |
| Tabelle | Eine Sammlung von Dateneinträgen, die auf gleiche Datentypen zugreifen, aber von verschiedenen Nutzern verwendet werden können |
| Attribut | Ein eindeutig identifizierbares Merkmal oder Eigenschaft, das einer Entität zugeordnet ist |
| Datensatz | Ein Dateneintrag in einer Tabelle, die für eine Entität oder Transaktion steht |
| Schlüssel | Ein Attribut oder eine Kombination von Attributen, die einen eindeutigen Datensatz in einer Tabelle identifizieren |
| Beziehung | Eine Verbindung zwischen zwei oder mehr Tabellen, die auf gemeinsamen Attributen basiert |
| Normalisierung | Ein Prozess, bei dem eine Datenbank in Normalformen organisiert wird, um Redundanz und Anomalien zu vermeiden |
| Dekomposition | Der Prozess, bei dem eine bestehende Tabelle in mehrere kleinere Tabellen aufgeteilt wird, um Normalformen zu erreichen |
| ERM-Diagramm | Ein Diagramm, das Entitäten, ihre Attribute und Beziehungen in einer Datenbank darstellt |
| SQL | Structured Query Language, eine Programmiersprache, die zum Zugriff auf und zur Verwaltung von Daten in relationalen Datenbanken verwendet wird |

### Weitere Begriffe

| Begriff | Erklärung |
| ------ |------------|
| Anomalie  | Ein Fehler in der Datenbankstruktur, der dazu führt, dass unbeabsichtigte Ergebnisse bei Abfragen zurückgegeben werden |
| Atommare Werte | Ein Wert, der nicht weiter in kleinere Werte unterteilt werden kann |
| BCNF | Boyce-Codd Normalform, eine höhere Form der Normalisierung, bei der es keine funktionalen Abhängigkeiten gibt, die nicht direkt vom Primärschlüssel abhängen |
| Datentyp | Eine bestimmte Art von Daten, die in einer Datenbank gespeichert werden können, wie zum Beispiel Text, Zahlen oder Datum |
| Entity-Relationship Model | Ein Modell, das die Entitäten, Attribute und Beziehungen zwischen diesen in einer Datenbank grafisch darstellt |
| Functional Dependencies | Eine Beziehung zwischen zwei Attributen in einer Datenbank, wobei ein Attribut von dem anderen abhängt |
| Inkonsistenz | Ein Zustand, bei dem Daten widersprüchlich sind oder sich gegenseitig ausschließen |
| Join | Eine Methode, um Daten aus zwei oder mehr Tabellen in einer Datenbank zu kombinieren |
| Primärschlüssel | Ein Attribut oder eine Kombination von Attributen, die eindeutig ein Datensatz in einer Tabelle identifizieren |
| Redundanz  | Die unnötige Wiederholung von Daten innerhalb einer Datenbank |
| Transitive Dependency | Eine Abhängigkeit zwischen zwei Attributen in einer Tabelle, bei der ein Attribut von einem anderen abhängt, das seinerseits auch von einem anderen Attribut abhängt |

### Referenzielle Integrität
In relationalen Datenbanken bezieht sich die referenzielle Integrität auf:
- dass jede Beziehung zwischen zwei Tabellen durch eine Übereinstimmung ihrer Schlüssel definiert ist
- ein Wert, der in einer Spalte verwendet wird, um eine Beziehung zu einer anderen Tabelle herzustellen
- muss bereits in der entsprechenden Tabelle vorhanden sein.
### Szenarien
- Referenzielle Integrität um Datenintegrität zu gewährleisten
- dass Bestellung nur von Kunden aufgegeben werden, der in Kunden-Tabelle existiert
- Wenn Kundennummer in Bestellungstabelle nicht übereinstimmt, eine Fehlermeldung geben

Dass keine Daten angezeigt oder hinzugefügt werden, die sich auf nicht vorhandene Daten oder Daten beziehen die in der Datenbank ungültig sind, und dass das System insgesamt korrekt funktioniert.