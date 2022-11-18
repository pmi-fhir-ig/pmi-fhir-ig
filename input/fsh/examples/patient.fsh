Instance: PMIPatientWithName
InstanceOf: PMIPatient
Usage: #example
Title: "PMI Patient With Name"
Description: "Participant patient record with name"
* meta.profile[0] = "https://pmi-ops.org/fhir/StructureDefinition/pmi-patient"
* meta.source = "#patient-provenance"
* contained = patient-provenance
* id = "P128829100"
* name
  * given[0] = "James"
  * given[+] = "Emily"
  * family = "Bond"

Instance: PMIPatientWithPhoneAndEmail
InstanceOf: PMIPatient
Usage: #example
Title: "PMI Patient With Phone And Email"
Description: "Participant patient record with phone and email records"
* meta.profile[0] = "https://pmi-ops.org/fhir/StructureDefinition/pmi-patient"
* meta.source = "#patient-provenance"
* contained = patient-provenance
* id = "P128829101"
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

Instance: PMIPatientWithSSN
InstanceOf: PMIPatient
Usage: #example
Title: "PMI Patient With SSN"
Description: "Participant patient record with phone and email records"
* meta.profile[0] = "https://pmi-ops.org/fhir/StructureDefinition/pmi-patient"
* meta.source = "#patient-provenance"
* contained = patient-provenance
* id = "P128829102"
* identifier[SSN]
  * use = #official
  * type = http://terminology.hl7.org/CodeSystem/v2-0203#SS
  * system = "http://hl7.org/fhir/sid/us-ssn"
  * value = "578448930"

Instance: PMIPatientWithTimezone
InstanceOf: PMIPatient
Usage: #example
Title: "PMI Patient With TimeZone"
Description: "Participant patient record with timezone"
* meta.profile[0] = "https://pmi-ops.org/fhir/StructureDefinition/pmi-patient"
* meta.source = "#patient-provenance"
* contained = patient-provenance
* id = "P128829103"
* name
  * given[0] = "James"
  * given[+] = "Emily"
  * family = "Bond"

Instance: patient-provenance
InstanceOf: Provenance
Usage: #inline
* recorded = "2015-02-07T13:28:17.239+02:00"
* target = Reference(PMIPatientWithName)
* agent
  * type = http://terminology.hl7.org/CodeSystem/provenance-participant-type#author
  * who = Reference(PMIPatientWithName)
