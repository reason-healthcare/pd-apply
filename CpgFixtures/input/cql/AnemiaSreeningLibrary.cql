library AnemiaScreeningLibrary version '0.1.0'

using FHIR version '4.0.1'

include FHIRHelpers version '0.1.0'

codesystem "SNOMED": 'http://snomed.info/sct'
code "Unintentional weight loss":
  '448765001' from "SNOMED" display 'Unintentional weight loss (finding)'
code "Inadequate mineral intake":
  '441921000124106' from "SNOMED" display 'Inadequate mineral intake (finding)'

context Patient

define "Patient id":
  Patient.id

define "Observation":
  [Observation]

define "Observation Code":
  "Observation"[0].code.coding.code.value

define "Needs CBC":
  "Observation Code"[0] = "Unintentional weight loss".code

define "Needs serum ferritin":
  "Observation Code"[0] = "Inadequate mineral intake".code

