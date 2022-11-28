Instance: PMIPatientWithCATIUpdates
InstanceOf: PMIPatient
Usage: #example
Title: "PMI Patient With CATI Updates"
Description: "PMI Patient profile information which was updated by the CATI User"
* meta.profile[0] = "https://pmi-fhir-ig.github.io/pmi-fhir-ig/StructureDefinition/pmi-patient"
* meta.source = "#cati-provenance"
* contained[provenance] = cati-provenance
* contained[author] = cati-author
* id = "P128829103"
* name
  * given[0] = "James"
  * given[+] = "Emily"
  * family = "Bond"

