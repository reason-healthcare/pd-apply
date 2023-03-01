Instance: IschemicStrokeExpected
InstanceOf: Bundle
Usage: #example
* type = #collection
* entry
  * fullUrl = "http://apply-processor/RequestGroup/06e0c0e0-6bca-49d1-8f87-b905d30db141"
  * resource = Inline-Instance-for-0e12e8ec-f8ad-4733-afa6-978f42e7047a-1

Instance: IschemicStrokeRequestGroup
InstanceOf: RequestGroup
Usage: #inline
* id = "06e0c0e0-6bca-49d1-8f87-b905d30db141"
* intent = #proposal
* status = #draft
* subject = Reference(Patient1)
* author = Reference(Practitioner1)
* encounter = Reference(Encounter1)
* instantiatesCanonical = "http://example.com/PlanDefinition/IschemicStrokePlan|0.1.0"
* action
  * title = "Ischemic Stroke Treatment"
  * textEquivalent = "Administer TPA intravenously"
  * condition
    * kind = #applicability
    * expression
      * language = #text/cql
      * expression = "Had Ischemic Stroke"