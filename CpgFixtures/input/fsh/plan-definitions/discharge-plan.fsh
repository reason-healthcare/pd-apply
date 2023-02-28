Instance: DischargePlan
InstanceOf: $cpg-computableplandefinition
Usage: #example
* insert KnowledgeArtifactDefinitionMetadata(DischargePlan, PlanDefinition)
* description = "Definition of plan to monitor patient following discharge"
* type = $cpg-plan-type#clinical-protocol "Clinical Protocol"
* goal
  * description
    * text = "Patient monitoring"
  * start = http://snomed.info/sct#308283009 "Discharge from hospital"
* action
  * title = "Monitor patient"
  * description = "Monitor patient post discharge"
  * action
    * title = "Case management or referral"
    * code = http://hl7.org/fhir/uv/cpg/CodeSystem/cpg-common-process#discharge-referral-of-patient
  * action
    * title = "Schedule follow-up visit"
    * code = http://hl7.org/fhir/uv/cpg/CodeSystem/cpg-common-process#monitor-and-follow-up-of-patient