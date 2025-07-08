<a href="https://www.bradfordresearch.nhs.uk/our-research-teams/connected-bradford/">
  <img align="left" alt="ConnectedBradford" width="55px" src="https://github.com/ShoreRob1/Images/blob/main/CB%20logo%201.png?raw=true" />
</a>

This is the Connected Bradford Yorkshire Ambulance Service (YAS) GitHub page where you can find a summary of the dataset(s), data dictionaries and helpful code.

# CB_Yorkshire Ambulance Services 

Contains the scripts and data dictionary for the YAS. This is the data gathered by YAS. 
The dataset has been fully anonymised, but can link to other FDM's.

There are three fdm's for YAS. 

CB_FDM_YAS - build date  2025-07-01

Observation_period - 2014-04-01 to	2025-03-31


# YAS
The YAS FDM is made up of 29 source tables (summarised below and data dictionaries linked) from routinely collected data from YAS for 4,429,251 individuals and their routinely collected Ambulance Service data. 


The source tables are largely populated by fields with the tbl_ where there is a person and a start and end date, and cb_ where there is no identifiable person, these are typically lookups.

As the YAS data often is very sparse this FDM includes persons where we do not have complete demographic information, in most cases the month and year of birth is missing as this is not gathered by YAS in all cases

### Standard FDM tables included in this dataset*
person.

observation_period.

personLSOA.

tmp_persons_distinct.


### The source data tables are: 

cb_Observations

cb_ObservationsECG

cb_ObservationsFAST

cb_ObservationsUTR

cb_PatientOutcome

cb_PatientOutcomeNotification

cb_PatientOutcomeReferral

cb_PatientOutcomeRefusal

cb_PCR

cb_PrimarySurvey

tbl_YAS_111

tbl_YAS_999

tbl_YAS_CAD

tbl_YAS_EPR

tbl_YAS_IUC

tbl_YAS_PTS

cb_abandoned_calls

cb_ADSItem

cb_Assessment

cb_InterventionsAirway

cb_InterventionsCannulation

cb_InterventionsClinicalProc

cb_InterventionsDrugAdmin

cb_InterventionsExtrication

cb_InterventionsIntubation

cb_InterventionsPatAdvice

cb_InterventionsResuscitation

cb_missing_iuc_cases_final

cb_Mobility

For more information please go to the docs folder. 

There is no identifiable information (such as names, date of birth, address,) available to the Connected Yorkshire project so patient confidentiality and privacy will be protected.

