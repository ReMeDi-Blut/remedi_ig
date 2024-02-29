Alias: $loinc = http://loinc.org

Profile: CustomObservationBloodCells
Parent: Observation
Id: custom-observation-blood-cells
Title: "Custom Observation für Blutzellen"
Description: "Ein Profil für Observationen, die Blutzellen messen, mit einem Binding zu einem spezifischen ValueSet."

* code from haemozyten (required)
* value[x] only Quantity
* status 1..1 MS

Instance: CustomObservationBloodCellsExample
InstanceOf: CustomObservationBloodCells
Description: "example"
* code = $loinc#26464-8 "Leukocytes [#/volume] in Blood"
* valueQuantity.value = 0.1
* valueQuantity.unit = "/nl"
* status = #final
