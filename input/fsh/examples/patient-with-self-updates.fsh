Instance: PMIPatientWithSelfUpdates
InstanceOf: PMIPatient
Usage: #example
Title: "PMI Patient with Self Updates"
Description: "PMI Patient profile information which was updated by the participant"
* meta.profile[0] = "https://pmi-fhir-ig.github.io/pmi-fhir-ig/StructureDefinition/pmi-patient"
* meta.source = "#participant-provenance"
* contained[provenance] = participant-provenance
* id = "P128829100"
* name
  * given[0] = "James"
  * given[+] = "Emily"
  * family = "Bond"
* telecom[0]
  * system = http://hl7.org/fhir/contact-point-system#phone
  * value = "2405553920"
  * use = http://hl7.org/fhir/contact-point-use#home
* telecom[+]
  * extension = PMIVerifiedExample
  * system = http://hl7.org/fhir/contact-point-system#phone
  * value = "2405553920"
  * use = http://hl7.org/fhir/contact-point-use#home
* telecom[+]
  * extension = PMIVerifiedExample
  * system = http://hl7.org/fhir/contact-point-system#email
  * value = "patient@example.org"
  * use = http://hl7.org/fhir/contact-point-use#home
* identifier[SSN]
  * use = #official
  * type = http://terminology.hl7.org/CodeSystem/v2-0203#SS
  * system = "http://hl7.org/fhir/sid/us-ssn"
  * value = "578448930"
