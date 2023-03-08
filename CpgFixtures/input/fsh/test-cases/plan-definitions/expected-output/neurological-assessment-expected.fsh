Instance: NeurologicalAssessmentExpected
InstanceOf: Bundle
Usage: #example
* type = #collection
* entry
  * fullUrl = "http://apply-processor/RequestGroup/NeurologicalAssessmentRequestGroup"
  * resource = NeurologicalAssessmentRequestGroup

Instance: NeurologicalAssessmentRequestGroup
InstanceOf: $cpg-strategy
Usage: #inline
* intent = #proposal
* status = #draft
* subject = Reference(Patient1)
* author = Reference(Practitioner1)
* encounter = Reference(Encounter1)
* instantiatesCanonical = "http://example.com/PlanDefinition/DiabetesScreeningPlan|0.1.0"
* action
  * title = "Order neurological exam"
  * code = $cpg-common-process#diagnostic-testing "Conduct Diagnostic Tests"
  * description = "Recommend neurological screening based on risk factor of Ischemic stroke (disorder)"
