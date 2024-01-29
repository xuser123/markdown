1. Installation
	- Debian: `apt install nginx ` 
	- RHEL / RockyLinux: `dnf install nginx ` 
2. Webserver starten und prüfen
	- `systemctl start nginx.service ` 
	- `systemctl status ngninx.service ` 
3. Autostart bei Systemboot
	- aktivieren `systemctl enable nginx.service ` 
	- deaktivieren `systemctl disable ngninx.service `
4. Firewall einstellen:
	- `firewall-cmd --zone=public --add-port=80/tcp --permanent `
	- `firewall-cmd --reload `