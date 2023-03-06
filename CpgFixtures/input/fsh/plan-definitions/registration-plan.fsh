Instance: RegistrationPlan
InstanceOf: $cpg-computableplandefinition
Usage: #example
* insert KnowledgeArtifactDefinitionMetadata(RegistrationPlan, $cpg-computableplandefinition)
* type = $cpg-plan-type#clinical-protocol "Clinical Protocol"
* description = "Definition of plan to collect information for patient registration"
* action
  * title = "Registration with questionnaire"
  * code = http://hl7.org/fhir/uv/cpg/CodeSystem/cpg-common-process#registration "Registration"
  * definitionCanonical = "http://example.com/Questionnaire/RegistrationQuestionnaire"