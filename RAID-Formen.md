**Redundant Array of Independent Disks (RAID)**
- Redundante Anordnung unabhängiger Festplatten
- Redundanz = Vorhandensein von Ressourcen zum störungsfreien Betrieb
- Daten sicher speichern, auf mehrere Festplatten
- Speicherungstechniken:
	- Spiegelung
		- Datensatz wird auf zwei verschiedenen Festplatten gespeichert
	- Streifen (Stripping)
		- Aufgeteilter Datensatz auf mehreren Festplatten
		- Erhöhte Lese- und Schreibgeschwindigkeit
			- Gleichzeitiges Lesen mehrerer Festplatten

**Parität**
- Fällt eine Festplatte aus, kann mit Hilfe der Parität die fehlende Information wieder hergestellt werden
- Paritäten auf Extra-Festplatte/n

**RAID 0**
- Verteilung auf mehrere Festplatten (Stripping)
- Nutzungskapazität: 100%
- Geschwindigkeit ist einzigster Vorteil

**RAID 1**
- Spiegelung
- Nutzungskapazität: 50%
- Merksatz: Bei gemischter Umgebung immer kleinste Festplatte berechnen.

**RAID 5**
- Streifen (Stripping)
- Mindestens 3 Festplatten
- Redundanz: 1 Festplatten-Ausfall
- Nutzungskapazität: 67-94% (3-1 Festplatte/n)
- 1 Paritäts-Festplatte
- RAID-Controller berechnet Parität
- Langsame Schreibgeschwindigkeit
- Anwendungs-Beispiel: Archivsysteme
- Rekonstruktion von Daten durch Rückrechnung (Parität)

**RAID 6**
- Streifen (Stripping)
- Nutzungskapazität: 50-88% (4-2 Festplatten)
- Redundanz: 2 Festplatten-Ausfälle
- Mindestens 4 Festplatten
- Doppelte Parität
- Schnelle Lesegeschwindigkeit
- Sehr langsame Schreibgeschwindigkeit
- Hohe Ausfallsicherheit

**RAID 10**
- RAID o und 1 vereint
- Nutzungskapazität: 50%
- Redundanz: Maximal 2 Festplatten-Ausfälle
- 2 Spiegelungen durch Verteilung
- Sehr schnell mit Ausfallsicherheit
- Anwendungs-Beispiel: Virtuelle Laufwerke
- Hohe Kosten