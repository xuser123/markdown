### init-Prozess
- Erster Prozess, beim Starten des Betriebssystems
- Alle anderen Prozesse verwalten
- Prozesse ordnungsgemäß Ausführen
#### Varianten
- SysV
- Upstart
- Systemd
### systemd / systemctl & hostnamectl
- init-System für Linux ("Daemonsystem")
- System- Ausführung, Konfiguration und Verwaltung
- i.R. kein direkter Aufruf
	- `systemctl` steuert `systemd`
#### Szenarien
- **Systemstart** *automatisch einleiten*
- **Sockets** *automatisch erstellen*
- **Hardware** *automatisch einrichten*
- **Datenträger** *automatisch einbinden*
- **Hintergrund-Dienste** *automatisch starten*
- **Netzwerk** *Konfiguration & Steuerung*
- **Benutzerkonten/-Gruppen** *automatisch verwalten*
- **Programme** *automatisch steuern*
- **System-Updates** *automatisch ausführen*
- **Anpassungen** *System-Optimierungen*
### Units
- Kapseln verschiedene Aspekte eines System
- Können untereinander in Beziehung stehen
- Definition in Text-Dateien
	- ähnlich wie ini-Dateien in Windows
#### Unit-Typen
- **Service** *Dienste und Prozesse starten*
- **Socket** *Socketbasierende Dienste*
- **Target** *Dienst-Gruppen (früher Runlevels)*
- **Device** *Verbindung zu Kernel-Devices*
- **Mount** *Mount-Points im System kontrollieren*
- **Automount** *zugriffsbasiertes Einbinden von Dateisystemen ("Parallelisierung")*
- **Snapshot** *Aufzeichnung bestimmter Units*
- **Zimer** *Zeitbasierte Steuerung andere Units*
- **Swap** *Swap-Speicherplatz verwalten*
- **Path** *bei Veränderung von Dateisystemobjekten andere Dienste aktivieren*
- **Slice** *Units hierarchisch gruppieren*
- **Scope** *wie Service-Units, starten jedoch Fremdprozesse*
### Syntax
`systemctl <Option> <Dienst/Unit>`
- Stoppen 
	- `systemctl stop ` 
- Starten 
	- `systemctl start ` 
- Konfiguration neu laden 
	- `systemctl reload ` 
- Neustarten 
	- `systemctl restart ` 
- Eigenschaften anzeigen
	- `systemctl show ` 
- Zustand anzeigen 
	- `systemctl status ` 
- Geladene Units anzeigen 
	- `systemctl list-units ` 
- Geladene Timer anzeigen 
	- `systemctl list-timers ` 
- Geladene Sockets anzeigen 
	- `systemctl list-sockets ` 
- Unit aktivieren 
	- `systemctl enable ` 
- Unit deaktivieren 
	- `systemctl disable ` 
- Prüfen ob Unit aktiv 
	- `systemctl is-enabled ` 
- Unit verhindern 
	- `systemctl mask ` 
- Unit erlauben 
	- `systemctl unmask ` 
- Unit-Konfiguration anpassen 
	- Ablage bestehender Unit-Datei ändern
- `systemctl edit ` 
	- `systemctl --user edit ` 
	- `systemctl --global edit ` 
	- `systemctl --system edit ` 
	- Automatischer Neustart bei Absturz
		- `systemctl --full edit <Target>.service restart=always`
- Änderungen übernehmen 
	- `systemctl daemon-reload ` 
		- `systemctl --user daemon-reload ` 
		- `systemctl --global daemon-reload ` 
		- `systemctl --system daemon-reload ` 
- Standard-Target anzeigen 
	- `systemctl get-target ` 
- Standard-Target wechseln 
	- `systemctl set-target graphical.target ` 
- Target wechseln 
	- `systemctl isolate <Target>.target ` 
- Hostname
	- `hostnamectl ` anzeigen
	- `hostnamectl set-hostname ` ändern
