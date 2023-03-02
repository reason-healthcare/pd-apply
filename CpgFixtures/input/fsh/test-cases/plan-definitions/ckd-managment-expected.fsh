Instance: CKDManagementExpected
InstanceOf: Bundle
Usage: #example
* type = #collection
* entry[+]
  * fullUrl = "http://apply-processor/RequestGroup/617748bf-c3dc-48a9-801e-4e363633539a"
  * resource = CKDManagementRequestGroup
* entry[+]
  * fullUrl = "http://example.com/RequestGroup/InlineCKDEducationRequestGroup"
  * resource = InlineCKDEducationRequestGroup
* entry[+]
  * fullUrl = "http://example.com/RequestGroup/CKDFollowUpRequestGroup"
  * resource = CKDFollowUpRequestGroup

Instance: CKDManagementRequestGroup
InstanceOf: $cpg-strategy
Usage: #inline
* id = "617748bf-c3dc-48a9-801e-4e363633539a"
* intent = #proposal
* status = #draft
* subject = Reference(Patient/undefined)
* author = Reference(Practitioner1)
* encounter = Reference(Encounter1)
* instantiatesCanonical = "http://example.com/PlanDefinition/CKDManagementPlan|0.1.0"
* action[+]
  * title = "CKD Education"
  * description = "CKD Education at time of diagnosis"
  * code = $cpg-common-process#provide-counseling "Provide Counseling"
  * resource = Reference(InlineCKDEducationRequestGroup)
* action[+]
  * title = "Follow Up Plan"
  * description = "Schedule follow up with nephrologist"
  * code = $cpg-common-process#monitor-and-follow-up-of-patient "Monitor and Follow-up of Patient"
  * resource = Reference(CKDFollowUpRequestGroup)

Instance: InlineCKDEducationRequestGroup
InstanceOf: $cpg-strategy
Usage: #inline
* intent = #option
* status = #draft
* subject = Reference(Patient1)
* author = Reference(Practitioner1)
* encounter = Reference(Encounter1)
* instantiatesCanonical = "http://example.com/PlanDefinition/CKDEducationPlan|0.1.0"
* action
  * title = "CKD Pateint Education"
  * description = "Provide verbal and written education on disease state at time of CKD diagnosis"
  * code = $cpg-common-process#monitor-and-follow-up-of-patient "Monitor and Follow-up of Patient"


Instance: CKDFollowUpRequestGroup
InstanceOf: $cpg-strategy
Usage: #inline
* intent = #option
* status = #draft
* subject = Reference(Patient1)
* author = Reference(Practitioner1)
* encounter = Reference(Encounter1)
* instantiatesCanonical = "http://example.com/PlanDefinition/CKDFollowUpPlan|0.1.0"
* action
  * title = "CKD Pateint Education"
  * description = "Provide verbal and written education on disease state at time of CKD diagnosis"
  * code = $cpg-common-process#monitor-and-follow-up-of-patient "Monitor and Follow-up of Patient"
