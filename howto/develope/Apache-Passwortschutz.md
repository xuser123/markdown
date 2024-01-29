1. Benutzer und Passwörter erzeugen:
	- `cd puplic_html ` 
	- `htpasswd -c .htpasswd mj ` 
2. Zugang konfigurieren:
	- `nano .htaccess ` 
	- Konfiguration schreiben:
```
AuthName "Bitte melden Sie sich an" 
AuthType Basic 
AuthUserFile /home/mr/public_html/.htpasswd 
Require valid-user 
```