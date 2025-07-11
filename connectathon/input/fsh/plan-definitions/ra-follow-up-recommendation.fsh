Instance: RaFollowUpRecommendation
InstanceOf: CPGRecommendationDefinition
Usage: #definition
Title: "RA Monitoring Recommendation"
* insert DefinitionMetadata(RaFollowUpRecommendation, PlanDefinition)
* description = "Follow up for antirheumatic drug therapy for Ra."
* library = Canonical(RaMonitoringRecommendationLibrary|0.2.0)
* action[+]
  * title = "Recommend follow up for diagnosis of RA within one month"
  * description = "Recommend follow up for diagnosis of RA within one month"
  * condition
    * kind = #applicability
    * expression
      * language = #text/cql-identifier
      * expression = "Send message to remind patient of follow up for RA Diagnosis within one month of dagnosis"
  * input[+]
    * type = #Observation
    * profile = Canonical(DateOfDiagnosisFeature)
  * code = $cpg-common-process#guideline-based-care
  * definitionCanonical = Canonical(SendMessageActivity|0.2.0)
* action[+]
  * title = "Order monitoring tests for antirheumatic drug therapy."
  * description = "Order monitoring tests for antirheumatic drug therapy."
  * condition
    * kind = #applicability
    * expression
      * language = #text/cql-identifier
      * expression = "Order monitoring tests if on RA treatment"
  * input[+]
    * type = #Observation
    * profile = Canonical(ActiveRaTreatmentFeature)
  * code = $cpg-common-process#guideline-based-care
  * definitionCanonical = Canonical(OrderServiceActivity|0.2.0)
