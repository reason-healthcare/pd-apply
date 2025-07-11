Instance: ActiveRATreatmentExpected
InstanceOf: Questionnaire
Usage: #example
* insert QuestionnaireMetaData(ActiveRATreatmentExpected)
* extension[LaunchContextExtension]
  * extension[name].valueCoding = $launch-context-codes#patient "Patient"
  * extension[type].valueCode = #Patient
* item[+]
  * insert QuestionnaireItem(ActiveRaTreatmentFeature, Observation)
  * text = "Active RA Treatment Feature"
  * type = #group
  * required = false
  * repeats = true
  * extension[sdc-questionnaire-definitionExtract].extension[definition].valueCanonical = Canonical(ActiveRaTreatmentFeature)
  * extension[sdc-questionnaire-definitionExtractValue][+]
    * extension[definition].valueUri = "http://fhir.org/test/StructureDefinition/ActiveRaTreatmentFeature#Observation.subject"
    * extension[expression].valueExpression
      * language = #text/fhirpath
      * expression = "%resource.subject"
  * extension[sdc-questionnaire-definitionExtractValue][+]
    * extension[definition].valueUri = "http://fhir.org/test/StructureDefinition/ActiveRaTreatmentFeature#Observation.effective[x]"
    * extension[expression].valueExpression
      * language = #text/fhirpath
      * expression = "%resource.authored"
  * extension[ItemPopulationContextExtension].valueExpression
    * language = #text/cql-identifier
    * expression = "On RA Treatment"
    * reference = Canonical(ActiveRaTreatmentFeatureLogic|0.2.0)
    * name = "ActiveRaTreatmentFeature"
  * item[+]
    * insert QuestionnaireItem(ActiveRaTreatmentFeature, Observation.value[x])
    * text = "Actual result"
    * type = #boolean
    * required = false
    * repeats = false
    * extension[InitialExpressionExtension]
      * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
      * valueExpression
        * language = #text/cql-expression
        * expression = "%ActiveRaTreatmentFeature.value"