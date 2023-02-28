library IronDeficiencyTreamtmentLibrary version '0.1.0'

using FHIR version '4.0.1'

include FHIRHelpers version '0.1.0'

codesystem "SNOMED": 'http://snomed.info/sct'
code "anemia":
  '271737000' from "SNOMED" display 'Anemia (disorder)'

context Patient

define "Patient id":
  Patient.id

define "Condition":
  [Condition]

define "Condition Code Value":
  "Condition".code.coding.code.value

define "Has anemia":
  "Condition Code Value"[0] = "anemia".code