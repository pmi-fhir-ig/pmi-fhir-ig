Profile: PMIPatient
Parent: Patient
Id: pmi-patient
Title: "PMI Patient"
Description: "Participant profile"
* identifier 0..1 MS
  * use = #official
  * type = http://terminology.hl7.org/CodeSystem/v2-0203#SS
  * system = "http://hl7.org/fhir/sid/us-ssn"
* active 0..0
* name 0..1 MS
* name
  * use = #official
  * family MS
  * family ^short = "Last name of the participant"
  * given MS
  * given ^short = "First and Middle name (if any) provided as array of strings"
* telecom MS
  * period 0..0
  * extension 0..0
* gender MS
* birthDate MS
* deceased[x] MS
* address MS
  * use 1..1 MS
  * use = #home
  * type ^short = "postal (MAILING) | physical (ACCOUNT)"
  * line 0..2 MS
  * city MS
  * district MS
  * state MS
  * postalCode MS
  * country MS
* maritalStatus 0..0 
* photo 0..0
* contact MS
  * ^short = "Secondary Contacts for the Patient"
  * relationship 0..1 MS
  * relationship = http://terminology.hl7.org/CodeSystem/v2-0131#CP
  * name 1..1 MS
  * organization 0..0 
* generalPractitioner 0..0

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
* telecom
  * system = http://hl7.org/fhir/contact-point-system#phone
  * value = "2405553920"
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