Instance: PMIParticipantProvenanceExample
InstanceOf: PMIProvenance
Usage: #example
Title: "PMI Participant Provenance for Update"
Description: "PMI Participant Provenance example to be included in the participants patient object"
* meta.profile = Canonical(pmi-provenance)
* recorded = "2015-02-07T13:28:17.239+02:00"
* target = Reference(PMIPatientWithSelfUpdatesExample)
* agent
  * type = http://terminology.hl7.org/CodeSystem/provenance-participant-type#author
  * who = Reference(PMIPatientWithSelfUpdatesExample)
