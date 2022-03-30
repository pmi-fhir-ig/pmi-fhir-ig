Profile: PMIPhysicalMeasurementHeight
Parent: http://hl7.org/fhir/StructureDefinition/bodyheight
Id: pmi-physical-measurement-height
Title: "PMI Physical Measurement Height"
Description: "Physican Measurement records for the participant"
* basedOn 0..0
* partOf 0..0
* focus 0..0
* encounter 0..0
* dataAbsentReason 0..0
* interpretation 0..0
* note 0..0
* bodySite 0..0
* method 0..0
* specimen 0..0
* device 0..0
* referenceRange 0..0
* hasMember 0..0
* derivedFrom 0..0
* component 0..0
* performer 0..0
* category[VSCat]
  * coding
    * userSelected 0..0
    * version 0..0
* code
  * coding[BodyHeightCode]
    * userSelected 0..0
    * version 0..0
    * system MS
    * code MS
* value[x] 1..1
* value[x][valueQuantity]
  * comparator 0..0