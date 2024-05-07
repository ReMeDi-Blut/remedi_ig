Profile: Donor
Parent: Patient
Id: donor
Description: "Patient profile for a donor"
* ^url = "http://example.org/fhir/StructureDefinition/donor"
* ^publisher = "ReMeDi:Blut"
* . 1..1
* . ^short = "Patient as Donor"
* . ^definition = "To differentiate donor patient and recipient"
* identifier 1..*
* identifier only Identifier
* identifier ^short = "Some identifier for a donor patient"
* gender 1..1
* gender only code
* gender ^short = "male | female | other | unknown"
* birthDate 1..1
* birthDate only date
* birthDate ^short = "The date of birth for the donor"