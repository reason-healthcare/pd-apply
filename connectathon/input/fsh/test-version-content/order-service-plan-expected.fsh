Instance: OrderServicePlanExpected
InstanceOf: Bundle
Usage: #example
* type = #collection
* entry[0]
  * fullUrl = "http://apply-processor/RequestGroup/OrderServiceRequestGroup"
  * resource = OrderServiceRequestGroup
* entry[+]
  * fullUrl = "http://apply-processor/ServiceRequest/OrderServiceVersionTestExpected"
  * resource = OrderServiceVersionTestExpected

Instance: OrderServiceRequestGroup
InstanceOf: RequestGroup
Usage: #inline
* instantiatesCanonical = "http://example.org/PlanDefinition/OrderServicePlan|0.2.0"
* status = #draft
* intent = #proposal
* subject = Reference(Patient/Patient1)
* encounter = Reference(Encounter/Encounter1)
* author = Reference(Practitioner/Practitioner1)
* action
  * title = "Order Service"
  * description = "Order Service"
  * code = $cpg-common-process#guideline-based-care "Guideline-based Care"
  * type = http://terminology.hl7.org/CodeSystem/action-type#create
  * resource = Reference(ServiceRequest/OrderServiceVersionTestExpected)

Instance: OrderServiceVersionTestExpected
InstanceOf: ServiceRequest
Usage: #inline
* instantiatesCanonical = "http://example.org/ActivityDefinition/OrderServiceActivityVersionTest|0.2.0"
* status = #draft
* intent = #proposal
* doNotPerform = true
* code = $cpg-activity-type-cs#order-service "Order a service"
* subject = Reference(Patient/Patient1)
* encounter = Reference(Encounter/Encounter1)
* requester = Reference(Practitioner/Practitioner1)