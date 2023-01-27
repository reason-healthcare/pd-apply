Instance: DocumentMedicationActivity
InstanceOf: $cpg-documentmedicationactivity
Usage: #example
* insert KnowledgeArtifactDefinitionMetadata(DocumentMedicationActivity, ActivityDefinition)
* description = "Example Activity Definition for a recommendation to document a medication"
* kind = #Task
* profile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-dispensemedicationtask" //Sushi error when using StuctureDefinitioncpg-documentmedicationtask 'a different canonical is already assigned: "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-dispensemedicationtask"'
* code = $cpg-activity-type#document-medication "Document a medication"
* intent = #proposal
* doNotPerform = false
* dynamicValue[+]
  * path = "input[0].type"
  * expression
    * language = #text/fhirpath
    * expression = "code"
* dynamicValue[+]
  * path = "input[0].value"
  * expression
    * language = #text/cql-indentifier
    * expression = "Medication Proposal Reference"
    * reference = Canonical(DocumentMedicationLibrary)