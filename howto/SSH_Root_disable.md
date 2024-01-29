### Unnötige Root-Zugangserlaubnis deaktivieren
Option in der SSH-Konfig Datei auskommentieren:
1. `sudo nano /etc/ssh/sshd_config ` 
2. `PermitRootLogin no ` 
3. `sudo service ssh restart ` 
