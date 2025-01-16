Instance: AnemiaScreeningExpected
InstanceOf: Bundle
Usage: #example
* type = #collection
* entry
  * fullUrl = "http://apply-processor/RequestGroup/AnemiaScreeningRequestGroup"
  * resource = AnemiaScreeningRequestGroup

Instance: AnemiaScreeningRequestGroup
InstanceOf: RequestGroup
Usage: #inline
* intent = #proposal
* status = #draft
* subject = Reference(Patient1)
* author = Reference(Practitioner1)
* encounter = Reference(Encounter1)
* instantiatesCanonical = "http://example.org/PlanDefinition/AnemiaScreeningPlan|0.2.0"
* action[+]
  * title = "Recommend CBC Lab Panel"
  * description = "Recommend CBC Lab Panel"
  * code = $cpg-common-process#diagnostic-testing "Conduct Diagnostic Tests"
  * condition
    * kind = #applicability
    * expression
      * language = #text/cql-identifier
      * expression = "Needs CBC"
  * action[+]
    * title = "Order CBC Lab Panel"
    * description = "Order CBC Lab Panel to screen for anemia"
