Instance: ResearchSubjectActive
InstanceOf: PMIResearchSubject
Usage: #example
Title: "Research Subject Active"
Description: "Participant who has completed primary consent and is active"
* meta.profile[0] = "https://pmi-ops.org/fhir/StructureDefinition/pmiresearch-subject"
* extension[0] = PMIPairingAwardeeEntityExample
* extension[+] = PMIPairingOrganizationEntityExample
* extension[+] = PMIPairingSiteEntityExample
* identifier[0].use = #official
* identifier[=].type = http://terminology.hl7.org/CodeSystem/v2-0203#XX
* identifier[=].system = "https://pmi-ops.org/fhir/systems/ptsc-id"
* identifier[=].value = "289392892"
* identifier[+].use = #official
* identifier[=].type = http://terminology.hl7.org/CodeSystem/v2-0203#XX
* identifier[=].system = "https://pmi-ops.org/fhir/systems/participant-id"
* identifier[=].value = "P201004920"
* status = #on-study
* period
  * start = "2022-01-13T12:00:29+00:00"
* individual = Reference(PMIPatientWithName)
* study = Reference(PMIResearchStudy)
* consent = Reference(PMIPrimaryConsent)
