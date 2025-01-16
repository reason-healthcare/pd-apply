Instance: DispenseMedicationActivity
InstanceOf: $cpg-dispensemedicationactivity
Usage: #example
* insert KnowledgeArtifactDefinitionMetadata(DispenseMedicationActivity, ActivityDefinition)
* description = "Dispense medication activity"
* kind = #Task
* profile = $cpg-dispensemedicationtask
* code = $cpg-activity-type-cs#dispense-medication "Dispense a Medication"
* doNotPerform = false
* intent = #proposal
* dynamicValue[+]
  * path = "input[0].type"
  * expression
    * language = #text/fhirpath
    * expression = "%context.code"
* dynamicValue[+]
  * path = "input[0].valueReference"
  * expression
    * language = #text/cql-identifier
    * expression = "Medication Proposal Reference"
    * reference = Canonical(DispenseMedicationLibrary|0.2.0)