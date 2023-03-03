Instance: NeurologicalAssessmentExpected
InstanceOf: Bundle
Usage: #example
* type = #collection
* entry
  * fullUrl = "http://apply-processor/RequestGroup/ac140fea-8512-4a5f-83e5-a486df23a57b"
  * resource = NeurologicalAssessmentRequestGroup

Instance: NeurologicalAssessmentRequestGroup
InstanceOf: RequestGroup
Usage: #inline
* intent = #proposal
* status = #draft
* subject = Reference(Patient1)
* author = Reference(Practitioner1)
* encounter = Reference(Encounter1)
* instantiatesCanonical = "http://example.com/PlanDefinition/DiabetesScreeningPlan|0.1.0"
* action
  * title = "Order neurological exam"
  * description = "Recommend neurological screening based on risk factor of Ischemic stroke (disorder)"
