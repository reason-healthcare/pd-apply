Instance: RegistrationExpected
InstanceOf: Bundle
Usage: #example
* type = #collection
* entry
  * fullUrl = "http://apply-processor/RequestGroup/RegistrationRequestGroup"
  * resource = RegistrationRequestGroup

Instance: RegistrationRequestGroup
InstanceOf: $cpg-strategy
Usage: #inline
* intent = #proposal
* status = #draft
* subject = Reference(Patient1)
* author = Reference(Author1)
* encounter = Reference(Encounter1)
* instantiatesCanonical = "http://example.com/$cpg-computableplandefinition/RegistrationPlan|0.1.0"
* action
  * title = "Registration with questionnaire"
  * description = "Register patient using questionnaire"
  * code = $cpg-common-process#registration "Registration"
  * resource = Reference(RegistrationQuestionnaire)