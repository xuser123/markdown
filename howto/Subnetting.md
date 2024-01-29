Effiziente Netzwerknutzung durch Teilnetze, beispielsweise: ***172.16.0.0/20*** in zwei gleichgroße Teilnetze aufteilen.
### Adressklassen
| Klasse | Bereich | Führende Bits | Adressraum |
| ---- | ---- | ---- | ---- |
| **A** | 1 - 127 | 0 | 10.0.0.0 - 10.255.255.255 |
| **B** | 128 - 191 | 10 | 172.16.0.0 - 172.31.255.255 |
| **C** | 192 - 223 | 110 | 192.168.0.0 - 192.168.255.255 |
| **D** | 224 - 239 | multicast |  |
| **E** | 240 - 255 | experimental | 
#### Verfügbare Adressen
| Protokoll | Bits | Wert | Adressbereiche |
| ---- | ---- | ---- | ---- |
| **IPv4** | 32 | 2³² | 4.294.967.296 |
| **IPv6** | 128 | 2¹²⁸ | 340.282.366.920.938.463.463.374.607.431.768.211.456 |
### Dezimale IP in Binärform spalten
| Dezimalwert | 128 | 64 | 32 | 16 | 8 | 4 | 2 | 1 |
| ---- | ---- | ---- | ---- | ---- | ---- | ---- | ---- | ---- |
| Binärstelle-> | 8 | 7 | 6 | 5 | 4 | 3 | 2 | 1 |
|  |  |  |  |  |  |  |  |  |
| ***172*** | **1** | 0 | **1** | 0 | **1** | **1** | 0 | 0 |
| ***16*** | 0 | 0 | 0 | **1** | 0 | 0 | 0 | 0 |
*172.16*.0.0/20 -> *10101100 00010000* 00000000 00000000
### Schablone und Binärstellen   
| Netzmaske mit CIDR | Netzanteil ==2⁴== = 16 Adressbereiche ( 2 ***Subnetze*** ) |
| ---- | ---- |
| SN:  255.255.24==0==.0/*20* | *11111111 11111111 1111*==0000== **00000000** |
| SN:  255.255.24==8==.0/*21* | *11111111 11111111 1111*==1000== **00000000** |
| Dezimalwert aus ... | Binärziffern von ==4== Binärstellen nach **Hostanteil** |
*172.16* .0.0/20  ->  **0** .0/20
### Adressbereiche und Dezimalwerte 
| DEZ \| Netzmaske | BIN \| ***Subnetz*** > ==Adressbereich== > **Hostanteil** |
| ---- | ---- |
| ID:  172.==16==.0.0/*20* | 10101100 000==1==**0000 00000000 00000000** |
| SN:  172.***16***.==0==.0/*21* | 10101100 000***10000*** *0000*==0000== **00000000** |
| SN:  172.***16***.==8==.0/*21* | 10101100 000***10000*** *0000*==1000== **00000000** |
##### Subnetze bilden:
- *0* .0/20  ->  **8** .0/20
- 8.0/ *20*  ->  8.0/ **21**
-  **172.16.8.0/21** und **172.16.8.0/21**