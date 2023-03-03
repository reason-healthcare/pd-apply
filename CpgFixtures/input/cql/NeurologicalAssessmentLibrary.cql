library NeurologicalAssessmentLibrary version '0.1.0'

using FHIR version '4.0.1'

include FHIRHelpers version '0.1.0'

context Patient

define "Patient id":
  Patient.id

define "Condition":
  [Condition]

define "Condition Name":
  "Condition".code.coding[0].display.value

define "Neurological Impairment Risk Factors":
  'Recommend neurological screening based on risk factor of ' + "Condition Name"
