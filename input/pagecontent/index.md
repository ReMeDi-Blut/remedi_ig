# Bluttransfusionen Implementation Guide

Dieser Implementation Guide definiert Profile für das Abbilden von Bluttransfusionen auf FHIR.

## 1. Einleitung
Dieser Implementation Guide beschreibt die technischen und inhaltlichen Vorgaben für die Nutzung von HL7 FHIR-Profilen im Rahmen eines Registers für Bluttransfusionen. Er richtet sich an Entwickler:innen, Systemintegrator:innen und andere technische Partner, die mit der Anbindung von Kliniksystemen an das Register betraut sind.
Ziel ist es, eine einheitliche, valide und interoperable Datenbereitstellung zu gewährleisten, die auf offenen Standards basiert und die regulatorischen Anforderungen berücksichtigt.

### 1.1 Zielgruppe
Dieser Leitfaden richtet sich insbesondere an Personen und Organisationen, die:
- FHIR-konforme Datenquellen entwickeln oder anbinden,
- bestehende klinische Systeme mit dem Register integrieren,
- Validierungen und Datenqualitätsprüfungen umsetzen,
- Terminologien verwalten und pflegen.


### 1.2 Hintergrund des Registers
Das Register dient der Erfassung, Analyse und Qualitätssicherung von Bluttransfusionen auf Basis von Routinedaten. Dabei sollen pseudonymisierte, strukturierte Daten übermittelt werden, die dem aktuellen Stand der Technik entsprechen und forschungsseitig nutzbar sind.


## 2. Technischer Überblick
Die Datenbereitstellung erfolgt über standardisierte HL7 FHIR-Schnittstellen. Der Brückenkopf in der Klinik extrahiert FHIR Daten von einem FHIR-Server (Blaze), transformiert (FHIR-Bundle) und ermöglicht die Anbindung von Pseudonymisierungsdiensten (z.B. gPas, DeIdentiFHIR) für die Verwaltung von Pseudonymen  (optional). Relevante Daten werden als FHIR-Bundle formatierung und gebündelt und als FHIR-Ressourcen an das Register ausgeleitet. Die Authentifizierung erfolgt über OAuth2. Terminologien wie SNOMED CT, LOINC oder ICD-10 gewährleisten semantische Interoperabilität.

## 3. Implementierte FHIR-Profile
Die folgenden Ressourcen werden im Rahmen des Registers verwendet und durch projektspezifische Profile eingeschränkt oder erweitert:
- Patient
- Encounter (Fall bzw. Einrichtungsaufenthalt)
- Observation (z. B. Laborwerte, Vitalzeichen)
- Condition (Diagnosen, Indikationen)
- Procedure (Transfusion, Blutspende)
- MedicationAdministration (Blutproduktgabe)
- Adverse Events (Unerwünschte Ereignisse)
- Diagnostic Reports (Diagnostische Berichte)
- Specimen (Blutprobe)
- SupplyDelievery (Blutprodukt Ausgabe)

## 4. Terminologienutzung
Zur Sicherstellung der Interoperabilität werden international etablierte Terminologien eingesetzt:
- SNOMED CT: medizinische Konzepte (Diagnosen, Prozeduren)
- LOINC: Labordaten
- ATC: Arzneimittelklassifikation
- ICD-10: Diagnosenklassifikation
Lokale Begriffe sind auf diese Terminologien zu mappen. Zur Anwendung kommen vordefinierte ValueSets und Binding-Intensitäten (z. B. required, extensible).

## 5. Use Case und Transaktion
Die Datenübertragung erfolgt über RESTful FHIR-Transaktionen (POST/PUT). Dabei werden vollständige Ressourcen oder Bundles (z. B. bei Transfusionsereignissen) übermittelt. 

## 6. Validierung und Qualitätssicherung
Vor der Datenannahme werden sämtliche Ressourcen automatisiert validiert:
- Strukturvalidierung gegen das FHIR-Schema
- Profilvalidierung gegen IG-spezifische Regeln
- Terminologieprüfung (z. B. LOINC-Codes)
Fehlermeldungen werden dokumentiert und dem sendenden System rückgespiegelt.

## 7. Erweiterbarkeit und Governance
Die Profile unterliegen einer kontrollierten Versionierung. Änderungen werden versioniert veröffentlicht und dokumentiert. Neue Anforderungen können über Change-Requests eingereicht und geprüft werden. Die Weiterentwicklung erfolgt durch ein zentrales IG-Governance-Team in Abstimmung mit den Nutzenden.

Jede dieser Ressourcen ist mit Kardinalitäten, Pflichtfeldern, Terminologien und Validierungsregeln versehen. Beispielinstanzen und JSON-Dumps sind im Anhang aufgeführt.


