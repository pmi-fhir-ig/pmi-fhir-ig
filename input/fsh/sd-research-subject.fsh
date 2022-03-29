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
  * use = #official
  * use ^short = official
  * use ^isModifier = false
  * use 1..1 MS
  * type 1..1 MS
  * type = #XX
  * system 1..1 MS
  * value 1..1 MS
* identifier contains PTSCID 1..1 MS
* identifier[PTSCID]
  * ^short = "PTSC ID for the research subject"
  * system = "https://pmi-ops.org/fhir/systems/ptsc-id"
  * value ^short = "PTSC Identifier"
* identifier contains PMIID 1..1 MS
* identifier[PMIID]
  * ^short = "PMI Participant ID for the research subject"
  * system = "https://pmi-ops.org/fhir/systems/participant-id"
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
