Instance: PMIPatientWithSelfUpdates
InstanceOf: PMIPatient
Usage: #example
Title: "PMI Patient with Self Updates"
Description: "PMI Patient profile information which was updated by the participant"
* meta.profile[0] = "https://pmi-ops.org/fhir/StructureDefinition/pmi-patient"
* meta.source = "#participant-provenance"
* contained = participant-provenance
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

Instance: PMIPatientWithCATIUpdates
InstanceOf: PMIPatient
Usage: #example
Title: "PMI Patient With CATI Updates"
Description: "PMI Patient profile information which was updated by the CATI User"
* meta.profile[0] = "https://pmi-ops.org/fhir/StructureDefinition/pmi-patient"
* meta.source = "#cati-provenance"
* contained[0] = cati-provenance
* contained[+] = cati-author
* id = "P128829103"
* name
  * given[0] = "James"
  * given[+] = "Emily"
  * family = "Bond"

Instance: participant-provenance
InstanceOf: Provenance
Usage: #inline
* recorded = "2015-02-07T13:28:17.239+02:00"
* target = Reference(PMIPatientWithSelfUpdates)
* agent
  * type = http://terminology.hl7.org/CodeSystem/provenance-participant-type#author
  * who = Reference(PMIPatientWithSelfUpdates)

Instance: cati-author
InstanceOf: Organization
Usage: #inline
* name = "PTSC"
* contact
  * telecom
    * system = http://hl7.org/fhir/contact-point-system#email
    * value = "cati-user@example.org"

Instance: cati-provenance
InstanceOf: Provenance
Usage: #inline
* recorded = "2015-02-07T13:28:17.239+02:00"
* target = Reference(PMIPatientWithCATIUpdates)
* agent
  * type = http://terminology.hl7.org/CodeSystem/provenance-participant-type#author
  * who = Reference(cati-author)
