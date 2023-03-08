Instance: IschemicStrokeExpected
InstanceOf: Bundle
Usage: #example
* type = #collection
* entry
  * fullUrl = "http://apply-processor/RequestGroup/IschemicStrokeRequestGroup"
  * resource = IschemicStrokeRequestGroup

Instance: IschemicStrokeRequestGroup
InstanceOf: $cpg-strategy
Usage: #inline
* intent = #proposal
* status = #draft
* subject = Reference(Patient1)
* author = Reference(Practitioner1)
* encounter = Reference(Encounter1)
* instantiatesCanonical = "http://example.com/PlanDefinition/IschemicStrokePlan|0.1.0"
* action
  * title = "Ischemic Stroke Treatment"
  * description = "Recommendation to administer TPA if patient had Ischemic Stroke"
  * textEquivalent = "Administer TPA intravenously"
  * code = $cpg-common-process#dispense-medications "Dispense Medications"
  * condition
    * kind = #applicability
    * expression
      * language = #text/cql-identifier
      * expression = "Had Ischemic Stroke"