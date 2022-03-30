Extension: PMIPairingEntityType
Id: pmi-pairing-entity-type
Title: "PMI Research Pairing Organization Type"
Description: "Type of entity that Participant is paired with"
* ^status = #draft
* value[x] 1..1
* value[x] only code
* value[x] from PMIPairingTypeCodes (required)

Extension: PMIPairingEntityCode
Id: pmi-pairing-entity-code
Title: "PMI Pairing Entity Code"
Description: "Code for the entity that Participant is paired with"
* ^status = #draft
* value[x] 1..1
* value[x] only string

Extension: PMIPairingEntityName
Id: pmi-pairing-entity-name
Title: "PMI Pairing Entity Name"
Description: "Name of the entity that Participant is paired with"
* ^status = #draft
* value[x] 1..1
* value[x] only string

Extension: PMIPairingEntities
Id: pmi-pairing-entities
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


