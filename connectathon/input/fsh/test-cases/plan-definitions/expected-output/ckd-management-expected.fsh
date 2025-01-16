Instance: CKDManagementExpected
InstanceOf: Bundle
Usage: #example
* type = #collection
* entry[+]
  * fullUrl = "http://apply-processor/RequestGroup/CKDManagementRequestGroup"
  * resource = CKDManagementRequestGroup
* entry[+]
  * fullUrl = "http://apply-processor/RequestGroup/CKDEducationRequestGroup2"
  * resource = CKDEducationRequestGroup2
* entry[+]
  * fullUrl = "http://apply-processor/RequestGroup/CKDFollowUpRequestGroup"
  * resource = CKDFollowUpRequestGroup

Instance: CKDManagementRequestGroup
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
  * resource = Reference(CKDEducationRequestGroup2)
* action[+]
  * title = "Follow Up Plan"
  * description = "Schedule follow up with nephrologist"
  * code = $cpg-common-process#monitor-and-follow-up-of-patient "Monitor and Follow-up of Patient"
  * resource = Reference(CKDFollowUpRequestGroup)

Instance: CKDEducationRequestGroup2
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

Instance: CKDFollowUpRequestGroup
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
