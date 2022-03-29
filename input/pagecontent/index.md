### Introduction

The PMI Core Implementation guide is based on FHIR Version R4 and defines the minimum set of constraints on the FHIR resources to create the profiles. It also defined the minimum set of FHIR RESTFUL interactions for each of the profiles to access information. 

### Resource Profiles

| Scope | Profile | Status | Notes |
|------| ----------- |----| ----------- |
| Program Subscription | `ResearchSubject` | ![Done](mustsupport.png) | This represents a single instance of individual's participation in the study. In theory, a participant can withdrawn and reenroll - which will create a new instance of Reserach |
| Participant Data | `Patient` | ![Done](mustsupport.png) | This is the individual who is participating in the study accessed from `ResearchStudy.individual` |
| Primary Consent | `Consent` | ![TBD](icon-warning.png) |Record of the primary consent for the participant accessed from `ResearchStudy.consent` |
| Pairing | [`PMIPairingEntities`](StructureDefinition-pmipairing-entities.html)| ![Done](mustsupport.png) | Organization associated with the participant |
| Secondary Contact | `Patient` | ![Done](mustsupport.png) | List of participant contacts accessed from `Patient.contact` |
| Physical Measurement | `Observation` | ![TBD](icon-warning.png) | List of Physical measurements. relies of `us-core` profile for VitalSigns for Height, Weight, BP |
| Data Sharing Consents | `Consent` | ![TBD](icon-warning.png) | All consents and aggreements signed by the participant |
| Communication Preference | `Subscription` | ![TBD](icon-warning.png) | Communication preferences for the participants subscription to newsletters and notifications |
| Sample Status | `Specimen` | ![TBD](icon-warning.png) | Status of the sample collected from the participant |
| Report Status | `DiagnosticReport` AND `Observation` | ![TBD](icon-warning.png) | Status of reports for the participant |
| Order Status | `SupplyDelivery`<br/>`SupplyRequest` | ![TBD](icon-warning.png) | Status for salivary or exam one status |


### Operation Definition profiles

| Event | Operation | Resources | Notes |
|-------|---------|-------|
| Information Update | `[base]/[Resource]/[id]/$notify` | `ResearchSubject`/`Patient`/`Consent` | Called on resource urls to notify the recepient of updates to information. The receiving system can query the source system as their pace | 
| Add Codebook values | `[base]/CodeSystem/[id]/$add-code` | `CodeSystem` | Called to add new code book values to the PPI codesystem |
| Validate Codebook values | `[base]/CodeSystem/[id]/$validate-code` | `CodeSystem` | Called to validate code book values in PPI codesystem |
| Search for Updates | `[base]/[Resource]/_history` <br/> `[base]/[Resource]/[id]/_history` | `ResearchSubject`/`Patient`/`Observation` | Search for updates to resource/resources
