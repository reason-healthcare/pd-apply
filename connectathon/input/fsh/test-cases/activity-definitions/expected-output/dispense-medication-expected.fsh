Instance: DispenseMedicationExpected
InstanceOf: FixedCPGTaskDispenseMedication
Usage: #example
* status = #draft
* intent = #proposal
* instantiatesCanonical = "http://example.org/ActivityDefinition/DispenseMedicationActivity|0.2.0"
* code = $cpg-activity-type-cs#dispense-medication "Dispense a Medication"
* for = Reference(Patient1)
* encounter = Reference(Encounter1)
* requester = Reference(Practitioner1)
* input[medicationDispense]
  * type = $cpg-activity-type-cs#dispense-medication "Dispense a Medication"
  * valueReference = Reference(PastMedicationRequest)