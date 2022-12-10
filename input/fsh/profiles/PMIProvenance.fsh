Profile: PMIProvenance
Parent: Provenance
Id: pmi-provenance
Title: "PMI Provenance"
Description: "PMI Provenance profile"
* target only Reference(PMIPatient)
  * ^short = "Reference to the participant who is updated e.g. Patient/P21993820"
* recorded
  * ^short = "ISO timestamp of the update e.g. 2015-02-07T13:28:17.239+02:00"
* agent.type.coding.system = "http://terminology.hl7.org/CodeSystem/provenance-participant-type"
* agent.type.coding.code = #author
* agent.who only Reference(PMIPatient or Organization)
  * ^short = "Reference to the participant who made the update e.g. Patient/P21993820 or the CATI author"
