Instance: cdc2ef13-4319-4e47-bdf8-1e442b91efc4
InstanceOf: Bundle
Usage: #example
* type = #collection
* entry.fullUrl = "http://apply-processor/RequestGroup/ddcaed00-e46d-4cd4-9535-c01c47d27436"
* entry.resource = ddcaed00-e46d-4cd4-9535-c01c47d27436

Instance: ddcaed00-e46d-4cd4-9535-c01c47d27436
InstanceOf: RequestGroup
Usage: #inline
* intent = #proposal
* status = #draft
* subject = Reference(Patient/Patient1)
* subject.type = "Patient"
* instantiatesCanonical = "http://example.com/PlanDefinition/CKDDiagnosisPlan|0.1.0"