Extension: PMITimezone
Id: pmi-timezone
Title: "PMI Timezone"
Description: "Timezone associated with the participant"
* value[x] 1..1
* value[x] only code
* value[x] from http://hl7.org/fhir/ValueSet/timezones (required)

Instance: PMITimezoneExample
InstanceOf: PMITimezone
Usage: #inline
Title: "PMI Timezone Example"
* valueCode = https://www.iana.org/time-zones#America/Los_Angeles