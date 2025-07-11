Instance: RaMonitoringRecommendation1Expected
InstanceOf: Bundle
Usage: #example
* type = #collection
* insert BundleEntry(RaMonitoringRecommendationRequestGroup1, RequestGroup)
* insert BundleEntry(RaQuestionnaireResponse1, QuestionnaireResponse)
* insert BundleEntry(ActiveRATreatmentExpected, Questionnaire)
* insert BundleEntry(OrderTestingRequest1, ServiceRequest)

Instance: RaMonitoringRecommendationRequestGroup1
InstanceOf: RequestGroup
Usage: #inline
* intent = #proposal
* status = #draft
* subject = Reference(Patient/Patient2)
* instantiatesCanonical = Canonical(RaMonitoringRecommendation)
* action
  * title = "Order monitoring tests for antirheumatic drug therapy."
  * description = "Order monitoring tests for antirheumatic drug therapy."
  * code = $cpg-common-process#guideline-based-care
  * type = $action-type#create
  * condition
    * kind = #applicability
    * expression
      * language = #text/cql-identifier
      * expression = "Order monitoring tests if on RA treatment"
  * resource = Reference(OrderTestingRequest1)

Instance: RaQuestionnaireResponse1
InstanceOf: QuestionnaireResponse
Usage: #inline
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

Instance: OrderTestingRequest1
InstanceOf: cpg-servicerequest
Usage: #inline
* status = #draft
* doNotPerform = false
* intent = #proposal
* instantiatesCanonical = Canonical(OrderServiceActivity)
* code = $cpg-activity-type-cs#order-service "Order a service"
* subject = Reference(Patient2)
* encounter = Reference(Encounter2)
* requester = Reference(Practitioner2)
