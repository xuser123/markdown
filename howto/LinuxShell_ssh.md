### Secure Shell
SSH-Dienst aktivieren:
```sh
sudo systemctl enable --now ssh
```

Dienst deaktivieren:
```sh
sudo systemctl disable ssh --now
```

Status prüfen:
```sh
systemctl status ssh; ss -lt # Socket-Statistiken
```
#### SSH-Zugriff beschränken
Man sollte unnötigen Root-Zugang von außen deaktivieren:
1. Config-Datei editieren `sudo nano /etc/ssh/sshd_config ` 
2. Zeile ändern/hinzufügen `PermitRootLogin no ` 
3. Dienst neustarten `sudo service ssh restart ` 
#### Verschlüsselung
Schlüsselpaar erstellen:
```sh
ssh-keygen [OPTION]
```

Public-Key übertragen:
```sh
ssh-copy-id [USER]@[HOST]
```

Private-Key speichern:
```sh
ssh-agent [OPTION]
```

Key hinzufügen:
```sh
ssh-add [KEY]
```

Public-Key auslesen:
```sh
ssh-keyscan [HOST]
```

Dateien mit Key verschlüsseln / entschlüsseln
```sh
ssh-vault [encrypt|decrypt] [DATEI]
```
#### Verbindung
Verbinden:
```sh
ssh [USER]@[HOST] -v
```

Dateien kopieren:
```sh
scp [USER]@[HOST]:[QUELLE] [ZIEL]
```

Dateien übertragen:
```sh
sftp [USER]@[HOST]
```

Lokalen Remote-Ordner einbinden:
```sh
sshfs [ORDNER] [ZIEL]
```
