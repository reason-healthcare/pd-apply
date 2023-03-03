Instance: RegistrationExpected
InstanceOf: Bundle
Usage: #example
* type = #collection
* entry
  * fullUrl = "http://apply-processor/RequestGroup/3552c8f7-e925-4c97-9c54-54d89354a2ae"
  * resource = RegistrationRequestGroup

Instance: RegistrationRequestGroup
InstanceOf: RequestGroup
Usage: #inline
* id = "3552c8f7-e925-4c97-9c54-54d89354a2ae"
* intent = #proposal
* status = #draft
* subject = Reference(Patient1)
* author = Reference(Author1)
* encounter = Reference(Encounter1)
* instantiatesCanonical = "http://example.com/$cpg-computableplandefinition/RegistrationPlan|0.1.0"
* action
  * title = "Registration with questionnaire"
  * code = http://hl7.org/fhir/uv/cpg/CodeSystem/cpg-common-process#registration "Registration"
  * resource = Reference($cpg-common-identity-questionnaire)