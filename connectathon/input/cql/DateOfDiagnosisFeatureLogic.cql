library ActiveRaTreatmentFeatureLogic version '0.2.0'

using FHIR version '4.0.1'

include FHIRHelpers version '0.2.0'

codesystem "CaseFeatureCodes": 'http://example.org/CodeSystem/CaseFeatureCodes'
code "Date of Diagnosis Feature": 'date-of-diagnosis' from "CaseFeatureCodes"

codesystem "sct": 'http://snomed.info/sct'
code "RA Condition":
  '69896004' from "sct" display "Rheumatoid arthritis (disorder)"

context Patient

define "RA Diagnosis":
  [Condition: "RA Condition"] RaDiagnosis

 define "Date of RA Diagnosis":
  First("RA Diagnosis").onset


/**
 * @description
 * Inference if the patient is taking drug with a RA Treatment code
 */
define "RA Diagnosis Inferred":
  if exists("RA Diagnosis") then
    Observation {
      meta: Meta {
        profile: {
          canonical { value: 'http://example.org/StructureDefinition/DateOfDiagnosisFeature' }
        }
      },
      extension: {
        Extension {
          url: url { value: 'http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-instantiatesCaseFeature' },
          value: canonical { value: 'http://example.org/StructureDefinition/DateOfDiagnosisFeature' }
        },
        Extension {
          url: url { value: 'http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-caseFeatureType' },
          value: code { value: 'inferred' }
        }
      },
      status: ObservationStatus { value: 'final' },
      effective: dateTime { value: Now() },
      code: CodeableConcept {
        coding: {
          Coding {
            system: uri { value: 'http://example.org/CodeSystem/CaseFeatureCodes' },
            code: code { value: 'on-medication-RA Treatment' }
          }
        }
      },
      value: "Date of RA Diagnosis"
    }
  else null

define function MostRecent(observationList List<FHIR.Observation>):
  First(
    observationList Observation
    sort by effective.value descending
  )

/**
 * @description
 * Assertion is if there is a case feature directly documented
 */
define "RA Diagnosis Asserted":
  MostRecent([Observation: "Date of Diagnosis Feature"])

/**
 * @description
 * Feature is asserted followed by inferred
 */
define "On RA Treatment":
  Coalesce(
    "RA Diagnosis Asserted",
    "RA Diagnosis Inferred"
  )