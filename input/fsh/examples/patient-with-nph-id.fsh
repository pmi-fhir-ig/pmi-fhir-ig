Instance: PMIPatientWithNPHIDExample
InstanceOf: PMIPatient
Usage: #example
Title: "PMI Patient with NPH ID"
Description: "PMI Patient profile information which was updated by the participant"
* meta.profile = Canonical(pmi-patient)
* meta.source = "#PMIParticipantProvenanceExample"
* contained[provenance] = PMIParticipantProvenanceExample
* id = "P128829102"
* identifier[NPH]
  * use = #official
  * type = PMIIdentifierTypeCS#NPH
  * value = "NPHS578448930"
* name[official]
  * given[0] = "James"
  * given[+] = "Emily"
  * family = "Bond"
  * suffix = "III"
* name[preferred]
  * given[0] = "Jim"
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
* address
  * type = #physical
  * line[0] = "4114 Legato Rd"
  * city = "Fairafx"
  * state = "VA"
  * postalCode = "22033"
  * country = #US
