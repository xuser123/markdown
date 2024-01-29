---
tags:
  - cloud
  - model
  - services
---
### Gemeinsame Verantwortung / Zuständigkeit
Anbieter-Grundverantwortung:
- Physische Sicherheit
- Energie
- Konnektivität
### Cloud-Modelle
Definieren den Bereitstellungstyp von CLouderessourcen
- Privat
- Öffentlich
- Hybrid
#### Private Cloud
Bereitstellung von IT-Diensten über das Internet,
von einer einzelnen Entität (Unternehmen).
- Mehr Kontrolle
- Höhere Kosten
- Weniger Bereitstellung
#### Öffentliche Cloud
- Kontrolle und Verwaltung durch Drittanbieter
- Zugriff auf Ressourcen
- Allgemeine, öffentliche Verfügbarkeit
#### Hybrid Cloud
Computerumgebung, öffentlich als auch privat,
in einer miteinander verbundenen Umgebung.
Private Cloud kann temporäre Ressourcen einer
öffentlichen Cloud nutzen.
- Zusätzliche Sicherheitsebene
- Flexibilität zwischen öffentlich und privat
### Cloudmodell-Aspekte
- Öffentlich
	- Keine hochskalierenden Investionskosten
	- Schnelle Bereitstellung und Trennung
	- Bessere Kostenkontrolle durch Tarife
	- Unvollständige Kontrolle über Ressourcen+Sicherheit
- Privat
	- Vollständige Kontrolle über Ressourcen+Sicherheit
	- Ohne Daten andere Organisationen (Trennnung)
	- Erwerb, Inbetriebnahme und Wartung von Hardware
	- Verantwortung über Hardwarewartung und Erneuerung
- Hybrid
	- Maximale Flexibilität
	- Kontrolle über Anwendungen
	- Kontrolle über Sicherheit und Compliance
#### Mehrere Clouds
- Multi-Cloud-Szenario
	- Mehrere öffentliche Cloudanbieter
	- Verschiedene Features mehrerer Anbieter möglich
	- Parallele Verwaltung aller Ressourcen+Sicherheit
- Azure Arc
	- Cloudumgebungs-Verwaltungs-Technologien
	- Öffentlich und/oder Privat
	- Hybridkonfiguration
	- Multi-Cloud-Umgebung
	- Mehrere Cloudanbieter möglich
#### Azure VMWare Solution
Wechsel und Integration bestehender Einrichtungen von
VMware-Instanzen von privaten Cloudumgebungen zu
öffentlicher oder Hybrid-Cloud.
- VMware-Workloads
- Skalierbarkeit

### Verbrauchsbasiertes Modell
- IT-Infrastrukturmodelle vergleichen
- Ausgabe-Arten
	- Investitionsausgaben (CapEx)
		- i.R. "einmalige" Ausgaben
		- Vorab-Absicherung fällig
		- Käufe, materielle Resourcen,
		- Gebäude, Firmenfahrzeug, Rechenzentrum,usw.
	- Betriebskosten (OpEx)
		- kontinuierliche Ausgaben
		- Dienste, Produkte, Mieten, Tagungszentren,
		- Fahrzeug-Leasings, Clouddienst-Registrierung
- Verbrauchsbasiertes Cloudcomputing
	- Kostenlose Rechenzentrum-Wartung
		- (Physische Infrastruktur, Strom, Sicherheit)
	- Nur Ressourcen-Verbrauch bezahlen
		- Vorteile:
			- Keine Bereitstellungs-Kosten
			- Kein Nutzungszwang
			- Weniger Verwaltungszwang
			- Ressourcen auf Bedarf
### Preisbasiertes Modell
- Nutzungsbasierte Computingdienste
- Nur Cloud-Dienst bezahlen
	- Vorteile:
		- Betriebskosten planen und verwalten
		- Infrastruktur effizienter ausführen
		- Skalierung nach Unternehmens-Anforderungen
- Computerleistung und Speicherplatz mieten
### Cloud-Vorteile
- Hochverfügbarkeit
- Skalierbarkeit
- Zuverlässigkeit
- Vorhersehbarkeit
- Sicherheit
- Governance
- Verwaltbarkeit
#### Hochverfügbarkeit
- Garantien für Betriebszeiten
	- Servicelevel-Vereinbarung (SLAs)
#### Skalierbarkeit
- Vertikale Skalierung
	- CPU, RAM 
- Horizontale Skalierung
	- VM, Container
