Instance: IschemicStrokePathway
InstanceOf: $cpg-computableplandefinition
Usage: #example
* insert KnowledgeArtifactDefinitionMetadata(IschemicStrokePathway, PlanDefinition)
* description = "Plan to treat patient with ischemic stroke"
* type = $cpg-plan-type#clinical-protocol "Clinical Protocol"
* library = "http://example.com/Library/IschemicStrokeLibrary"
* action
  * title = "Generate Report"
  * dynamicValue
    * path = "%action.description"
    * expression
      * language = #text/fhirpath
      * expression = "description + ' for ' + %subject.name.given.first()"
  * definitionCanonical = "http://example.com/ActivityDefinition/GenerateReportActivity"
* action
  * definitionCanonical = "http://example.com/PlanDefinition/IschemicStrokePlan"
  * action
    * condition
      * kind = #applicability
      * expression
        * language = #text/cql-identifier
        * expression = "Had Ischemic Stroke"
    * dynamicValue
      * path = "reasonReference"
      * expression
        * language = #text/cql-identifier
        * expression = "Condition Reference"
    * definitionCanonical = "http://example.com/PlanDefinition/NeurologicalAssessmentPlan"