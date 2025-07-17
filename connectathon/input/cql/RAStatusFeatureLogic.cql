library RAStatusFeatureLogic version '0.2.0'

using FHIR version '4.0.1'

include FHIRHelpers version '0.2.0'

codesystem "CaseFeatureCodes": 'http://example.org/CodeSystem/CaseFeatureCodes'
code "RA Status Feature": 'ra-status' from "CaseFeatureCodes"

context Patient

/**
 * @description
 * Assertion is if there is a case feature directly documented
 */
define "RA Status Asserted":
  [Observation: "RA Status Feature"]

/**
 * @description
 * Feature is asserted followed by inferred
 */
define "RA Status":
    "RA Status Asserted"
