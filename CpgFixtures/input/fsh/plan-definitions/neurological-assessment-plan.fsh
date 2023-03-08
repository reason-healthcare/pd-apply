Instance: NeurologicalAssessmentPlan
InstanceOf: $cpg-computableplandefinition
Usage: #example
* insert KnowledgeArtifactDefinitionMetadata(DiabetesScreeningPlan, PlanDefinition)
* description = "Definition of a plan to recommend nuerological assessment"
* type = $cpg-plan-type#clinical-protocol "Clinical Protocol"
* library = "http://example.com/Library/NeurologicalAssessmentLibrary"
* action
  * title = "Order neurological exam"
  * code = $cpg-common-process#diagnostic-testing "Conduct Diagnostic Tests"
  * dynamicValue
    * path = "action[0].description"   //would this be %action.description or action[0].description
    * expression
      * language = #text/cql-identifier
      * expression = "Neurological Impairment Risk Factors"