Instance: CKDEducationExpected
InstanceOf: Bundle
Usage: #example
* type = #collection
* entry
  * fullUrl = "http://apply-processor/RequestGroup/ddcaed00-e46d-4cd4-9535-c01c47d27436"
  * resource = CKDEducationRequestGroup

Instance: CKDEducationRequestGroup
InstanceOf: $cpg-strategy
Usage: #inline
* intent = #proposal
* status = #draft
* subject = Reference(Patient1)
* author = Reference(Practitioner1)
* encounter = Reference(Encounter1)
* instantiatesCanonical = "http://example.com/PlanDefinition/CKDEducationPlan|0.1.0"
* action
  * title = "CKD Pateint Education"
  * description = "Provide verbal and written education on disease state at time of CKD diagnosis"
  * code = $cpg-common-process#provide-counseling "Provide Counseling"