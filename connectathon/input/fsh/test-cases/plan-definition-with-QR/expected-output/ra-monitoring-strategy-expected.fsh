Instance: RaMonitoringStrategyExpected
InstanceOf: Bundle
Usage: #example
* type = #collection
* entry[0]
  * fullUrl = "http://apply-processor/RequestGroup/RaMonitoringStrategyRequestGroup4"
  * resource = RaMonitoringStrategyRequestGroup4
* entry[+]
  * fullUrl = "http://apply-processor/ServiceRequest/OrderTestingRequest4"
  * resource = OrderTestingRequest4
* entry[+]
  * fullUrl = "http://apply-processor/RequestGroup/RaMonitoringRecommendationRequestGroup4"
  * resource = RaMonitoringRecommendationRequestGroup4
* entry[+]
  * fullUrl = "http://apply-processor/QuestionnaireResponse/OrderTestingRequest1"
  * resource = RaQuestionnaireResponse4

Instance: RaMonitoringStrategyRequestGroup4
InstanceOf: RequestGroup
Usage: #inline
* intent = #proposal
* status = #draft
* subject = Reference(Patient/Patient1)
* instantiatesCanonical = Canonical(RaMonitoringStrategy)

Instance: RaMonitoringRecommendationRequestGroup4
InstanceOf: RequestGroup
Usage: #inline
* intent = #proposal
* status = #draft
* subject = Reference(Patient/Patient1)
* instantiatesCanonical = Canonical(RaMonitoringRecommendation)
* action
  * title = "Order monitoring tests for antirheumatic drug therapy."
  * description = "Order monitoring tests for antirheumatic drug therapy."
  * code = $cpg-common-process#diagnostic-testing
  * type = http://terminology.hl7.org/CodeSystem/action-type#create
  * condition
    * kind = #applicability
    * expression
      * language = #text/cql-identifier
      * expression = "Order monitoring tests if on RA treatment"
  * resource = Reference(OrderTestingRequest4)

Instance: RaQuestionnaireResponse4
InstanceOf: QuestionnaireResponse
Usage: #inline
* insert QuestionnaireResponseMetaData(RaQuestionnaire1)
* subject = Reference(Patient/Patient1)
* authored  = "2023-12-06T11:45:33+11:00"
* author = Reference(Practitioner/Practitioner1)
* item[+]
  * insert QuestionnaireItem(ActiveRaTreatmentFeature, Observation)
  * text = "Measurements and simple assertions"
  * item[+]
    * insert QuestionnaireItem(ActiveRaTreatmentFeature, Observation.valueBoolean)
    * text = "Actual result"
    * answer[+].valueBoolean = false
  * item[+]
    * insert QuestionnaireItem(ActiveRaTreatmentFeature, Observation.status)
    * text = "registered | preliminary | final | amended +"
    * answer[+].valueCoding = http://hl7.org/fhir/observation-status#final
  * item[+]
    * insert QuestionnaireItem(ActiveRaTreatmentFeature, Observation.code)
    * text = "Type of observation (code / type)"
    * answer[+].valueCoding = CaseFeatureCodes#on-ra-treatment
* contained[+] = RaQuestionnaire4

Instance: RaQuestionnaire4
InstanceOf: Questionnaire
Usage: #inline
* insert QuestionnaireMetaData(RaQuestionnaire1)
* extension[+]
  * url = $launch-context
  * extension[0]
    * url = "name"
    * valueCoding = $launch-context-codes#patient
  * extension[+]
    * url = "type"
    * valueCode = #Patient
* item[+]
  * insert QuestionnaireItem(ActiveRaTreatmentFeature, Observation)
  * text = "Measurements and simple assertions"
  * type = #group
  * extension[ItemPopulationContextExtension]
    * valueExpression
      * language = #text/cql-identifier
      * expression = "On RA Treatment"
      * reference = "http://example.org/Library/ActiveRaTreatmentFeatureLogic"
      * name = "ActiveRaTreatmentFeature"
  * item[+]
    * insert QuestionnaireItem(ActiveRaTreatmentFeature, Observation.status)
    * insert HiddenExtension
    * text = "registered | preliminary | final | amended +"
    * required = true
    * type = #choice
    * initial.valueCoding = $codesystem-observation-status#final
  * item[+]
    * insert QuestionnaireItem(ActiveRaTreatmentFeature, Observation.code)
    * insert HiddenExtension
    * text = "Type of observation (code / type)"
    * required = true
    * type = #choice
    * initial.valueCoding = CaseFeatureCodes#on-ra-treatment
  * item[+]
    * insert QuestionnaireItem(ActiveRaTreatmentFeature, Observation.valueBoolean)
    * text = "Actual result"
    * type = #boolean
    * extension[InitialExpressionExtension]
      * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
      * valueExpression
        * language = #text/cql-expression
        * expression = "%ActiveRaTreatmentFeature.value[x]"

Instance: OrderTestingRequest4
InstanceOf: $cpg-servicerequest
Usage: #inline
* status = #draft
* doNotPerform = false
* intent = #proposal
* instantiatesCanonical = Canonical(OrderServiceActivity)
* code = http://hl7.org/fhir/uv/cpg/CodeSystem/cpg-activity-type-cs#order-service "Order a service"
* subject = Reference(Patient1)
* encounter = Reference(Encounter1)
* requester = Reference(Practitioner1)

