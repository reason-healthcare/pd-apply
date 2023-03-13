library NeurologicalAssessmentLibrary version '0.1.0'

using FHIR version '4.0.1'

include FHIRHelpers version '0.1.0'

context Patient

define "Patient id":
  Patient.id

define "Condition":
  [Condition]

define "Condition Recorded Date":
  "Condition".recordedDate.value

define "Timing of Service":
  "Condition Recorded Date".first()