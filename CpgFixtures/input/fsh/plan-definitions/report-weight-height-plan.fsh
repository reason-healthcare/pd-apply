Instance: ReportWeightHeightPlan
InstanceOf: $cpg-computableplandefinition
Usage: #example
* insert KnowledgeArtifactDefinitionMetadata(ReportWeightHeightPlan, PlanDefinition)
* type = $cpg-plan-type#clinical-protocol "Clinical Protocol"
* description = "Plan to report weight and height of patient upon admission"
* goal
  * description
    * text = "Weight target"
  * start = http://snomed.info/sct#32485007 "Admission to hospital"
* action
  * title = "Report Weight"
  * description = "Report weight metric upon admission"
  * code = http://hl7.org/fhir/uv/cpg/CodeSystem/cpg-common-process#diagnostic-testing
* action
  * title = "Report Height"
  * description = "Report height metric upon admission"
  * code = http://hl7.org/fhir/uv/cpg/CodeSystem/cpg-common-process#diagnostic-testing