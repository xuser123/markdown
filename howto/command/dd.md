Synonyme:
- offiziell
	- "Data Definition"
- allgemein
	- "Disk Dump"
	- "Disk Destroyer"

Risiken bei unkorrekter Verwendung: 
- Datenverlust
- Systemfehler
- Bootprobleme

Basic-Syntax:
 `dd if=<Input-Pfad-oder-Datei> of=<Output-Pfad-oder-Datei> <Optionen> `
Häufig-verwendete Optionen:  `bs=`, `count=`, `status=progress`

### Optimale Optionen für DiskDump `dd` ausrechnen 
1. Speicherblöcke in Bytes anzeigen mit `lsblk -b`
2. Faktoren für optimale Blockgrößen-Option `bs=`  berücksichtigen 
	- Speichermedium-Typ: 
		- HDD, SSD, CD (Optisch)
	- Verbindung und Schreibgeschwindigkeit
		- SATA, USB 2.0, USB 3.0 
		- USB 3.2 
			- bis zu 20Gbit/s (2,5 GB/s)
		- SD (UHS-III, Speed Class 10)
			- bis zu 985 MB/s
	- Übertragungsrate
	- Hardwarekonfiguration
	- Cache-Größe des Mediums
1. Blockgröße zu Bytes umrechnen
	- Rechnen im Linux Terminal mit Befehl `expr` 
		- Multiplikation `\*`, Division `/` 

Multiplikative Suffixe für Blockgröße `bs=`

|Suffix|Multiplikator| 
|-|---|
|b|512|
|K|1024|
|M|1024 * 1024|
|G|1024 * 1024 \* 1024|

|Blockgröße|Umrechnung|Bytes|
|---|---|---|
|16M | 16 * 1.048.576 | 16.777.216 |
|32M | 32 * 1.048.576 | 33.554.432 |
|64M | 64 * 1.048.576 | 67.108.864 |
|128M | 128 * 1.048.576 | 134.217.728 |
|256M | 256 * 1.048.576 | 268.435.456 |
|512M | 512 * 1.048.576 | 536.870.912 |
|1G | 1.024 * 1.048.576 | 1.073.741.824 |

4. Block-Anzahl `count=` berechnen
	- Gesamtgröße mit Blockgröße dividieren 
	- Formel: `count = total_size / block_size`
- Beispiel: SD HC Speicher mit Nullen überschreiben
	- UHS-III, Speed Class 10, V90 II) 32GB
	- Gesamtgröße `62914560000` Bytes und Blockgröße `bs=512M`
	- `expr 512 \* 1048576`
		- Ausgabe: `536870912`
	- `expr 62914560000 / 536870912`
			- Ausgabe: `1875`
	- Syntax: `dd if=/dev/zero of=/dev/sdc bs=32M count=1875`
		- ***Achtung***: Befehl löscht Daten!

### Backup-Image erstellen und komprimieren 
Befehl `gzip` kann `dd`-Prozesse mit Pipe-Operator `|` einleiten oder ausleiten
Backups erstellen:
`dd if=/dev/sda | gzip > /mnt/backup.img.gz`
Backups auslesen und wiederherstellen:
`gzip -dc /mnt/backups.img.gz | dd of=/dev/sda` 
- `-d` Flagge steht für "decompress"
-  `-c` Flagge nur bei Prozess-Weiterleitung verwenden!
- Komprimierte Ausgabe an stdout-Stream weiterleiten
	- für Prozesse anderer Befehle sinnvoll
Leere Partitionen (voll Nullen) von Quell-Geräten schneller auslesen mit Option `iflag=fullblock`

