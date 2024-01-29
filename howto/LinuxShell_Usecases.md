
Suffix von Dateien umbenennen:
```bash
for file in <directory>/*; do mv "$file" "$file.<suffix>"; done # Suffix-Methode
```

Vor dem Suffix, Dateien umbenennen:
```bash
for file in myfiles/*.txt; do mv "$file" "myfiles/old_${file##*/}"; done # Vor-Suffix
```

ls Auflistung von zwei Ordnern nebeneinander anzeigen:
```bash
ls <directory1> | pr -tT2 -W$(tput cols) <(ls <directory2>)
```

Dateien vergleichen:
```bash
diff -qr --brief <directory1> <directory2>
```
Wenn Sie beispielsweise den geänderten Befehl `diff -qr --brief /pfad/zu/verzeichnis1 /pfad/zu/verzeichnis2` ausführen, werden die Inhalte von verzeichnis1 und verzeichnis2 rekursiv verglichen und es wird nur gemeldet, ob sich die Dateien hinsichtlich der Dateigröße unterscheiden.

rsync Ordner/Dateien synchronisieren:
```bash
rsync -a /path/to/folder1/ /path/to/folder2/ # -a ist wie preservemode
```
Additionally, it is recommended to use the `--delete` option if you want to delete any files that exist in `folder2` but not in `folder1`.
`rsync -a --delete /path/to/folder1/ /path/to/folder2/`

exFAT Micro SD Partition erstellen:
```bash
mkfs.exfat -n <volume_name> -c <cluster_size> /dev/sdb1
```

Berechtigungen suchen und ändern
```bash
# Variante 1 (you.com)
find /path/to/directory -type f ! -perm /go+r -exec chmod go+r {} +
# Variante 2 (Chatgpt)
find . -type f -not -perm /go+r -exec chmod go+r {} \;

```

Was und wer benutzt offene Ports ( schnelle Infos )
```sh
# Offene Ports ?
sudo netstat -antp | grep LISTEN
# Programm ? Wer ?
sudo fuser -v <port>/tcp`, next: `lsof -i
```

To change the keyboard layout in Debian with one command, you can use the following command in the terminal:
```sh
sudo dpkg-reconfigure keyboard-configuration
```
This command will launch an interactive menu where you can select the desired keyboard layout and configure other related settings. Once you have made your selections, the changes will be applied to the system.

Alternatively, you can modify the `XKBLAYOUT` line in the `/etc/default/keyboard` file to change the keyboard layout, or try this:
```sh
set xkeymap 'de' ### Es gibt viele Varianten
```

Syntax-Highlighting verbessern.. (testen!)
```sh
exa --color=always | bat --decorations=always
```

Befehl und Datei als anderen Benutzer ausführen
```bash
sudo -u <BENUTZER> <BEFEHL> ./<DATEI>
```

