Profile: RAStatusFeature
Parent: Observation
Description: "Case feature definition: patient has active RA Diagnosis"
Title: "Date of Diagnosis Feature"
* insert CaseFeatureExpressions(RAStatusFeatureLogic, RA Status)
* status = #final
* code = CaseFeatureCodes#ra-status
* value[x] only CodeableConcept
* valueCodeableConcept from DiagnosisStatusVS (required)
* subject 1..1 MS
  * ^extension[sdc-questionnaire-definitionExtractValue].extension[definition].valueUri = "http://fhir.org/test/StructureDefinition/RAStatusFeature#Observation.subject"
  * ^extension[sdc-questionnaire-definitionExtractValue].extension[expression].valueExpression.language = #text/fhirpath
  * ^extension[sdc-questionnaire-definitionExtractValue].extension[expression].valueExpression.expression = "%resource.subject"
* effective[x] 1..1 MS
* effective[x] only dateTime
  * ^extension[sdc-questionnaire-definitionExtractValue].extension[definition].valueUri = "http://fhir.org/test/StructureDefinition/RAStatusFeature#Observation.effective[x]"
  * ^extension[sdc-questionnaire-definitionExtractValue].extension[expression].valueExpression.language = #text/fhirpath
  * ^extension[sdc-questionnaire-definitionExtractValue].extension[expression].valueExpression.expression = "%resource.authored"