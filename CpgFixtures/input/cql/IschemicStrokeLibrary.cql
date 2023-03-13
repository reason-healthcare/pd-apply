library IschemicStrokeLibrary version '0.1.0'

using FHIR version '4.0.1'

include FHIRHelpers version '0.1.0'

codesystem "SNOMED": 'http://snomed.info/sct'
code "Ischemic Stroke":
  '422504002' from "SNOMED" display 'Ischemic stroke (disorder)'

context Patient

define "Patient id":
  Patient.id

define "Condition":
  [Condition]

define "Condition Code Value":
  "Condition".code.coding.code.value

define "Had Ischemic Stroke":
  "Condition Code Value"[0] = "Ischemic Stroke".code

define "Condition Reference":
  if "Condition" is not null then
    Tuple { reference: 'Condition/' + "Condition"[0].id }
  else
    Tuple { reference: 'Condition/unknown' }