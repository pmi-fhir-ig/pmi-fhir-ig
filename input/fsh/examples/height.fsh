Instance: PMIHeightExample
InstanceOf: PMIPhysicalMeasurementHeight
Usage: #example
Title: "PMI Height Example"
Description: "Example of Height Physical Measurement for the participant"
* meta.profile[0] = "https://pmi-ops.org/fhir/StructureDefinition/pmi-physical-measurement-height"
* status = #final
* subject = Reference(PMIPatientWithName)
* effectiveDateTime = "2022-01-13T12:00:29+00:00"
* valueQuantity
  * value = 71
  * unit = "in"
  * code = #in_i
  * system = "http://unitsofmeasure.org"
