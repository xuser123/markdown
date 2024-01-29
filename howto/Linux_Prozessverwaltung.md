Befehl `ps` für Informationen zu laufenden Prozessen
 #### Kurzfassung
- Prozesse eines Benutzers
	- `ps -fU <user> `
		- (`-f`) full-format
		- (`-U`) userlist
		- (`-L`) Alle Spalten ( mit Threads )
	- `ps -eo user,pid,cmd ` 
		- (`-e`) enviroment
		- (`-o`) user-defined format
- Prozess-Status ausgeben `ps -ax ` 
	- `D` ( Deep sleeping ) Nicht-unterbrechbarer Schlaf
	- `R` ( Running ) verarbeitet Daten 
	- `I` ( Idle ) gerade erzeugt 
	- `S` ( Sleeping ) wartet auf Ereignis 
	- `T` ( Traced ) unterbrochen 
	- `Z` ( Zombie ) Wartet auf Eltern, die beenden sollten 
	- `W` Im Swap ausgelagert 
	- `<` Höhere Priorität 
	- `N` Niedrigere Priorität 
	- `L` ( locked ) Im Speicher verbleibend 
- Laufende Prozesse in Baum-Format mit Eltern und Kinder 
	- `ps axjf ` oder  `ps -ef --forest ` 
	- Tipp: `pstree`
 #### Ausgabe
| Spalte | Information | Format ( Beispiele ) |
| ---- | ---- | ---- |
| USER | Benutzer -Name | `root`, `dbus`, `systemd+` |
| PID | Prozess-ID -Nummer | `1`, ... `2961926` |
| %CPU | Prozessor ( Promille ) -Nutzung | `0.0` |
| %MEM | Speicher ( Verhältnis ) -Belegung | `0.1` |
| VSZ | Virtueller Speicher | `24064` |
| RSS | Ausgelagerter Speicher | `10960` |
| TTY | Terminal Datei "Teletyper" | `tty2`, `?` |
| STAT | Prozess-Status / Zustand | `Ss` |
| START | Start-Zeitpunkt | `Jan03` |
| TIME | Kumulierte CPU-Zeit | `0:00` |
| COMMAND | Ausgeführte Aufgabe / Befehl | `[kthreadd]` ... |
| ...usw |  |  |
#### Prozess-Zustandcodes
| Code | Zustand |
| ---- | ---- |
| D | Nicht unterbrechbarer Schlafzustand (üblicherweise E/A) |
| I | Kernel-Thread im Leerlauf |
| R | Laufend oder lauffähig (in der Ausführungswarteschlange)  |
| S | Unterbrechbarer Schlafzustand (auf den Abschluss eines Ereignisses wartend) |
| T | Durch Jobsteuersignal gestoppt |
| t | Durch Debugger während der Verfolgung gestoppt |
| W | Paging (ungültig seit Kernel 2.6.xx) |
| X | Tot (sollte niemals angezeigt werden) |
| Z | Defunktionaler (»Zombie«-) Prozess, beendet, aber durch seinen Elternprozess nicht aufgeräumt |
| < | Hohe Priorität (nicht »nice« zu anderen Benutzern)   |
| N | Niedrige Priorität (»nice« zu anderen Benutzern) |
| L | Hat im Speicher gesperrte Seiten (für Echtzeit- und benutzerdefinierte E/A)   |
| s | Ist ein Sitzungsleiter   |
| l | Ist multi-threaded (mittels CLONE_THREAD, wie es NPTL-Pthreads tun)   |
#### Allgemeine Vorlagen
| Beispiel | Funktion / Optionen |
| ---- | ---- |
| `ps aux ` | Alle Prozesse und Benutzer mit Details |
| `ps aux` \| grep [WORT]  | Prozess suchen |
| `ps -e` | Alle Prozesse |
| `ps -ef` | Vollformat |
| `ps -eF` | Erweitertes Vollformat |
| `ps -ely` | Langes Format, ... |
| `ps -ejH` | Job-Format, Prozessbaum |
| `ps axjf` | Prozessbaum (uneingeschränkt) |
| `ps -eLf` | Threads |
| `ps axms` | Threads, HEX-Format |
| `ps -e` | Sicherheitsinformationen |
| `ps axZ` | Extra Spalte: "LABEL" |
| `ps -eM` | Extra Spalte: "LABEL" , Details |
| `ps -U root -u root u` | Prozesse mit root-Rechte |
| `ps -C syslogd -o pid=` [PID] | Nur die Prozesskennungen (PIDs) von syslogd ausgeben |
| `ps -q [42] -o comm=` | Nur den Namen des Prozesses mit der Kennung 42 ausgeben |
#### Sicherheitsrelevante Vorlagen
Einfache Spezifikation
```sh
ps -eo euser,ruser,suser,fuser,f,comm,label
```

Erweiterte Spezifikation
```sh
ps -eo pid,tid,class,rtprio,ni,pri,psr,pcpu,stat,wchan:14,comm
```

Ausführliche Spezifikation
```sh
ps axo stat,euid,ruid,tty,tpgid,sess,pgrp,ppid,pid,pcpu,comm
```

Forensische Spezifikation
```sh
ps -Ao pid,tt,user,fname,tmout,f,wchan#<-Kerneladresse
```
### top, htop
Tool `top` oder farblich `htop`
- zur tabellarischen Darstellung der Prozesse
	- `f` Spalten auswählen
	- `Z` Farben anpassen
	- `W` Konfiguration speichern
	- `<`/`>` Sortierung ändern
	- `h` Weitere Möglichkeiten...
### kill, killall, xkill
- Prozesse terminieren
	- mit Prozess-ID oder -Namen
- `kill <PID> ` Signal an Prozess senden
- `killall <Name> ` Signal an Programm senden
- `xkill ` mit Maus Programm beenden
### nice, renice
- Prozess-Priorität setzen
	- Werte von -20 bis 19
- Prozess priorisiert starten
	- `nice <Wert> <Befehl> ` 
- Laufenden Prozess priorisieren
	- `renice <Wert> [-g|-p|-u] <Identifier> `
		- `-g <Prozess-Gruppen-ID>`
		- `-p <Prozess-ID / PID>`
		- `-u <Username / User-ID>`
			- User-IDs in `/etc/passwd`