Instance: DichargeInstructionsPlan
InstanceOf: $cpg-computableplandefinition
Usage: #example
* insert KnowledgeArtifactDefinitionMetadata(DichargeInstructionsPlan, PlanDefinition)
* description = "Definition of plan to provide patient discharge instructions"
* type = $cpg-plan-type#clinical-protocol "Clinical Protocol"
* action
  * title = "Provide discharge instructions"
  * code = $cpg-common-process#provide-counseling "Provide Counseling"
  * dynamicValue
    * path = "action[0].description"
    * expression
      * language = #text/fhirpath
      * expression = "action.title + ' for ' + %subject.name.given.first()"