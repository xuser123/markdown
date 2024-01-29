1. Grub Boot
2. `rd.break` an die Zeile für den Kernel anfügen
3.	`Strg+x`
4. `mount -o remount,rw /sysroot `
5. `chroot sysroot `
6. `passwd `
7. SELinux Labels ( autolabel )
	- `touch /.autolabel `
5. `exit; exit`
