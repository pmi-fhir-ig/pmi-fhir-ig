Instance: PMIPatientWithName
InstanceOf: PMIPatient
Usage: #example
Title: "PMI Patient With Name"
Description: "Participant patient record with name"
* meta.profile[0] = "https://pmi-ops.org/fhir/StructureDefinition/pmi-patient"
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
* identifier
  * use = #official
  * type = http://terminology.hl7.org/CodeSystem/v2-0203#SS
  * system = "http://hl7.org/fhir/sid/us-ssn"
  * value = "578448930"