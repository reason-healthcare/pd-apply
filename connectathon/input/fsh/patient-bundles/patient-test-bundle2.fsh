Instance: Patient2
InstanceOf: Patient
Usage: #example
* name
  * given = "Alice"

Instance: Practitioner2
InstanceOf: Practitioner
Usage: #example
* name
  * given = "Michael"

Instance: Encounter2
InstanceOf: Encounter
Usage: #example
* status = #in-progress
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#AMB
* subject = Reference(Patient2)
* participant.individual = Reference(Practitioner2)

Instance: ActiveRaTreatmentFeature1
InstanceOf: ActiveRaTreatmentFeature
Usage: #inline
* derivedFrom = Reference(QuestionnaireResponse/RaQuestionnaireResponse4)
* status = #final
* code = CaseFeatureCodes#on-ra-treatment
* subject = Reference(Patient/Patient2)
* valueBoolean = true
* effectiveDateTime = "2024-01-01"

Alias: $condition-clinical = http://terminology.hl7.org/CodeSystem/condition-clinical
Alias: $condition-ver-status = http://terminology.hl7.org/CodeSystem/condition-ver-status
Alias: $condition-category = http://terminology.hl7.org/CodeSystem/condition-category
Alias: $sct = http://snomed.info/sct

Instance: RheumatoidArthritisCondition
InstanceOf: Condition
Usage: #example
* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-ver-status#confirmed
* category
  * coding[0] = $condition-category#encounter-diagnosis "Encounter Diagnosis"
  * coding[+] = $sct#439401001 "Diagnosis"
* severity = $sct#24484000 "Severe"
* code = $sct#69896004 "Rheumatoid arthritis (disorder)"
* subject = Reference(Patient/Patient2)
* onsetDateTime = "2025-07-10"

Instance: PatientTestBundle2
InstanceOf: Bundle
* type = #collection
* insert BundleEntry(Patient2, Patient)
* insert BundleEntry(Encounter2, Encounter)
* insert BundleEntry(Practitioner2, Practitioner)
* insert BundleEntry(ActiveRaTreatmentFeature1, ActiveRaTreatmentFeature)