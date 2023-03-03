Instance: DischargeInstructionsExpected
InstanceOf: Bundle
Usage: #example
* type = #collection
* entry
  * fullUrl = "http://apply-processor/RequestGroup/606aa765-e056-47e8-9fe2-46a3b6ae5622"
  * resource = DischargeInstructionsRequestGroup

Instance: DischargeInstructionsRequestGroup
InstanceOf: RequestGroup
Usage: #inline
* id = "606aa765-e056-47e8-9fe2-46a3b6ae5622"
* intent = #proposal
* status = #draft
* subject = Reference(Patient1)
* author = Reference(Practitioner1)
* encounter = Reference(Encounter1)
* instantiatesCanonical = "http://example.com/PlanDefinition/DichargeInstructionsPlan|0.1.0"
* action
  * title = "Provide discharge instructions"
  * description = "Provide discharge instructions for Alice"