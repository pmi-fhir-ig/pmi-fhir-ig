Extension: PMIVerified
Id: pmi-verified
Title: "PMI Verified"
Description: "Flag to indicate verified information"
* ^context[0].type = #fhirpath
* ^context[=].expression = "Patient.telecom"
* ^context[+].type = #fhirpath
* ^context[=].expression = "Patient.address"
* value[x] 1..1
* value[x] only boolean

Instance: PMIVerifiedExample
InstanceOf: PMIVerified
Usage: #inline
Title: "PMI Verified Example"
Description: "Flag for verified"
* valueBoolean = true