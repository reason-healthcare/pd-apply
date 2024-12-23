Instance: DischargeInstructionsPlan
InstanceOf: CPGComputablePlanDefinition
Usage: #example
* insert KnowledgeArtifactDefinitionMetadata(DischargeInstructionsPlan, PlanDefinition)
* description = "Provide patient discharge instructions"
* type = $cpg-plan-type#clinical-protocol "Clinical Protocol"
* action
  * title = "Send message with discharge instructions"
  * type = http://terminology.hl7.org/CodeSystem/action-type#create
  * code = $cpg-common-process#provide-counseling "Provide Counseling"
  * dynamicValue
    * path = "payload[0].contentString"
    * expression
      * language = #text/fhirpath
      * expression = "%context.description + ' for ' + %subject.name.given.first()"
  * definitionCanonical = "http://example.org/ActivityDefinition/SendMessageActivity"