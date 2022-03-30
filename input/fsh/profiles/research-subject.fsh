Profile: PMIResearchSubject
Parent: ResearchSubject
Id: pmiresearch-subject
Title: "PMI Research Subject"
Description: "Research Subject for PMI Program"
* ^meta.versionId = "1"
* modifierExtension 0..0
* extension contains
    PMIPairingEntities named pairedEntities 0..3 MS
* identifier 2..2 MS
  * ^short = "Identifiers for the participant"
  * ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "system"
  * ^slicing.rules = #closed
  * ^isModifier = false
  * assigner 0..0
* identifier contains PTSCID 1..1 MS
* identifier[PTSCID]
  * ^short = "PTSC ID for the research subject"
  * system = "https://pmi-ops.org/fhir/systems/ptsc-id"
  * use = #official
  * use 1..1 MS
  * type = http://terminology.hl7.org/CodeSystem/v2-0203#XX
  * type 1..1 MS
  * value ^short = "PTSC Identifier"
* identifier contains PMIID 1..1 MS
* identifier[PMIID]
  * ^short = "PMI Participant ID for the research subject"
  * system = "https://pmi-ops.org/fhir/systems/participant-id"
  * use = #official
  * use 1..1 MS
  * type = http://terminology.hl7.org/CodeSystem/v2-0203#XX
  * type 1..1 MS
  * value ^short = "Participant Identifier for PMI"
* status 1..1 MS 
* status
  * ^definition = "Participant's status in the program"
  * ^short = "on-study | off-study | withdrawn"
* period 1..1 MS
  * ^short = "Period when the participant participant in the program."
  * ^comment = "If the same participant participates in the program multiple after withdrawing from the program, there should be a new ResearchSubject record"
  * start 1..1 MS 
    * ^short = "The date when the participant registered in PTSC"
  * end 0..1 MS
    * ^short = "The date the participant withdraws or deactivated their participantion in the program"
* individual 1..1 MS
  * ^type.targetProfile = "https://pmi-ops.org/fhir/StructureDefinition/pmi-patient"
* consent 1..1 MS
  * ^short = "Primary consent for the participant"
* assignedArm 0..0
* actualArm 0..0


