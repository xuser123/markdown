### Architekturkomponenten
Mehr als 100 Dienste, zum Beispiel:
- Anwendungen auf VMs
- Intelligente Bots
	- Künstliche Intelligent (KI)
	- Machine Learning (ML)
	- Audivisuelles Kommunizieren
- Mixed Reality
- Dynamische Speicherlösungen großer Datenmengen
### Konto / Abonement
- Ein Abonement beginnt mit Konto-Erstellung
- Zusätzliche Abonements möglich
- Mehrere Konten möglich
- Seperate Abonements möglich
	- Bspw. Entwicklung / Marketing / Vertrieb
- Zugriff auf Ressourcengruppen
- Kostenlose Probezeit, Upgrade verbindlich
	- 12 Monate
	- 30 Tage gültige Gutschrift einlösbar
	- 25 Azure-Produkte
- Registrierung und Identitätsprüfung
	- Microsoft / Github
	- Telefonnummer
	- Kreditkarte
- Azure-Studenten-Konto
	- 12 Monate gültige Gutschrift (100 USD)
	- 25 Azure-Produkte
	- Softwareentwicklungstools
	- Microsoft Learn-Sandbox (Temporäre Ressourcen)

<div style="page-break-after: always;"></div>
### Commandline-Interface (Azure CLI)
*Installation in der PowerShell:*
- `Get-ExecutionPolicy -List # Richtlinien prüfen `
- `Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -scope CurrentUser `
- `Install-Module -Name Az -Scope CurrentUser -Repository PSGallery -Force `

*Prüfen ob Azure installiert ist und anmelden*
- `az version `
- `az login `

*Interaktives-Azure-Terminal starten*
- `az interactive `

<div style="page-break-after: always;"></div>

### Beispiele mit Snapshots:

*Ressourcengruppe-Namen vorhandener Snapshots festlegen*
- `sourceResourceGroupName=mySourceResourceGroupName `

*Snapshot-Namen festlegen*
- `snapshotName=meineSnapshotName `

*Abonnement-ID-Kontext vorhandener Snapshots setzen*
- `account set --subscription $sourceSubscriptionId `

*Snapshot-ID-Abfrage*
- `snapshotId=$(az snapshot show --name $snapshotName --resource-group $sourceResourceGroupName --query [id] -o tsv) `

*Wenn Snapshot-ID leer dann nicht vorhanden*
- `echo 'source snapshot Id ist: ' $snapshotId `

*Abonnement-ID vorhandener Snapshots kopieren*
- Wenn Snapshots im selben Abonnement, diesen Schritt überspringen
- `targetSubscriptionId=6492b1f7-f219-446b-b509-314e17e1efb0 `

*Ressourcengruppen-Namen für Snapshot-Kopie festlegen*
- `targetResourceGroupName=mytargetResourceGroupName `

*Abonnement-ID-Kontext für Snapshot-Kopie setzen*
- Wenn Snapshot im selben Abonnement, diesen Schritt überspringen.
- `account set --subscription $targetSubscriptionId `

*Snapshot kopieren, in ein anderes Abonnement via Snapshot-ID*
- Empfehlung: Verfügbarkeit von ZRS:
	- https://docs.microsoft.com/en-us/azure/storage/common/storage-redundancy-zrs#support-coverage-and-regional-availability
	- Snapshots im Standardspeicher zur Kostensenkung
	- Standard_ZRS Regionen mit Zone Redundant Storage (ZRS)
	- Alternativ Standard_LRS
	- `az snapshot create --resource-group $targetResourceGroupName --name $snapshotName --source $snapshotId --sku Standard_LRS `

### Mehr Azure CLI Skripte:
https://github.com/Azure-Samples/azure-cli-samples

<div style="page-break-after: always;"></div>

### Architekturkomponenten-Hauptgruppen:
Physische Infrastruktur:
- Kernkomponenten
- Rechenzentren
- Dedizierte Infrastrukturen (Racks)
	- Energie
	- Kühlung
	- Netzwerk
- Globales Netz aus Rechenzentren
- Resilienz & Zuverlässigkeit
### "Regionen" (Geografischer Bereich)
Netzwerk aus naheliegendem/n Rechenzentrum/en mit geringen Latenzen
### "Verfügbarkeitszonen" (innerhalb der Regionen)
- physisch getrennt
- Isolationsgrenzen
- Glasfasernetzwerke
- Verwaltungs-Infrastruktur
- Redundante Dienste und Daten
- Hochverfügbarkeit
	- Virtuelle Computer
	- Speicher
	- Netzwerk
	- Datenträger
	- Dienste
	- Lastenausgleiche
	- Datenbanken
#### Zonale Dienste
- Ressourcen-Zonen
- z.B. VMs, Datenträger & IP-Adressen.
#### Zonen-redundante Dienste
- Automatische Plattform-Rplikation
- Zonenübgreifend
#### Regionspaare
Kombinierte Regionen, maximal 480 km entfernt.
- Geographische Replikation
- Sicherheit bei Naturkatastrophen
- Automatische Failover Dienste
- Bspw.: USA-West und USA-East, South-Asia und East-Asia.
- Vorteile:
	- Region aus Paar wird priorisiert bei umfangreichen Ausfall
	- Nacheinander geplante Azure-Updates verhindern Ausfallzeiten
	- Steuerlich- & rechtlich-relevante Daten innerhalb selber Geografie
	- Gegenseitige Absicherung
		- Primäre und Sekundäre Regionen
#### Unabhängige Regionen ("Sovereign Regions")
Isoliert von Hauptinstanzen, z.B. aus Compliance- oder rechtlichen Gründen,
oder einzigartigen Microsoft-Partnerschaften, die nicht direkt betreut werden.

<div style="page-break-after: always;"></div>

