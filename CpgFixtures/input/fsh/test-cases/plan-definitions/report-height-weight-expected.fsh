Instance: ReportHeightWeightExpected
InstanceOf: Bundle
Usage: #example
* type = #collection
* entry
  * fullUrl = "http://apply-processor/RequestGroup/f29076f2-7852-418a-b617-9d6e19e37321"
  * resource = ReportHeightWeightRequestGroup
* entry
  * resource = WeightTargetGoal

Instance: ReportHeightWeightRequestGroup
InstanceOf: $cpg-strategy
Usage: #inline
* intent = #proposal
* status = #draft
* subject = Reference(Patient1)
* author = Reference(Practitioner1)
* encounter = Reference(Encounter1)
* instantiatesCanonical = "http://example.com/PlanDefinition/ReportWeightHeightPlan|0.1.0"
* extension
  * url = "http://hl7.org/fhir/StructureDefinition/resource-pertainsToGoal"
  * valueReference = Reference(WeightTargetGoal)
* action
  * title = "Report Weight"
  * description = "Report weight metric upon admission"
  * code = http://hl7.org/fhir/uv/cpg/CodeSystem/cpg-common-process#diagnostic-testing
* action
  * title = "Report Height"
  * description = "Report height metric upon admission"
  * code = http://hl7.org/fhir/uv/cpg/CodeSystem/cpg-common-process#diagnostic-testing


Instance: WeightTargetGoal
InstanceOf: $cpg-goal
Usage: #inline
* id = "01b0a488-513b-41f3-a4e5-02d782d79bef"
* subject = Reference(Patient1)
* lifecycleStatus = #planned
* description
  * text = "Weight target"
* startCodeableConcept = http://snomed.info/sct#32485007 "Admission to hospital"