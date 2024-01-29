Auf einem Linux-Betriebssystem, "außerbetrieblich" Operationen durchführen. Dateisystem wird in Einhängepunkte eingebunden:
```sh
# Einhängepunkt, beispielsweise ` /mnt/chroot/ `
mount -t proc proc /mnt/chroot/proc
mount --rbind /dev /mnt/chroot/dev
mount --rbind /sys /mnt/chroot/sys
mount --rbind /run /mnt/chroot/run
chroot /mnt/chroot /bin/bash
```
### Anwendungsfälle
Mit `rkhunter` System nach Rootkits absuchen:
```sh
# Beispiel aus Mr. Robot, Staffel 3 Folge 2
mount --rbind /sys /mnt/sys
mount --rbind /dev /mnt/dev
chroot /mnt /bin/bash
rkhunter --check -l rkhunter.log
```
