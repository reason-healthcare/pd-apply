Instance: RaMonitoringRecommendation2Expected
InstanceOf: Bundle
Usage: #example
* type = #collection
* insert BundleEntry(RaMonitoringRecommendationRequestGroup2, RequestGroup)
* insert BundleEntry(RaQuestionnaireResponse2, QuestionnaireResponse)
* insert BundleEntry(ActiveRATreatmentExpected, Questionnaire)
* insert BundleEntry(ActiveRaTreatmentFeature2, Observation)

Instance: RaMonitoringRecommendationRequestGroup2
InstanceOf: RequestGroup
Usage: #inline
* intent = #proposal
* status = #draft
* subject = Reference(Patient/Patient1)
* instantiatesCanonical = Canonical(RaMonitoringRecommendation)

Instance: RaQuestionnaireResponse2
InstanceOf: QuestionnaireResponse
Usage: #example
* insert QuestionnaireResponseMetaData(ActiveRATreatmentExpected)
* subject = Reference(Patient/Patient2)
* authored  = "2025-01-01T11:45:33+11:00"
* author = Reference(Practitioner/Practitioner2)
* item[+]
  * insert QuestionnaireItem(ActiveRaTreatmentFeature, Observation)
  * text = "Active RA Treatment Feature"
  * item[+]
    * insert QuestionnaireItem(ActiveRaTreatmentFeature, Observation.code)
    * text = "Type of observation (code / type)"
    * answer[+].valueCoding = CaseFeatureCodes#on-ra-treatment


Instance: ActiveRaTreatmentFeature2
InstanceOf: ActiveRaTreatmentFeature
Usage: #inline
* derivedFrom = Reference(QuestionnaireResponse/RaQuestionnaireResponse2)
* status = #final
* code = CaseFeatureCodes#on-ra-treatment
* subject = Reference(Patient/Patient2)
* valueBoolean = false
* effectiveDateTime = "2025-01-01T11:45:33+11:00"
