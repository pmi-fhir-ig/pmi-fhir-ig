CodeSystem: PMIPairingTypeCodeSystem
Id: pmi-pairing-type-code-system
Title: "PMI Pairing Type CodeSystem"
Description: "Pairing Type CodeSystem for identifying type of pairing entity"
* ^meta.versionId = "1"
* ^caseSensitive = false
* #awardee "Awardee" "Awardee Entity for participants"
* #organization "Organization"  "Organization Entity for participants"
* #site "Site" "Site Entity for participants"

ValueSet: PMIPairingTypeCodes
Id: pmi-pairing-type-codes
Title: "PMI Pairing Type Codes"
Description: "Pairing Type Codes for identifying type of pairing entity"
* include codes from system PMIPairingTypeCodeSystem