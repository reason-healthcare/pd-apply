Profile: DateOfDiagnosisFeature
Parent: Observation
Description: "Case feature definition: patient has active RA Diagnosis"
Title: "Active RA Diagnosis Feature"
* insert CaseFeatureExpressions(DateOfDiagnosisFeatureLogic, On RA Diagnosis)
* status = #final
* code = CaseFeatureCodes#date-of-diagnosis
* value[x] only dateTime
* subject 1..1 MS
  * ^extension[sdc-questionnaire-definitionExtractValue].extension[definition].valueUri = "http://fhir.org/test/StructureDefinition/DateOfDiagnosisFeature#Observation.subject"
  * ^extension[sdc-questionnaire-definitionExtractValue].extension[expression].valueExpression.language = #text/fhirpath
  * ^extension[sdc-questionnaire-definitionExtractValue].extension[expression].valueExpression.expression = "%resource.subject"
* effective[x] 1..1 MS
* effective[x] only dateTime
  * ^extension[sdc-questionnaire-definitionExtractValue].extension[definition].valueUri = "http://fhir.org/test/StructureDefinition/DateOfDiagnosisFeature#Observation.effective[x]"
  * ^extension[sdc-questionnaire-definitionExtractValue].extension[expression].valueExpression.language = #text/fhirpath
  * ^extension[sdc-questionnaire-definitionExtractValue].extension[expression].valueExpression.expression = "%resource.authored"