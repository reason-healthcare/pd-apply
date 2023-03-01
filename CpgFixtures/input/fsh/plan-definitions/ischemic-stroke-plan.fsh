Instance: IschemicStrokePlan
InstanceOf: $cpg-computableplandefinition
Usage: #example
* insert KnowledgeArtifactDefinitionMetadata(IschemicStrokePlan, PlanDefinition)
* description = "Definition of a plan to administer TPA if patient had ischemic stroke"
* type = $cpg-plan-type#clinical-protocol "Clinical Protocol"
* library = "http://example.com/Library/IronDeficiencyTreatmentLibrary"
* action
  * title = "Ischemic Stroke Treatment"
  * textEquivalent = "Administer TPA intravenously"
  * condition
    * kind = #applicability
    * expression
      * language = #text/cql
      * expression = "Had Ischemic Stroke"