### Verwaltunsinfrastruktur (Azure)
Hierarchie:
- Ressourcengruppen
- Abonements
- Konten
#### Ressourcen
- VMs, Virtuelle Netzwerke, Datenbanken, Cognitive Services, usw.
- immer einer Ressourcengruppe zugeordnet
	- Verschieben möglich
	- Gruppen-Aktion/Anwendung ausführen
	- Gruppen-Zugriffe steuern
		- Zugriffsschema
		- Keine allgemeingültigen Regeln
		- Priorität: Maximaler Nutzen!
- Keine Verschachtelungen (Nur bei Verwaltungsgruppen möglich)
#### Abonement (Azure)
Einheiten für Verwaltung, Abrechnung und Skalierung.
- Abrechnungsgrenzen:
	- je nach Nutzung & Anforderung
	- Seperate Abrechnungsberichte & Rechnungen
- Zugriffssteuerungsgrenzen:
	- Zugriffsverwaltungs-Richtlinien auf Abonement-Ebene
	- Mehrere Organisationsstrukturen erstellen
	- Abonement-Richtlinien für Abteilungen eines Unternehmens
	- Zugriffe mittels Abrechnungsmodell steuern
#### Zusätzliche Abonements, bspw. für:
- Umgebungen
	- Entwicklung, Testzwecke, Compliance-Gründe
- Organisationsstrukturen
	- Unternehmensabteilungen
	- Ressourcen-Teams
	- Administration
- Abrechnung
	- Kosten auf Abonementebene aggregieren
	- Seperate Workloads erstellen
### Verwaltungsgruppen
- Abonement -> Ressourcengruppe -> Ressourcen
- Abonementübergreifend
- **Verwaltungsgruppen können verschachtelt werden**
- Einstellungen an Verwaltungsgruppen vererben
- Abonement-Bedingungen an Ressourcengruppen vererben
#### Szenarien für Verwaltungsgruppen:
- Hierarchisch, einheitliche Richtlinien- und Zugriffsverwaltung
- Governance
- Hierarchien erstellen, Richtlinien anwenden
- Benutzerzugriffe auf mehreren Abonements
	- Azure RBAC-Zuweisung (Rollenbasierte Zugriffssteuerung)
		- (Role-Based Access Control)
		- Berechtigungen vererben
- Azure-Angebot:
	- Bis zu 10.000 Verwaltungsgruppen pro Verzeichnis
	- Bis zu 6 Verwaltungsgruppen, Stamm- und Abonementebene ausgeschlossen
	- Verwaltungsgruppen und Abonements immer nur einem Element untergeordnet
	
### Erstellen einer VM
Azure-Portal, Anmeldung, "Ressource erstellen", "Compute", "Virtuelle Computer", "Erstellen.
Registerkarte "Grundlagen" im Bereich "Virtuellen Computer erstellen" öffnet sich

|Einstellung|Wert|
|-|-|
|Subscription|Concierge-Abonnement|
|Ressourcengruppe|Wählen Sie den Ressourcengruppennamen aus, der mit learn beginnt.|
|Name des virtuellen Computers|my-VM|
|Authentifizierungsart|Kennwort|
|Username|azureuser|
|Kennwort|Geben Sie ein benutzerdefiniertes Kennwort ein.|
|Kennwort bestätigen|Geben Sie das benutzerdefinierte Kennwort erneut ein.|
|Öffentliche Eingangsports|Keine|

"Überprüfen und Erstellen", "Erstellen" klicken

"Startseite", "Ressourcengruppen", den Namen auswählen.


### Azure Storage

...

#### Speicherknotenendpunkte
- Vorteil: Eindeutige Namen für Ihre Daten
- Speicher-Konto muss eindeutigen Kontonamen haben

Kombination aus Kontoname und Storage-Dienstendpunkt
bildet die Endpunkte für Speicherkonto.
- Speicherkonten-Namen müssen 3 bis 24 Zeichen lang sein
- Nur Zahlen und Kleinbuchstaben
- Name des Speicherkontos muss innerhalb von Azure eindeutig sein
	- Zwei Speicherkonten können nicht den gleichen Namen haben,
		- Damit wird sichergestellt, dass Sie einen eindeutigen
			- ...zugreifbaren Namenspace in Azure haben.
Endpunktformate für Azure Speicherdienste

...

Diese Redundanz garantiert, dass Ihre Speicherkonten auch bei
Ausfällen die Verfügbarkeits- und Dauerhaftigkeitsziele erfüllt.
Be der Entscheidung für eine optimale Redundanzoption muss ein
Kompromiss zwischen niedrigen Kosten und höher Verfügbarkeit gefunden werden
- Wie werden die Daten in der Primären Region reduziert?
- Werden die Daten in eine zweite Region repliziert,
die geographisch von der primären Region entfernt ist,
um Schutz vor regionalen Ausfällen zu bieten.
Benötigen Ihre Anwendungen Lesezugriff auf die replizierten Daten in der
sekundären Region, wenn die primären Region ausfällt.
Redudanz in einer primären Region.
Daten in einem Azure Storage-Konto werden immer dreimal in der primäreb region repleziert.
Dabei gibt es 2 Optionen:
- Lokal redundanter Speicher (LRS)
LRS repliziert Ihre Daten dreimal
innerhalb eines einzigen Rechenzentrums
in der primären Region. LRS bietet eine Dauerhaftigkeit von 99,99%
für Objekte in einem Jahr.
-ist die kostengünstigste Redundanzoption, jedoch mit dem geringsten Ausfallschutz
Zonenredundanter Speicher (ZRS)
- ZRS speichert die Daten synchron über drei Azure Verfügbarkeits-Zonen
in der primären Region
- ZRS bietet eine Dauerhaftigkeit von mindestens 99,99% für 



