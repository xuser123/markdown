---
tags:
  - linux
  - repository
  - distribution
  - links
---
- Familie von Open-Source-**Unix**-ähnlichen Betriebssystemen
- Basiert auf Linux-Betriebssystem-Kernel
	- 17.09.1991 (**Linus Torvalds**)
- Distribution enthalten:
	- Kernel
	- Unterstützende Systemsoftware
	- Bibliotheken (**GNU-Projekt**)
### Derivate
- **Ubuntu** (Canonical Ltd.)
- **Fedora** (Red Hat)
- **Linux Mint** (Linux Mint team)
- **Debian** (The Debian Project)
- **openSUSE** (SUSE)
- **CentOS** (Red Hat)
- **Kali Linux** (Offensive Security)
- **Elementary OS** (Elementary LLC)
- **Manjaro** (Manjaro GmbH & Co. KG)
- **Zorin OS** (Zorin Group Ltd.)
- **Solus** (Solus Project)
- **Void Linux** (Void Linux)
- **LXLE** (LXLE Team)
- **SparkyLinux** (SparkyLinux Team)
- **Gentoo** (Gentoo Foundation)
- **Slackware** (Patrick Volkerding)
- **PCLinuxOS** (PCLinuxOS Team)

Distributions-Rangliste als Orientierung
- Forum: [DistroWatch.com](https://distrowatch.com/)
### Installations-Assistenten
- **Anaconda** (Anaconda, Inc.)
- **YaST** (SUSE)
- **Calamares** (KaOS)
- **Ubiquity** (Ubuntu)
- **Parted Magic** (Parted Magic)
- **SystemRescueCD** (Falko Timme)
- **GParted** (GNOME)
- **Puppy Linux** (Puppy Linux)
- **Red Hat Anaconda** (Red Hat)
- **LILO** (Linux International)
- **SUSE Studio Image** (SUSE)
- **Fedora Installation Program** (Fedora Project)
- **Debian Installer** (Debian)
- **GRUB** (GNU Project)
- **Ubuntu Installer** (Ubuntu)
- **Linux Mint Installer** (Linux Mint)
- **Vagrant** (HashiCorp)
- **Chef** (Chef Software)
- **Puppet** (Puppet Labs)
- **Ansible** (Red Hat)
- **SaltStack** (SaltStack, Inc.)
### Debian Repositorys
Paket-Quellen in Datei: `sudo nano /etc/apt/sources.list `
``` bash
deb http://deb.debian.org/debian/ bullseye-updates main
deb-src http://deb.debian.org/debian/ bullseye-updates main

deb http://deb.debian.org/debian/ bullseye main
deb-src http://deb.debian.org/debian/ bullseye main

deb http://security.debian.org/debian-security bullseye-security main
deb-src http://security.debian.org/debian-security bullseye-security main
```
APT-Quellen: [Debian APT-Sources](https://wiki.debian.org/SourcesList)

System aktualisieren: `sudo apt update && sudo apt upgrade -y `
Distribution aktualisieren: `sudo apt dist-upgrade `
### Einstellungen / Configs im Home-Verzeichnis
Versteckte Dateien anzeigen mit `ls -la /home`
- `.bashrc` Bash Einstellungen und "aliases"
- `.vimrc` Vim Einstellungen und Plugins
- `.ssh` SSH-Schlüssel
