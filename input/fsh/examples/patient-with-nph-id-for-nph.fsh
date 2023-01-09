Instance: PMIPatientWithNPHIDForNPHExample
InstanceOf: PMIPatient
Usage: #example
Title: "PMI Patient with identifier for NPH Study"
Description: "PMI Patient profile information which has been assigned an ancillary study ID for NPH"
* meta.profile = Canonical(pmi-patient)
* meta.source = "#PMIParticipantProvenanceForNPHExample"
* contained[provenance] = PMIParticipantProvenanceForNPHExample
* id = "1000578448930"
* identifier[NPH]
  * use = #official
  * type = PMIIdentifierTypeCS#NPH-1000
  * value = "1000578448930"
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
