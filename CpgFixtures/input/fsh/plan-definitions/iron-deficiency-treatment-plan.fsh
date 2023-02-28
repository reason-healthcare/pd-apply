Instance: IronDeficiencyTreatmentPlan
InstanceOf: PlanDefinition
Usage: #example
* insert KnowledgeArtifactDefinitionMetadata(PrenatalSupplementationPln, PlanDefinition)
* type = $cpg-plan-type#clinical-protocol "Clinical Protocol"
* library = canonical()
* action
  * title = "Iron Supplementation"
  * textEquivalent = "Daily elemental iron should be prescribed if diagnosed with iron deficiency anemias"
  * trigger
    * type = #named-event
    * name = "anc-contact"
  * condition
    * kind = #applicability
    * expression
      * language = #text/cql
      * expression = "Has Anemia"