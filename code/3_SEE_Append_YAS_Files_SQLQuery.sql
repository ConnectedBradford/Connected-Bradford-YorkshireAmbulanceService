USE [CB_MYSPACE_JDB]

--Append ADSItem
INSERT INTO [src_StagingDatabase_YAS].[dbo].[ADSItem]
SELECT *
FROM [ADSItem]


--AppAssessment
INSERT INTO [src_StagingDatabase_YAS].[dbo].[Assessment]
SELECT *
FROM [Assessment]


--Append InterventionsAirway
INSERT INTO [src_StagingDatabase_YAS].[dbo].[InterventionsAirway]
SELECT *
FROM [InterventionsAirway]


--Append InterventionsCannulationt
INSERT INTO [src_StagingDatabase_YAS].[dbo].[InterventionsCannulationt]
SELECT *
FROM [InterventionsCannulationt]


--Append InterventionsClinicalProc
INSERT INTO [src_StagingDatabase_YAS].[dbo].[InterventionsClinicalProc]
SELECT *
FROM [InterventionsClinicalProc]


--Append InterventionsClinicalProc
INSERT INTO [src_StagingDatabase_YAS].[dbo].[InterventionsClinicalProc]
SELECT *
FROM [InterventionsClinicalProc]


--Append IInterventionsDrugAdmin
INSERT INTO [src_StagingDatabase_YAS].[dbo].[InterventionsDrugAdmin]
SELECT *
FROM [InterventionsDrugAdmin]


--Append InterventionsExtrication
INSERT INTO [src_StagingDatabase_YAS].[dbo].[InterventionsExtrication]
SELECT *
FROM [InterventionsExtrication]



--Append InterventionsIntubation
INSERT INTO [src_StagingDatabase_YAS].[dbo].[InterventionsIntubation]
SELECT *
FROM [InterventionsIntubation]



--Append InterventionsPatAdvice
INSERT INTO [src_StagingDatabase_YAS].[dbo].[InterventionsPatAdvice]
SELECT *
FROM [InterventionsPatAdvice]


--Append InterventionsResuscitation
INSERT INTO [src_StagingDatabase_YAS].[dbo].[InterventionsResuscitation]
SELECT *
FROM [InterventionsResuscitation]


--Append Mobility
INSERT INTO [src_StagingDatabase_YAS].[dbo].[Mobility]
SELECT *
FROM [Mobility]


----Append Observations
INSERT INTO [src_StagingDatabase_YAS].[dbo].[Observations]
SELECT *
FROM [Observations]


----Append ObservationsECG
INSERT INTO [src_StagingDatabase_YAS].[dbo].[ObservationsECG]
SELECT *
FROM [ObservationsECG]



----Append ObservationsFAST
INSERT INTO [src_StagingDatabase_YAS].[dbo].[ObservationsFAST]
SELECT *
FROM [ObservationsFAST]



----Append ObservationsUTR
INSERT INTO [src_StagingDatabase_YAS].[dbo].[ObservationsUTR]
SELECT *
FROM [ObservationsUTR]


----Append ObservationsUTR
INSERT INTO [src_StagingDatabase_YAS].[dbo].[PatientOutcome]
SELECT *
FROM [PatientOutcome]



----Append PatientOutcomeNotification
INSERT INTO [src_StagingDatabase_YAS].[dbo].[PatientOutcomeNotification]
SELECT *
FROM [PatientOutcomeNotification]


----Append PatientOutcomeReferral
INSERT INTO [src_StagingDatabase_YAS].[dbo].[PatientOutcomeReferral]
SELECT *
FROM [PatientOutcomeReferral]


----Append PatientOutcomeRefusal
INSERT INTO [src_StagingDatabase_YAS].[dbo].[PatientOutcomeRefusal]
SELECT *
FROM [PatientOutcomeRefusal]


----Append PCR
INSERT INTO [src_StagingDatabase_YAS].[dbo].[PCR]
SELECT *
FROM [PCR]


----Append PrimarySurvey
INSERT INTO [src_StagingDatabase_YAS].[dbo].[PrimarySurvey]
SELECT *
FROM [PrimarySurvey]


