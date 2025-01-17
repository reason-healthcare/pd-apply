Instance: CkdPathwayExpected
InstanceOf: Bundle
Usage: #example
* type = #collection
* entry[+]
  * fullUrl = "http://apply-processor/RequestGroup/CkdPathwayRequestGroup"
  * resource = CkdPathwayRequestGroup
* entry[+]
  * fullUrl = "http://apply-processor/RequestGroup/InlineCKDManagementRequestGroup"
  * resource = InlineCKDManagementRequestGroup
* entry[+]
  * fullUrl = "http://apply-processor/RequestGroup/InlineCKDEducationRequestGroup"
  * resource = InlineCKDEducationRequestGroup
* entry[+]
  * fullUrl = "http://apply-processor/RequestGroup/InlineCKDFollowUpRequestGroup"
  * resource = InlineCKDFollowUpRequestGroup
* entry[+]
  * fullUrl = "http://apply-processor/RequestGroup/InlineSendMessageRequestGroup"
  * resource = InlineSendMessageRequestGroup
* entry[+]
  * fullUrl = "http://apply-processor/CommunicationRequest/InlineCommunicationRequest"
  * resource = InlineCommunicationRequest

Instance: CkdPathwayRequestGroup
InstanceOf: RequestGroup
Usage: #inline
* intent = #proposal
* status = #draft
* subject = Reference(Patient/Patient1)
* author = Reference(Practitioner/Practitioner1)
* encounter = Reference(Encounter1)
* instantiatesCanonical = "http://example.org/PlanDefinition/CkdPathway|0.2.0"
* action[+]
  * title = "CKD Management"
  * description = "Definition of plan for new diagnosis of CKD"
  * resource = Reference(RequestGroup/InlineCKDManagementRequestGroup)
* action[+]
  * title = "Greet patient"
  * description = "Greet patient at time of patient portal sign up"
  * resource = Reference(RequestGroup/InlineSendMessageRequestGroup)

Instance: InlineCKDManagementRequestGroup
InstanceOf: RequestGroup
Usage: #inline
* intent = #proposal
* status = #draft
* subject = Reference(Patient1)
* author = Reference(Practitioner1)
* encounter = Reference(Encounter1)
* instantiatesCanonical = "http://example.org/PlanDefinition/CKDManagementPlan|0.2.0"
* action[+]
  * title = "CKD Education"
  * description = "CKD Education at time of diagnosis"
  * code = $cpg-common-process#provide-counseling "Provide Counseling"
  * resource = Reference(InlineCKDEducationRequestGroup)
* action[+]
  * title = "Follow Up Plan"
  * description = "Schedule follow up with nephrologist"
  * code = $cpg-common-process#monitor-and-follow-up-of-patient "Monitor and Follow-up of Patient"
  * resource = Reference(InlineCKDFollowUpRequestGroup)

Instance: InlineCKDEducationRequestGroup
InstanceOf: RequestGroup
Usage: #inline
* intent = #proposal
* status = #draft
* subject = Reference(Patient1)
* author = Reference(Practitioner1)
* encounter = Reference(Encounter1)
* instantiatesCanonical = "http://example.org/PlanDefinition/CKDEducationPlan|0.2.0"
* action
  * title = "Recommend CKD Patient Education"
  * description = "Recommend verbal and written education on disease state at time of CKD diagnosis"
  * code = $cpg-common-process#provide-counseling "Provide Counseling"
  * action
    * title = "Provide CKD Patient Education"
    * description = "Provide verbal and written education on disease state at time of CKD diagnosis"

Instance: InlineCKDFollowUpRequestGroup
InstanceOf: RequestGroup
Usage: #inline
* intent = #proposal
* status = #draft
* subject = Reference(Patient1)
* author = Reference(Practitioner1)
* encounter = Reference(Encounter1)
* instantiatesCanonical = "http://example.org/PlanDefinition/CKDFollowUpPlan|0.2.0"
* action
  * title = "Recommend CKD Follow Up"
  * description = "Recommend CKD Follow Up"
  * code = $cpg-common-process#monitor-and-follow-up-of-patient "Monitor and Follow-up of Patient"
  * action
    * title = "CKD Follow Up Plan"
    * description = "Schedule follow up with a nephrologist at time of CKD diagnosis"

Instance: InlineSendMessageRequestGroup
InstanceOf: RequestGroup
Usage: #inline
* intent = #proposal
* status = #draft
* subject = Reference(Patient1)
* author = Reference(Practitioner1)
* encounter = Reference(Encounter1)
* instantiatesCanonical = "http://example.org/PlanDefinition/SendMessagePlan|0.2.0"
* action
  * title = "Greet the patient"
  * description = "Send a message with a greeting"
  * code = $cpg-common-process#alerts-reminders-education "Alerts Reminders Education"
  * type = http://terminology.hl7.org/CodeSystem/action-type#create
  * resource = Reference(CommunicationRequest/InlineCommunicationRequest)

Instance: InlineCommunicationRequest
InstanceOf: CommunicationRequest
Usage: #inline
* status = #draft
* doNotPerform = false
* subject = Reference(Patient1)
* requester = Reference(Practitioner1)
* encounter = Reference(Encounter1)
* payload.contentString = "Greeting: Hello! Alice Message: Example Activity Definition for a recommendation to send a message Practitioner: Michael"