### Vorlagen
Create Tasks to execute Commands after time count:
```sh
0 * * * * ([COMMAND1] && [COMMAND2]; [COMMAND3] && [COMMAND4]; [COMMAND5]) && sleep [SECONDS]
```
airmon-ng Example:
```sh
0 * * * * (sudo ifconfig wlo1 up && sudo -s; airmon-ng start wlo1 && cd /var/log/wlo1mon; airodump-ng wlo1mon -w wlo1mon-$(date) --manufacturer -a) && sleep 900
```

set Sleepttimer:
```sh
# systemctl sleeptimer
sleep <Anzahl_der_Sekunden> && sudo systemctl suspend
# oder
shutdown -h 120
```

### crontab
- Automatisierte Aufgaben planen und verwalten
- Auch zeitgesteuert
#### Szenarien
- **Backups** *Automatische Sicherung von Dateien*
- **Skripte** *Automatisches Ausführen*
- **Emails/Nachrichten** *Regelmäßiges Versenden*
- **Dateien** *Automatisches Löschen oder Verschieben*
- **Statistiken/Berichte** *Automatisches Generieren*
#### Syntax
- Crontab-Datei bearbeiten 
	- `crontab -e ` 
- Crontab-Datei anzeigen
	- `crontab -l ` 
- Crontab-Datei löschen
	- `crontab -r ` 
- Crontab-Datei Besitzer bestimmen
	- `crontab -u `
- Lösch-Bestätigung aktivieren
	- `crontab -i ` 
- E-Mail senden, wenn Job abgeschlossen
	- `crontab -s `  
- Keine E-Mail senden, wenn Job abgeschlossen
	- `crontab -n ` 
- E-Mail senden, wenn Job Ausgaben erzeugt
	- `crontab -m ` 
- Keine E-Mail senden, wenn Job Ausgaben erzeugt
	- `crontab -p ` 
- Jobs im Vordergrund ausführen
	- `crontab -f ` 
- Jobs nicht im Vordergrund ausführen
	- `crontab -x ` 
- Stiller Modus
	- `crontab -q ` 
- Ausführlicher Modus 
	- `crontab -v ` 
- Testmodus
	- `crontab -t ` 
- Debugging-Informationen
	- `crontab -d ` 
### systemctl mit cron kombinieren (Beispiel)
Szenario: `systemctl restart myapp.service ` alle 15 Minuten ausführen:

1. Systemd-Timer-Einheit erstellen, Befehl mit gewünschten Frequenz eintragen:
```config
[Unit]
Description=Run systemctl restart myapp.service every 15 minutes

[Timer]
OnUnitActiveSec=15min

[Install]
WantedBy=timers.target

[Service]
Type=oneshot
ExecStart=/usr/bin/systemctl restart myapp.service
```

2. Timer-Einheit als "myapp.timer" speichern
	- Verzeichnis: `/etc/systemd/system`
3. Timer starten
	- `systemctl enable myapp.timer ` 
	- `systemctl start myapp.timer ` 
### anacron
- Regelmäßige Aufgaben planen und steuern
- Auch einmalige Aufgaben
#### Szenarien
- **Backups** *Regelmäßige Sicherung von Dateien*
- **Software-Updates** *Automatisch überprüfen, ob verfügbar, und installieren.*
- **Systemmeldungen** *Regelmäßige Nachrichten an Benutzer senden, z.B. um auf Updates hinzuweisen.
- **Systembereinigungen** *Automatisch temporäre Dateien löschen, um Speicherplatz zu sparen.*
#### Syntax
- Führt alle anstehenden Aufgaben aus
	- `anacron -d `
- Führt Aufgaben aus, die sich im Verzug befinden
	- `anacron -s `
- Aktualisiert Zeitpunkte bestimmter Aufgaben dass sie dem aktuellen Zeitplan entsprechen
	- `anacron -u `
- Informationen über Aufgaben für aktuellen Tag 
	- `anacron -t `
- Listet alle Aufgaben
	- `anacron -l `
- Dieser Befehl überprüft, ob Aufgabe im Verzug ist
	- `anacron -q `
