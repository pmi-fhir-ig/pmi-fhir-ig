Extension: PMIPairingEntityType
Id: pmipairing-entity-type
Title: "PMI Research Pairing Organization Type"
Description: "Type of entity that Participant is paired with"
* ^status = #draft
* value[x] 1..1
* value[x] only code
* value[x] from PMIPairingTypeCodes (required)

Extension: PMIPairingEntityCode
Id: pmipairing-entity-code
Title: "PMI Pairing Entity Code"
Description: "Code for the entity that Participant is paired with"
* ^status = #draft
* value[x] 1..1
* value[x] only string

Extension: PMIPairingEntityName
Id: pmipairing-entity-name
Title: "PMI Pairing Entity Name"
Description: "Name of the entity that Participant is paired with"
* ^status = #draft
* value[x] 1..1
* value[x] only string

Extension: PMIPairingEntities
Id: pmipairing-entities
Title: "PMI Pairing Entities"
Description: "Entities that Participant is paired with"
* ^status = #draft
* . 0..3 MS
* extension contains
    PMIPairingEntityType named type 1..1 and
    PMIPairingEntityName named entity 1..1 and
    PMIPairingEntityCode named code 1..1
* extension[type] 1..1 MS
* extension[entity] 1..1 MS
* extension[code] 1..1 MS


CodeSystem: PMIPairingTypeCodeSystem
Id: pmipairing-type-code-system
Title: "PMI Pairing Type CodeSystem"
Description: "Pairing Type CodeSystem for identifying type of pairing entity"
* ^meta.versionId = "1"
* ^caseSensitive = false
* #awardee "Awardee" "Awardee Entity for participants"
* #organization "Organization"  "Organization Entity for participants"
* #site "Site" "Site Entity for participants"

ValueSet: PMIPairingTypeCodes
Id: pmipairing-type-codes
Title: "PMI Pairing Type Codes"
Description: "Pairing Type Codes for identifying type of pairing entity"
* include codes from system PMIPairingTypeCodeSystem


Instance: PMIPairingEntityTypeAwardeeExample
InstanceOf: PMIPairingEntityType
Usage: #inline
Title: "PMI Pairing Entity Type Awardee Example"
* valueCode = PMIPairingTypeCodeSystem#awardee

Instance: PMIPairingEntityTypeOrgExample
InstanceOf: PMIPairingEntityType
Usage: #inline
Title: "PMI Pairing Entity Type Awardee Example"
* valueCode = PMIPairingTypeCodeSystem#organization

Instance: PMIPairingEntityTypeSiteExample
InstanceOf: PMIPairingEntityType
Usage: #inline
Title: "PMI Pairing Entity Type Site Example"
* valueCode = PMIPairingTypeCodeSystem#site

Instance: PMIPairingEntityCodeExample
InstanceOf: PMIPairingEntityCode
Usage: #inline
Title: "PMI Pairing Entity Code Example"
Description: "Example extenion for entity code"
* valueString = "ARI" 

Instance: PMIPairingEntityNameExample
InstanceOf: PMIPairingEntityName
Usage: #inline
Title: "PMI Pairing Entity Name Example"
Description: "Example extenion for entity name"
* valueString = "Arizona" 

Instance: PMIPairingAwardeeEntityExample
InstanceOf: PMIPairingEntities
Usage: #inline
Title: "PMI Pairing Awardee Entity Example"
* extension[0] = PMIPairingEntityTypeAwardeeExample
* extension[+] = PMIPairingEntityCodeExample
* extension[+] = PMIPairingEntityNameExample

Instance: PMIPairingOrganizationEntityExample
InstanceOf: PMIPairingEntities
Usage: #inline
Title: "PMI Pairing Organization Example"
* extension[0] = PMIPairingEntityTypeOrgExample
* extension[+] = PMIPairingEntityCodeExample
* extension[+] = PMIPairingEntityNameExample

Instance: PMIPairingSiteEntityExample
InstanceOf: PMIPairingEntities
Usage: #inline
Title: "PMI Pairing Site Example"
* extension[0] = PMIPairingEntityTypeSiteExample
* extension[+] = PMIPairingEntityCodeExample
* extension[+] = PMIPairingEntityNameExample