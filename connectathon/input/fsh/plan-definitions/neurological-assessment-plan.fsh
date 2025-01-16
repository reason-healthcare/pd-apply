Instance: NeurologicalAssessmentPlan
InstanceOf: CPGComputablePlanDefinition
Usage: #example
* insert KnowledgeArtifactDefinitionMetadata(NeurologicalAssessmentPlan, PlanDefinition)
* description = "Definition of a plan to recommend nuerological assessment"
* type = $cpg-plan-type#clinical-protocol "Clinical Protocol"
* library = "http://example.org/Library/NeurologicalAssessmentLibrary|0.2.0"
* action
  * title = "Order neurological exam"
  * type = http://terminology.hl7.org/CodeSystem/action-type#create
  * dynamicValue
    * path = "occurrencePeriod.start"
    * expression
      * language = #text/cql-identifier
      * expression = "Timing of Service"
  * definitionCanonical = "http://example.org/ActivityDefinition/OrderServiceActivity|0.2.0"