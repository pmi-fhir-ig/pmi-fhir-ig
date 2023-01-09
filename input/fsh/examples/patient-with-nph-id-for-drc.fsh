Instance: PMIPatientWithNPHIDForDRCExample
InstanceOf: PMIPatient
Usage: #example
Title: "PMI Patient with NPH ID sent to DRC"
Description: "PMI Patient ID Mapping for ancillary study sent to DRC"
* meta.profile = Canonical(pmi-patient)
* meta.source = "#PMIParticipantProvenanceExample"
* contained[provenance] = PMIParticipantProvenanceExample
* id = "P128829102"
* identifier[NPH]
  * use = #official
  * type = PMIIdentifierTypeCS#NPH-1000
  * value = "1000578448930"
