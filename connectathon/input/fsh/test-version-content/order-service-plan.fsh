Instance: OrderServicePlan
InstanceOf: cpg-computableplandefinition
Usage: #example
* url = "http://example.org/PlanDefinition/OrderServicePlan"
* version = "0.2.0"
* name = "OrderServicePlan"
* title = "PlanDefinition OrderServicePlan"
* type = http://terminology.hl7.org/CodeSystem/plan-definition-type#eca-rule
* status = #draft
* experimental = true
* date = "2025-01-16T17:40:36-05:00"
* publisher = "Example Publisher"
* description = "Definition of plan recommendation to order service"
* action
  * title = "Order Service"
  * description = "Order Service"
  * code = $cpg-common-process#guideline-based-care "Guideline-based Care"
  * type = http://terminology.hl7.org/CodeSystem/action-type#create
  * definitionCanonical = "http://example.org/ActivityDefinition/OrderServiceActivityVersionTest"