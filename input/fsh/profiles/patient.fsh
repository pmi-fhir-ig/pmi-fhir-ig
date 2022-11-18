Profile: PMIPatient
Parent: Patient
Id: pmi-patient
Title: "PMI Patient"
Description: "Participant profile"
* meta
  * source 1..1 MS
  * source ^short = "Reference to the contained Provenance"
* contained 1..* MS
  * ^slicing.discriminator.type = #profile
  * ^slicing.discriminator.path = "type"
  * ^slicing.rules = #closed
* contained only Provenance or Organization
* id ^short = "Participant ID e.g. P12345678"
* identifier 0..1 MS
  * ^short = "Identifiers for the patient"
  * ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "system"
  * ^slicing.rules = #closed
  * ^isModifier = false
  * assigner 0..0
  * period 0..0
* identifier contains SSN 0..1 MS
* identifier[SSN]
  * ^short = "Social Security Number for the patient"
  * use = #official
  * type = http://terminology.hl7.org/CodeSystem/v2-0203#SS
  * system = "http://hl7.org/fhir/sid/us-ssn"
  * value ^short = "Social Security Number"
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
  * extension 0..1
  * extension contains
    PMIVerified named verified 0..1 MS
* birthDate MS
* deceased[x] MS
  * ^short = "Indicates whether the participant is deceased or not. If the date is known, use deceasedDateTime, else use deceasedBoolean"
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
  * extension 0..1
  * extension contains
    PMIVerified named verifiedAddress 0..1 MS
* communication
  * ^isModifier = false
* multipleBirth[x] 0..0
* gender 0..0
* maritalStatus 0..0
* photo 0..0
* contact MS
  * ^short = "Secondary Contacts for the Patient"
  * ^isModifier = false
  * relationship 0..1 MS
  * relationship = http://terminology.hl7.org/CodeSystem/v2-0131#CP
  * name 1..1 MS
  * gender 0..0
  * organization 0..0
  * period 0..0
* generalPractitioner 0..0
* managingOrganization 0..0
* link 0..0

