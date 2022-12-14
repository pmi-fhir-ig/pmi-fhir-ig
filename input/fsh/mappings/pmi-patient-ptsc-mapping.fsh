Mapping: pmi-patient-data-mapping
Id: pmi-patient-data-mapping
Title: "PMI Data Model"
Source: PMIPatient
Target: "https://pmi-ops.org/"
* -> "Patient"
* id -> "user -> external_id"
* meta.source -> "#participant-provenance or #cati-provenance depending on who made the update"
* contained -> "instance of PMIProvenance"
* identifier[SSN].value -> "user -> ssn"
* identifier[SSN].value -> "user -> ssn"
* name[official].family -> "user -> last_name"
* name[official].given -> "user -> first_name split by space into an array and user -> middle_initial"
* name[preferred].given -> "user -> preferred_name"
* telecom.value -> "user -> verified_primary_phone_number, user -> email, user -> alternate_email"
* telecom.system -> "#phone, #email"
* birthDate
* address -> "user_address"
* contact -> "user_secondary_contact"
* communication -> "user_preference -> locale"
