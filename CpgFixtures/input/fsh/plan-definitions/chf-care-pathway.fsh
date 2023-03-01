Instance: CHFCarePathway
InstanceOf: PlanDefinition
Usage: #example
* insert KnowledgeArtifactDefinitionMetadata(CHFCarePathway, PlanDefinition)
* type = $cpg-plan-type#clinical-protocol "Clinical Protocol"
* publisher = "HL7 International - Clinical Decision Support WG"
* description = "Treatment and management care pathway for patients with admitting diagnosis of congestive heart failure"
* action
  * title = "CHF Daily Management"
  * description = "Daily Management strategy for Congestive Heart Failure"
  * code = http://hl7.org/fhir/uv/cpg/CodeSystem/cpg-common-process#guideline-based-care
  * definitionCanonical = "http://hl7.org/fhir/uv/cpg/PlanDefinition/chf-daily-management"
* action
  * title = "CHF Hypervolemia"
  * description = "Hypervolemia strategy for Congestive Heart Failure"
  * code = http://hl7.org/fhir/uv/cpg/CodeSystem/cpg-common-process#guideline-based-care
  * definitionCanonical = "http://hl7.org/fhir/uv/cpg/PlanDefinition/chf-hypervolemia"