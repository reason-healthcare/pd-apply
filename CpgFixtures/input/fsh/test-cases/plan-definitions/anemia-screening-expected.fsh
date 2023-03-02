Instance: AnemiaScreeningExpected
InstanceOf: Bundle
Usage: #example
* type = #collection
* entry
  * fullUrl = "http://apply-processor/RequestGroup/94129eba-6477-47c5-8354-100845c87c7f"
  * resource = AnemiaScreeningRequestGroup

Instance: AnemiaScreeningRequestGroup
InstanceOf: $cpg-strategy
Usage: #inline
* id = "94129eba-6477-47c5-8354-100845c87c7f"
* intent = #proposal
* status = #draft
* subject = Reference(Patient1)
* author = Reference(Practitioner1)
* encounter = Reference(Encounter1)
* instantiatesCanonical = "http://example.com/PlanDefinition/AnemiaScreeningPlan|0.1.0"
* action
  * title = "Order CBC Lab Panel"
  * description = "Order CBC Lab Panel to screen for anemia"
  * code = $cpg-common-process#diagnosic-testing "Conduct Diagnostic Tests"
  * condition
    * kind = #applicability
    * expression
      * language = #text/cql
      * expression = "Needs CBC"
