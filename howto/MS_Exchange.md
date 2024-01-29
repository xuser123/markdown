# MS Exchange Kalenderfunktion

- **Was ist die Kalenderfunktion?**
   - Die Kalenderfunktion in Exchange ermöglicht es Benutzern, Termine, Besprechungen und Ereignisse zu erstellen, zu verwalten und mit anderen zu teilen. Sie ist ein integraler Bestandteil der Kommunikations- und Organisationsmöglichkeiten von Exchange.

- **Arten von Exchange-Kalendern:**
   - **Persönlicher Kalender:** Dein individueller Kalender, in dem du Termine und Ereignisse für dich selbst verwaltest.
   - **Freigegebener Kalender:** Ein Kalender, der von mehreren Benutzern gemeinsam genutzt werden kann. Zum Beispiel für Teammeetings oder Projektabläufe.
   - **Ressourcenkalender:** Dazu gehören Räume, Ausrüstungen oder Fahrzeuge, die von mehreren Personen reserviert werden können.
   - **Öffentlicher Ordnerkalender:** Ein Kalender, der in einem öffentlichen Ordner gespeichert ist und von mehreren Benutzern eingesehen und bearbeitet werden kann.
   - **Gruppenkalender:** In Office 365 können Gruppen eigene Kalender haben, die für Mitglieder der Gruppe sichtbar sind.

- **Nutzung externer Kalender:**
   - Externe Kalender können in Exchange integriert werden, indem sie als freigegebene Kalender hinzugefügt werden. Dies kann über CalDAV- oder iCalendar-Protokolle erfolgen.

- **Berechtigungen für Kalender:**
   - Es gibt verschiedene Berechtigungsstufen für Kalender in Exchange:
     - **Besitzer:** Kann den Kalender erstellen, ändern und löschen.
     - **Bearbeiter:** Kann Ereignisse hinzufügen, ändern und löschen.
     - **Organisator:** Kann Besprechungen im Namen des Eigentümers planen und verwalten.
     - **Leser:** Kann nur Ereignisse anzeigen.
     - **Keine Berechtigungen:** Kein Zugriff auf den Kalender.
   - Berechtigungen können über die Exchange-Verwaltungsshell oder die Exchange-Verwaltungskonsole zugewiesen werden.

- **Zentrale Verwaltung von Kalendern:**
   - Über die Exchange-Verwaltungsshell:
     - Postfachkalender erstellen: `New-MailboxFolder`
     - Kalenderberechtigungen ändern: `Add-MailboxFolderPermission`
     - Öffentliche Ordnerkalender erstellen: `New-PublicFolder`
   - Über die Exchange-Verwaltungskonsole:
     - Die Verwaltung der Kalender erfolgt über das Exchange Admin Center (EAC) in der Rubrik "Empfänger" und "Öffentliche Ordner".

6. **Weitere nützliche Informationen:**
   - **Freigegebene Kalender:** Benutzer können Kalender freigeben, um anderen Benutzern Zugriff zu gewähren.
   - **Kalendergruppen:** Gruppen von Benutzern können gemeinsame Kalender haben.
   - **Mobile Synchronisierung:** Exchange-Kalender können mit mobilen Geräten synchronisiert werden.
   - **Kalenderfreigabe außerhalb der Organisation:** Exchange ermöglicht die Freigabe von Kalendern mit externen Benutzern.

# SONSTIGES:

- **Sync Exchange-Ordner**: Abgleich von Ordnern zwischen verschiedenen Exchange-Konten.
- **Globale Adressliste sync**: Gleicht die globale Adressliste zwischen Exchange-Servern ab.
- **Sync Active Directory Kontakte**: Gleicht Kontakte im Active Directory zwischen Servern ab.
- **iCalendar Import**: Import von Kalenderdaten im iCalendar-Format.
- **CSV zyklisch Import**: Regelmäßiger Import von Daten aus CSV-Dateien.
- **Excel-Daten zyklisch Import**: Regelmäßiger Import von Daten aus Excel-Dateien.
- **Wartungsaufgaben**: Routinemäßige Aufgaben zur Pflege und Optimierung des Systems.
- **Migration Postfächer/Ordner**: Umzug von Postfächern oder einzelnen Ordnern zwischen Exchange-Servern.
- **One2Many mit ExMixedFolders**: Spezielle Funktion zur Synchronisation von Daten zwischen unterschiedlichen Ordnern in Exchange.
- **Kategorien sync**: Abgleich von Kategorien zwischen verschiedenen Postfächern.

