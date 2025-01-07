Instance: Patient1
InstanceOf: Patient
Usage: #example
* name
  * given = "Alice"

Instance: Practitioner1
InstanceOf: Practitioner
Usage: #example
* name
  * given = "Michael"

Instance: Encounter1
InstanceOf: Encounter
Usage: #example
* status = #in-progress
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#AMB
* subject = Reference(Patient1)
* participant.individual = Reference(Practitioner1)

Instance: PastMedicationRequest
InstanceOf: MedicationRequest
Usage: #example
* status = #active
* intent = #order
* authoredOn = "2023-01-01"
* medicationCodeableConcept.text = "Some medication"
* subject = Reference(Patient1)

Instance: CurrentMedication
InstanceOf: Medication
Usage: #example
* status = #active

Instance: PastMedication
InstanceOf: Medication
Usage: #example
* form = http://snomed.info/sct#pill "Pill"
* status = #inactive

Instance: ActiveRaTreatmentFeature1
InstanceOf: ActiveRaTreatmentFeature
Usage: #inline
* derivedFrom = Reference(QuestionnaireResponse/RaQuestionnaireResponse3)
* status = #final
* code = CaseFeatureCodes#on-ra-treatment
* subject = Reference(Patient/Patient1)
* valueBoolean = true

Instance: DetectedIssue1
InstanceOf: DetectedIssue
Usage: #example
* status = #final
* code = http://terminology.hl7.org/CodeSystem/v3-ActCode#TIME "Time-related Detected Issue"
* severity = #high
* patient = Reference(Patient/Patient1)
* identifiedDateTime = "2023-01-01"

Instance: Condition1
InstanceOf: Condition
Usage: #example
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#provisional
* category = http://terminology.hl7.org/CodeSystem/condition-category#problem-list-item
* code = http://snomed.info/sct#422504002 "Ischemic stroke (disorder)"
* subject = Reference(Patient/Patient1)
* recordedDate = "2023-01-01"

Instance: Inference1
InstanceOf: Observation
Usage: #example
* status = #final
* code
  * text = "Inference"
  * coding = http://snomed.info/sct#448765001 "Unintentional weight loss (finding)"
* subject = Reference(Patient/Patient1)
* effectiveDateTime = "2023-01-01"

Instance: Flag1
InstanceOf: Flag
Usage: #example
* status = #active
* category = http://terminology.hl7.org/CodeSystem/flag-category#admin "Administrative"
* code
  * text = "Flag"
* subject = Reference(Patient/Patient1)
* period
  * start = "2023-01-01"
  * end = "2024-01-01"


Instance: PatientTestBundle1
InstanceOf: Bundle
* type = #collection
* entry[+].resource = Patient1
* entry[+].resource = Encounter1
* entry[+].resource = Practitioner1
* entry[+].resource = PastMedicationRequest
* entry[+].resource = CurrentMedication
* entry[+].resource = PastMedication
* entry[+].resource = DetectedIssue1
* entry[+].resource = Condition1
* entry[+].resource = Inference1
* entry[+].resource = Flag1
* entry[+].resource = ActiveRaTreatmentFeature1