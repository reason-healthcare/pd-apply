Instance: DischargeExpected
InstanceOf: Bundle
Usage: #example
* type = #collection
* entry[0].fullUrl = "http://apply-processor/RequestGroup/af5299b3-9a6b-45f4-83e2-6ff47e01712b"
* entry[=].resource = DischargeRequestGroup
* entry[+].resource = PatientMonitoringGoal

Instance: DischargeRequestGroup
InstanceOf: RequestGroup
Usage: #inline
* intent = #proposal
* status = #draft
* subject = Reference(Patient1)
* author = Reference(Practitioner1)
* encounter = Reference(Encounter1)
* instantiatesCanonical = "http://example.com/PlanDefinition/DischargePlan|0.1.0"
* extension
  * url = "http://hl7.org/fhir/StructureDefinition/resource-pertainsToGoal"
  * valueReference = Reference(PatientMonitoringGoal)
* action
  * title = "Monitor patient"
  * description = "Monitor patient post discharge"
  * action
    * title = "Case management or referral"
    * code = http://hl7.org/fhir/uv/cpg/CodeSystem/cpg-common-process#discharge-referral-of-patient
  * action
    * title = "Schedule follow-up visit"
    * code = http://hl7.org/fhir/uv/cpg/CodeSystem/cpg-common-process#monitor-and-follow-up-of-patient

Instance: PatientMonitoringGoal
InstanceOf: Goal
Usage: #inline
* subject = Reference(Patient1)
* lifecycleStatus = #planned
* description
  * text = "Patient monitoring"
* startCodeableConcept = http://snomed.info/sct#308283009 "Discharge from hospital"