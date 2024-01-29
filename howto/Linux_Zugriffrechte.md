---
tags:
  - linux
  - privileges
  - permissions
  - administration
---
und Benutzer
### Sudo
- sudo-Gruppenmitgliedschaft prüfen:
	- `groups <username> `  
- **Einfach**:
	1. *Superuser-, Admin- oder Rootrechte erlangen*
		- `su `, `sudo -s ` oder `su -l root `
	2. *Den User in sudoers aufnehmen*
		- `usermod -aG sudo <username> `
- **Fortgeschritten**:
	1. *Superuser-, Admin- oder Rootrechte erlangen*
		- `su `, `sudo -s ` oder `su -l root `
	2. Tool: `visudo ` Automatischer Syntax-Check
		- Achtung: Andere Editor gefährden sudo-Zugang!
	3. *in* /etc/sudoers `<username> ALL=(ALL) ALL ` *eintragen*
### Dateien
- Permanent `/etc/sudoers `
- Temporär `/etc/sudoers.d/ `
	- Befehl `visudo --file=/etc/sudoers.d `
### Szenarien
- **root** hat Vollzugriff
	- `root ALL=(ALL) ALL `
- User "admin" hat Vollzugriff ohne Passwort
	- `admin ALL=(ALL) NOPASSWD:ALL `
- Superuser-Gruppe "**wheel**" hat administrative Rechte
	- `%wheel ALL=(ALL) ALL `

|%    |wheel|ALL=|(ALL)|ALL|
|:---:|:---:|:--:|:---:|:-:|
|Jedes Mitglied|von Gruppe|auf ALLEN Hosts|kann sudo an ALLE Benutzerkonten senden,| und ALLE Befehle ausühren|

- Bestimmter User kann auf Server Besitzrechte ändern
	- `<username> server=(ALL) /usr/bin/chown `
- Bestimmter User hat eingeschränkten Befehls-Zugriff
	- `<username> ALL=(ALL) /usr/bin/*, !/usr/bin/chown `
- "User1" erhält root-Rechte auf bestimmte Befehle
	- `User1 ALL=(root) /usr/bin/find, /bin/rm `

| User1 | ALL= | (root) | /usr/bin/find, /bin/rm |
| :--: | :--: | :--: | :--: |
| Benutzer | beliebigen Hosts | vollen Zugriff | auf bestimmte Befehle |
- root ist in Gruppe root
### Benutzer- und Gruppenverwaltung
- Befehle brauchen Superuser-/Rootrechte.
- Dateien:
	- `/etc/passwd ` Benutzer Infos
	- `/etc/shadow ` Passwörter (verschlüsselt)
	- `/etc/group ` Gruppen Infos
	- `/etc/gshadow ` Gruppen-Passwörter (verschlüsselt)
### Szenarien
- Benutzer
	- `useradd -D ` Informationen anzeigen 
	- `useradd ` Hinzufügen 
	- `usermod ` Modifizieren 
	- `userdel ` Löschen 
- Passwort ändern 
	- `passwd <benutzername> ` 
- Passwortgültigkeit auflisten 
	- `chage -l user01 ` 
- Passwortgültigkeit auf 30 Tage setzen
	- `chage -M 30 user01 `
- Passwortänderung beim nächsten Login erzwingen
	- `passwd -e user01 `
- Gruppen
	- `groupadd ` Hinzufügen
	- `groupmod ` Ändern
	- `groupdel ` Löschen
	- Passwort einer Gruppe ändern
		- `gpasswd <gruppenname> ` 
### Arbeitsgruppen und Ordner Beispiel
``` bash
ssh root@mydebian # Login als root
useradd -m anton # Benutzer erstellen
useradd -m berta
useradd -m caesar 
groupadd arbeit # Gruppe erstellen
usermod -aG arbeit anton # Mitglieder zuteilen
usermod -aG arbeit berta
usermod -aG arbeit caesar # Ordner erstellen
mkdir /arbeitsordner
chmod g+rwx,o-rwx /arbeitsordner # Ordner-Rechte ändern
chgrp arbeit /arbeitsordner/ # Gruppenrecht auf Ordner 
su - anton
touch /arbeitsordner/anton.txt # Als Mitglied Datei erstellen (Test)
exit
```
