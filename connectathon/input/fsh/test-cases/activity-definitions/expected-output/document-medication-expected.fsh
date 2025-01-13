Instance: DocumentMedicationExpected
InstanceOf: FixedCPGTaskDocumentMedication
Usage: #example
* status = #draft
* intent = #proposal
* instantiatesCanonical = "http://example.org/ActivityDefinition/DocumentMedicationActivity|0.2.0"
* code = $cpg-activity-type-cs#document-medication "Document a medication"
* for = Reference(Patient1)
* encounter = Reference(Encounter1)
* requester = Reference(Practitioner1)
* input[medicationStatement]
  * type = http://hl7.org/fhir/uv/cpg/CodeSystem/cpg-activity-type-cs#document-medication "Document a medication"
  * valueReference = Reference(PastMedicationRequest)