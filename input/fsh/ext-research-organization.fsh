Extension: PMIResearchPairingType
Id: pmiresearch-pairing-type
Title: "PMI Research Pairing Organization Type"
* ^status = #draft
* value[x] 1..1
* value[x] only code
* value[x] from PMIResearchPairingTypeCodes (required)

Extension: PMIResearchPairingName
Id: pmiresearch-pairing-name
Title: "PMI Research Pairing Organization Name"
* ^status = #draft
* value[x] 1..1
* value[x] only string

Extension: PMIResearchPairingOrganization
Id: pmiresearch-pairing-organization
Title: "PMI Research Pairing Organization"
Description: "Organization that Participant is paired with"
* ^status = #draft
* . 0..3 MS
* extension contains
    PMIResearchPairingType named type 0..1 and
    PMIResearchPairingName named pairing 0..1 
* extension[type] 1..1 MS
* extension[pairing] 1..1 MS


CodeSystem: PMIResearchPairingTypeCodeSystem
Id: pmiresearch-pairing-type-code-system
Title: "PMI Research Pairing Type CodeSystem"
Description: "Pairing Type Codes"
* ^meta.versionId = "1"
* #awardee "Awardee"
* #organization "Organization"
* #site "Site"

ValueSet: PMIResearchPairingTypeCodes
Id: pmiresearch-pairing-type-codes
Title: "PMI Research Pairing Type Codes"
Description: "Pairing Type Codes"
* include codes from system PMIResearchPairingTypeCodeSystem

