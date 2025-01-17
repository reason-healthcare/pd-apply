Instance: DocumentMedicationExpected
InstanceOf: FixedCPGTaskDocumentMedication
Usage: #example
* status = #draft
* intent = #proposal
* instantiatesCanonical = Canonical(DocumentMedicationActivity|0.2.0)
* code = $cpg-activity-type-cs#document-medication "Document a medication"
* for = Reference(Patient1)
* encounter = Reference(Encounter1)
* requester = Reference(Practitioner1)
* input[medicationStatement]
  * type = $cpg-activity-type-cs#document-medication "Document a medication"
  * valueReference = Reference(PastMedicationRequest)