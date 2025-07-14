library RaMonitoringRecommendationLibrary version '0.2.0'

using FHIR version '4.0.1'

include FHIRHelpers version '0.2.0'
include ActiveRaTreatmentFeatureLogic version '0.2.0' called ActiveRaTreatmentFeature
include DateOfDiagnosisFeatureLogic version '0.2.0' called DateOfDiagnosisFeature

context Patient

define "Order monitoring tests if on RA treatment":
  if (ActiveRaTreatmentFeature."On RA Treatment" is not null) then
    ActiveRaTreatmentFeature."On RA Treatment".value as boolean
  else
    false

define "Send message to remind patient of follow up for RA Diagnosis within one month of diagnosis":
  if (DateOfDiagnosisFeature."Active RA Diagnosis" is not null) then
    DateOfDiagnosisFeature."Active RA Diagnosis".value as boolean
  else
    false