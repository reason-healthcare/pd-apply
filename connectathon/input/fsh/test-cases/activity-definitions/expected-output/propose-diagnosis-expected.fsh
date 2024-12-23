Instance: ProposeDiagnosisExpected
InstanceOf: $cpg-proposediagnosistask
Usage: #example
* status = #draft
* intent = #proposal
* instantiatesCanonical = "http://example.org/ActivityDefinition/ProposeDiagnosisActivity|0.1.0"
* code = $cpg-activity-type-cs#propose-diagnosis "Propose a diagnosis"
* for = Reference(Patient1)
* encounter = Reference(Encounter1)
* requester = Reference(Practitioner1)
* input[diagnosis]
  * type = $cpg-activity-type-cs#propose-diagnosis "Propose a diagnosis"
  * valueReference =  Reference(Condition1)