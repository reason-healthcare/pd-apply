Instance: ReportFlagExpected
InstanceOf: $cpg-reportflagtask
Usage: #example
* status = #draft
* intent = #proposal
* instantiatesCanonical = "http://example.org/ActivityDefinition/ReportFlagActivity|0.2.0"
* code = http://hl7.org/fhir/uv/cpg/CodeSystem/cpg-activity-type-cs#report-flag "Report a flag"
* for = Reference(Patient1)
* encounter = Reference(Encounter1)
* requester = Reference(Practitioner1)
* input[flag]
  * type = http://hl7.org/fhir/uv/cpg/CodeSystem/cpg-activity-type-cs#report-flag "Report a flag"
  * valueReference = Reference(Flag1)