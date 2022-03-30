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
