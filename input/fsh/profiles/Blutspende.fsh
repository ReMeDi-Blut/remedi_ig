
Alias: $loinc = http://loinc.org
Alias: $sct = http://snomed.info/sct
Alias: $blood-products-value-set = https://build.fhir.org/ig/ReMeDi-Blut/remedi_ig/ValueSet/blood-products-value-set
Profile: Blutspende
Parent: BiologicallyDerivedProduct
Id: blood-1
Description: "Dieses Profil beschreibt eine Blutkonserve als die Ressource BiologicallyDerivedProduct und beinhaltet die wesentlichen Informatonen über die Blutspende"
* ^language = #German
* ^url = "https://fhir.simplifier.net/Blut-Transfusionen/fhir/StructureDefinition/Blutspende"
* ^version = "0.9.3"
* ^status = #draft
* ^purpose = "Soll hauptsächlich für die Verwendung eines Transfusionsregsiter verwendet werden."
//* extension 1..
//* extension contains Blutgruppe named Konserventyp 0..1
//* extension[Konserventyp] ^isModifier = false
* identifier 1..1
* productCategory 1..
* productCategory = #fluid (exactly)
* productCategory ^definition = "Definiert, dass es sich bei dem BDP um eine Flüssigkeit handelt"
* productCode from $blood-products-value-set (preferred)
* productCode ^short = "Blutprodukt"
* productCode ^definition = "Die zulässigen Codes, um sicherzustellen, dass es sich bei dem BDP um eine Blutkonserve handelt"
* productCode ^mustSupport = false
* productCode.coding 1..
* productCode.coding ^code[0].version = "1.0.0"
* productCode.coding ^code[=] = $sct#346348003 "Blood derivative product (product)"
* productCode.coding ^code[+].version = "2.42"
* productCode.coding ^code[=] = $loinc#72273-6 "Blood product ordered [Volume] in Blood product unit"
* productCode.coding ^short = "Codes"
* productCode.coding ^definition = "Codes für das Blutprodukt"
* collection.extension 2..
* collection.extension contains
    OriginalText named Blutgruppe 1..* and
    OriginalText named Rhesusfaktor 1..*
* collection.extension[Blutgruppe] ^isModifier = false
* collection.extension[Rhesusfaktor] ^isModifier = false
* collection.source 1..
* collection.source ^short = "Spender"
* collection.source ^definition = "Referenz auf die Patient Ressource"
* collection.source ^example.label = "Patient"
* collection.source ^example.valueReference.reference = "Spender"
* collection.source ^example.valueReference.type = "Patient"
* collection.source ^example.valueReference.display = "SpenderX"


Extension: Blutgruppe
Id: Blutgruppe
Context: url.value
* ^url = "https://fhir.simplifier.net/Blut-Transfusionen/fhir/StructureDefinition/Blutgruppe"
* ^status = #draft
* value[x] only CodeableConcept

Instance: BeispielBlutspende
InstanceOf: Blutspende
Usage: #example
* identifier[0].system = "http://hospital.org/blood-donations"
* identifier[0].value = "BD123456"
* status = #available
* productCategory = #fluid
* productCode.coding[0] = $sct#346348003 "Blood derivative product (product)" 
* collection.collector.reference = "Practitioner/phlebotomist-123"
* collection.source.reference = "Patient/donor-456"
* collection.collectedDateTime = "2024-02-28T10:00:00Z"
* collection.extension[Blutgruppe].valueString = "A"
* collection.extension[Rhesusfaktor].valueString = "Positiv"