#### Zuverlässigkeit
- Resiliente Infrastruktur
- Dezentral
- Regions-unabhängig
- Globaler Maßstab
	- "Microsoft Azure Well-Architected Framework"

#### Vorhersehbarkeit
- Leistung
	- Automatische Skalierung
		- Ressourcen-Nachfragen
		- Datenverkehr
		- Umleitung
	- Lastenausgleich
	- Hochverfügbarkeit
- Kosten
#### Sicherheit
- Vorlagen entsprechen gesetzlichen Vorschriften
- Standards und Aktualisierungen
- Ressourcen-Überwachung
- Risikominderungs-Strategien
- Automatische Patches und Updates
- je nach Verantwortung / Cloudstrategie
- Schutz vor Cyberangriffe durch Anbieter
#### Governance
- Frühzeitige Festlegung des Sicherheitsbedarf
#### Verwaltbarkeit
- über Cloud:
	- Cloudressourcen
	- Automatische Skalierung
		- Ressourcenbereitstellung
			- nach Bedarf
	- Überwachung
		- Integrität
		- Automatisches Ersetzen bei Fehler
		- Automatische Warnungen
			- Konfigurierte Metriken
			- Echtzeit Leistungsinformationen
- innerhalb der Cloud:
	- Cloudumgebung und Ressourcen
	- Webportal
	- Befehlszeilen-Schnittstelle (CLI)
		- Bash
		- PowerShell
	- Programmier-/Anwendungs-Schnittstelle (APIs)

### Infrastructure-as-a-Service (IaaS)
Größte Flexibiltät = Größte Eigenverantwortung
- Anbieter-Verantwortungen:
	- Hardware
	- Netzwerkkonnektivität (WAN)
	- Physische Sicherheit
- Nutzer-Verantwortungen:
	- Installation
	- Konfiguration
	- Betriebssystem-Wartung
	- Netzwerk-
	- Datenbank-
	- Speicherkonfiguration, usw...
#### Szenarien für IaaS:
- "Lift & Shift" -Migration
- Entwicklungs-Testszwecke

### Plattform-as-a-Service (PaaS)
"Mittelweg zwischen dem Mieten von Speicherplatz
in einem Rechenzentrum (Infrastruktur-as-a-S) und einer
vollständigen und bereitgestellten Lösung (Software-as-a-S)"
- Vollständige Entwicklungsumgebung ist eingebunden
Je nach Konfiguration bestimmte Verantwortungen
- Netzwerkeinstellungen
- Verbindungen
- CLoudumgebung
- Metzwerk- und Anwendungssicherheit
- Verzeichnisstruktur
Anbieter verwaltet
- Physische Infrastruktur,
- Physische Sicherheit,
- Verbindung mit dem Internet (WAN),
- Betriebssystem,
- Middleware,
- Entwicklertools,
- Business Intelligence-Dienste,
- Lizenzierung, Patches, Datenbanken,
- Entwicklertools
#### Szenarien für PaaS:
- Entwicklungsframework
	- Integrierte Softwarekomponenten entwickeln / anpassen
	- Cloudfeatures reduzieren Programmieraufwand
		- Skalierbarkeit
		- Hochverfügbarkeit
		- Mehrinstanzenfähigkeit
- Analytics und Business Intelligence
	- Organisationen extrahieren und analysieren Daten
	- Einblicke, Muster, Prognosen
		- für Unternehmensentscheidungen

<div style="page-break-after: always;"></div>

### Software-as-a-Service (SaaS)
Umfassendes Clouddienst-Produkt
- Einfaches Einrichten und Ausführen
- Unflexibel
- "Ausgereifte" Anwendung wird bereitgestellt
- Ohne viel technisches Know-How
#### Szenarien für SaaS:
- E-Mail und Messaging
- Geschäftliche Produktivität steigern
- Finanzen und Kostenverfolgung

<div style="page-break-after: always;"></div>

### Clouddiensttyp-Verantwortungen:
- Kunden-Verantwortungen:
	- Informationen und Daten in der Cloud
	- Geräteverbindungen
	- Konten, Identitäten/Personen, Dienste
- Variierende Verantwortungen:
	- Betriebssysteme
	- Netzwerksteuerungen
	- Anwendungen
	- Identität und Infrastruktur
- Anbieter-Verantwortungen:
	- Physikalischer Host
	- Physikalisches Netzwork
	- Physikalisches Datencenter
#### Servicemodell bestimmt Verantwortungen, z.B:
- SaaS, PaaS, IaaS & On-prem

