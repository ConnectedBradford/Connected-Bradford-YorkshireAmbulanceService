USE [CB_MYSPACE_SEE]

--Append ADSItem
INSERT INTO [src_StagingDatabase_YAS].[dbo].[ADSItem]
SELECT *
FROM [CB_MYSPACE_SEE].[dbo].[ADSItem]


--Append Assessment
INSERT INTO [src_StagingDatabase_YAS].[dbo].[Assessment]
SELECT *
FROM [CB_MYSPACE_SEE].[dbo].[Assessment]


--Append InterventionsAirway
INSERT INTO [src_StagingDatabase_YAS].[dbo].[InterventionsAirway]
SELECT *
FROM [CB_MYSPACE_SEE].[dbo].[InterventionsAirway]


--Append InterventionsCannulationt
INSERT INTO [src_StagingDatabase_YAS].[dbo].[InterventionsCannulationt]
SELECT *
FROM [CB_MYSPACE_SEE].[dbo].[InterventionsCannulationt]


--Append InterventionsClinicalProc
INSERT INTO [src_StagingDatabase_YAS].[dbo].[InterventionsClinicalProc]
SELECT *
FROM [CB_MYSPACE_SEE].[dbo].[InterventionsClinicalProc]


--Append InterventionsClinicalProc
INSERT INTO [src_StagingDatabase_YAS].[dbo].[InterventionsClinicalProc]
SELECT *
FROM [CB_MYSPACE_SEE].[dbo].[InterventionsClinicalProc]


--Append IInterventionsDrugAdmin
INSERT INTO [src_StagingDatabase_YAS].[dbo].[InterventionsDrugAdmin]
SELECT *
FROM [CB_MYSPACE_SEE].[dbo].[InterventionsDrugAdmin]


--Append InterventionsExtrication
INSERT INTO [src_StagingDatabase_YAS].[dbo].[InterventionsExtrication]
SELECT *
FROM [CB_MYSPACE_SEE].[dbo].[InterventionsExtrication]



--Append InterventionsIntubation
INSERT INTO [src_StagingDatabase_YAS].[dbo].[InterventionsIntubation]
SELECT *
FROM [CB_MYSPACE_SEE].[dbo].[InterventionsIntubation]



--Append InterventionsPatAdvice
INSERT INTO [src_StagingDatabase_YAS].[dbo].[InterventionsPatAdvice]
SELECT *
FROM [CB_MYSPACE_SEE].[dbo].[InterventionsPatAdvice]


--Append InterventionsResuscitation
INSERT INTO [src_StagingDatabase_YAS].[dbo].[InterventionsResuscitation]
SELECT *
FROM [CB_MYSPACE_SEE].[dbo].[InterventionsResuscitation]


--Append Mobility
INSERT INTO [src_StagingDatabase_YAS].[dbo].[Mobility]
SELECT *
FROM [CB_MYSPACE_SEE].[dbo].[Mobility]


----Append Observations
INSERT INTO [src_StagingDatabase_YAS].[dbo].[Observations]
SELECT *
FROM [CB_MYSPACE_SEE].[dbo].[Observations]


----Append ObservationsECG
INSERT INTO [src_StagingDatabase_YAS].[dbo].[ObservationsECG]
SELECT *
FROM [CB_MYSPACE_SEE].[dbo].[ObservationsECG]



----Append ObservationsFAST
INSERT INTO [src_StagingDatabase_YAS].[dbo].[ObservationsFAST]
SELECT *
FROM [CB_MYSPACE_SEE].[dbo].[ObservationsFAST]



----Append ObservationsUTR
INSERT INTO [src_StagingDatabase_YAS].[dbo].[ObservationsUTR]
SELECT *
FROM [CB_MYSPACE_SEE].[dbo].[ObservationsUTR]


----Append ObservationsUTR
INSERT INTO [src_StagingDatabase_YAS].[dbo].[PatientOutcome]
SELECT *
FROM [CB_MYSPACE_SEE].[dbo].[PatientOutcome]



----Append PatientOutcomeNotification
INSERT INTO [src_StagingDatabase_YAS].[dbo].[PatientOutcomeNotification]
SELECT *
FROM [CB_MYSPACE_SEE].[dbo].[PatientOutcomeNotification]


----Append PatientOutcomeReferral
INSERT INTO [src_StagingDatabase_YAS].[dbo].[PatientOutcomeReferral]
SELECT *
FROM [CB_MYSPACE_SEE].[dbo].[PatientOutcomeReferral]


----Append PatientOutcomeRefusal
INSERT INTO [src_StagingDatabase_YAS].[dbo].[PatientOutcomeRefusal]
SELECT *
FROM [CB_MYSPACE_SEE].[dbo].[PatientOutcomeRefusal]


----Append PCR
INSERT INTO [src_StagingDatabase_YAS].[dbo].[PCR]
SELECT *
FROM [CB_MYSPACE_SEE].[dbo].[PCR]


----Append PrimarySurvey
INSERT INTO [src_StagingDatabase_YAS].[dbo].[PrimarySurvey]
SELECT *
FROM [CB_MYSPACE_SEE].[dbo].[PrimarySurvey]


