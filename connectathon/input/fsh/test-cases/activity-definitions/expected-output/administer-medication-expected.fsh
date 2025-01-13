Instance: AdministerMedicationExpected
InstanceOf: FixedCPGTaskAdministerMedication
Usage: #example
* status = #draft
* intent = #proposal
* instantiatesCanonical = "http://example.org/ActivityDefinition/AdministerMedicationActivity|0.2.0"
* code = $cpg-activity-type-cs#administer-medication "Administer a medication"
* for = Reference(Patient1)
* encounter = Reference(Encounter1)
* requester = Reference(Practitioner1)
* input[medicationAdministration]
  * type = $cpg-activity-type-cs#administer-medication "Administer a medication"
  * valueReference = Reference(PastMedicationRequest)
