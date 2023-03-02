Instance: SendMessagePlanExpected
InstanceOf: Bundle
Usage: #example
* type = #collection
* entry[+]
  * fullUrl = "http://apply-processor/RequestGroup/3cb6a53d-a977-4c08-b6f8-2086658c8d46"
  * resource = SendMessageRequestGroup
* entry[+]
  * fullUrl = "http://apply-processor/CommunicationRequest/5fd4b96a-b1dd-4dc6-9506-8374ed6c1ee0"
  * resource = SendMessageRequest

Instance: SendMessageRequestGroup
InstanceOf: $cpg-strategy
Usage: #inline
* id = "3cb6a53d-a977-4c08-b6f8-2086658c8d46"
* intent = #proposal
* status = #draft
* subject = Reference(Patient1)
* author = Reference(Practitioner1)
* encounter = Reference(Encounter1)
* instantiatesCanonical = "http://example.com/PlanDefinition/SendMessagePlan|0.1.0"
* action
  * title = "Greet the patient" //is this considered an AD override of communicationActivity.title?
  //action.type is not supported for strategy
  * description = "Send a message with a greeting"
  * code = $cpg-common-process#alerts-reminders-education
  * resource = Reference(SendMessageRequest)

Instance: SendMessageRequest
InstanceOf: $cpg-communicationrequest
Usage: #inline
* id = "5fd4b96a-b1dd-4dc6-9506-8374ed6c1ee0"
* status = #draft
//* intent = #option     not supported for communication request
* doNotPerform = false
* subject = Reference(Patient1)
* encounter = Reference(Encounter1)
* requester = Reference(Practitioner1)
* payload
  * contentString = "Greeting: Hello! Alice Message: Example Activity Definition for a recommendation to send a message Practitioner: Michael"