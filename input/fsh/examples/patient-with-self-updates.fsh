Instance: PMIPatientWithSelfUpdatesExample
InstanceOf: PMIPatient
Usage: #example
Title: "PMI Patient with Self Updates"
Description: "PMI Patient profile information which was updated by the participant"
* meta.profile = Canonical(pmi-patient)
* meta.source = "#PMIParticipantProvenanceExample"
* contained[provenance] = PMIParticipantProvenanceExample
* id = "P128829100"
* identifier[SSN]
  * use = #official
  * system = "http://hl7.org/fhir/sid/us-ssn"
  * value = "578448930"
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
* birthDate = "1905-08-23"
* address
  * type = #physical
  * line[0] = "4114 Legato Rd"
  * city = "Fairafx"
  * state = "VA"
  * postalCode = "22033"
  * country = #US
* communication[0]
  * preferred = true
  * language = urn:ietf:bcp:47#es
* contact[0]
  * relationship
    * coding[CP] = http://terminology.hl7.org/CodeSystem/v2-0131#CP
    * coding[PMI] = PMIRelationshipTypeCS#friend
  * name
    * use = #nickname
    * given[0] = "Moneypenny"
  * telecom
    * system = http://hl7.org/fhir/contact-point-system#phone
    * value = "2405553920"
    * use = http://hl7.org/fhir/contact-point-use#home
  * address
    * type = #physical
    * line[0] = "4114 Legato Rd"
    * city = "Fairafx"
    * state = "VA"
    * postalCode = "22033"
    * country = #US

