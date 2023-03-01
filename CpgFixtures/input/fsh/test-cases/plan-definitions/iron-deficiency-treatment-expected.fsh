Instance: IronDeficiencyTreatmentExpected
InstanceOf: Bundle
Usage: #example
* type = #collection
* entry
  * fullUrl = "http://apply-processor/RequestGroup/3eeaf5f9-8f37-4aba-ab35-5465bdb159fc"
  * resource = IronDeficiencyTreatmentRequestGroup

Instance: IronDeficiencyTreatmentRequestGroup
InstanceOf: RequestGroup
Usage: #inline
* id = "3eeaf5f9-8f37-4aba-ab35-5465bdb159fc"
* intent = #proposal
* status = #draft
* subject = Reference(Patient1)
* author = Reference(Practitioner1)
* encounter = Reference(Encounter1)
* instantiatesCanonical = "http://example.com/PlanDefinition/PrenatalSupplementationPln|0.1.0"