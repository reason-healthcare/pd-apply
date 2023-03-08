Instance: DischargeInstructionsExpected
InstanceOf: Bundle
Usage: #example
* type = #collection
* entry
  * fullUrl = "http://apply-processor/RequestGroup/DischargeInstructionsRequestGroup"
  * resource = DischargeInstructionsRequestGroup

Instance: DischargeInstructionsRequestGroup
InstanceOf: $cpg-strategy
Usage: #inline
* intent = #proposal
* status = #draft
* subject = Reference(Patient1)
* author = Reference(Practitioner1)
* encounter = Reference(Encounter1)
* instantiatesCanonical = "http://example.com/PlanDefinition/DichargeInstructionsPlan|0.1.0"
* action
  * title = "Provide discharge instructions"
  * code = $cpg-common-process#provide-counseling "Provide Counseling"
  * description = "Provide discharge instructions for Alice"