Instance: DischargeInstructionsExpected2
InstanceOf: Bundle
Usage: #example
* type = #collection
* entry[+]
  * fullUrl = "http://apply-processor/RequestGroup/DischargeInstructionsRequestGroup"
  * resource = DischargeInstructionsRequestGroup
* entry[+]
  * fullUrl = "http://apply-processor/CommunicationRequest/DischargeMessageRequest"
  * resource = DischargeMessageRequest

Instance: DischargeInstructionsRequestGroup2
InstanceOf: RequestGroup
Usage: #inline
* intent = #proposal
* status = #draft
* subject = Reference(Patient1)
* author = Reference(Practitioner1)
* encounter = Reference(Encounter1)
* instantiatesCanonical = "http://example.org/PlanDefinition/DischargeInstructionsPlan|0.2.0"
* action
  * title = "Send message with discharge instructions"
  * code = $cpg-common-process#provide-counseling "Provide Counseling"
  * type = http://terminology.hl7.org/CodeSystem/action-type#create
  * resource = Reference(CommunicationRequest/DischargeMessageRequest2)

Instance: DischargeMessageRequest2
InstanceOf: CommunicationRequest
Usage: #inline
* status = #draft
* subject = Reference(Patient1)
* requester = Reference(Practitioner1)
* encounter = Reference(Encounter1)
* doNotPerform = false
* payload
  * contentString = "Send message with discharge instructions for Alice"
