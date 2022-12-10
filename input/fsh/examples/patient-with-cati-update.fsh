Instance: PMIPatientWithCATIUpdatesExample
InstanceOf: PMIPatient
Usage: #example
Title: "PMI Patient With CATI Updates"
Description: "PMI Patient profile information which was updated by the CATI User"
* meta.profile = Canonical(pmi-patient)
* meta.source = "#PMICATIProvenanceExample"
* contained[provenance] = PMICATIProvenanceExample
* contained[author] = PMICATIAuthorExample
* id = "P128829103"
* name
  * given[0] = "James"
  * given[+] = "Emily"
  * family = "Bond"

