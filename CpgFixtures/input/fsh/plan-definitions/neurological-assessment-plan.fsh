Instance: NeurologicalAssessmentPlan
InstanceOf: $cpg-computableplandefinition
Usage: #example
* insert KnowledgeArtifactDefinitionMetadata(DiabetesScreeningPlan, PlanDefinition)
* description = "Definition of a plan to recommend nuerological assessment"
* type = $cpg-plan-type#clinical-protocol "Clinical Protocol"
* action
  * title = "Order neurological exam"
  * dynamicValue
    * path = "action.description"
    * expression
      * language = #text/cql-identifier
      * expression = "Neurological Impairment Risk Factors"