--set to your database
USE [CB_MYSPACE_SEE]
--Add the cb_datasetref column
ALTER TABLE [dbo].[ADSItem]
ADD cb_datasetref VARCHAR(70)

--Update the cb_datasetref to reference the table
UPDATE [dbo].[ADSItem]
SET cb_datasetref = 'YAS-ePR-2019-to-2023-cohort2';



--Add the cb_datasetref column
ALTER TABLE [dbo].[Assessment]
ADD cb_datasetref VARCHAR(70)

--Update the cb_datasetref to reference the table
UPDATE [dbo].[Assessment]
SET cb_datasetref = 'YAS-ePR-2019-to-2023-cohort2';


--Add the cb_datasetref column
ALTER TABLE [dbo].[InterventionsAirway]
ADD cb_datasetref VARCHAR(70)

--Update the cb_datasetref to reference the table
UPDATE [dbo].[InterventionsAirway]
SET cb_datasetref = 'YAS-ePR-2019-to-2023-cohort2';


--Add the cb_datasetref column
ALTER TABLE [dbo].[InterventionsCannulationt]
ADD cb_datasetref VARCHAR(70)

--Update the cb_datasetref to reference the table
UPDATE [dbo].[InterventionsCannulationt]
SET cb_datasetref = 'YAS-ePR-2019-to-2023-cohort2';



--Add the cb_datasetref column
ALTER TABLE[dbo].[InterventionsClinicalProc]
ADD cb_datasetref VARCHAR(70)

--Update the cb_datasetref to reference the table
UPDATE [dbo].[InterventionsClinicalProc]
SET cb_datasetref = 'YAS-ePR-2019-to-2023-cohort2';


--Add the cb_datasetref column
ALTER TABLE[dbo].[InterventionsDrugAdmin]
ADD cb_datasetref VARCHAR(70)

--Update the cb_datasetref to reference the table
UPDATE [dbo].[InterventionsDrugAdmin]
SET cb_datasetref = 'YAS-ePR-2019-to-2023-cohort2';


--Add the cb_datasetref column
ALTER TABLE [dbo].[InterventionsExtrication]
ADD cb_datasetref VARCHAR(70)

--Update the cb_datasetref to reference the table
UPDATE [dbo].[InterventionsExtrication]
SET cb_datasetref = 'YAS-ePR-2019-to-2023-cohort2';


--Add the cb_datasetref column
ALTER TABLE [dbo].[InterventionsIntubation]
ADD cb_datasetref VARCHAR(70)

--Update the cb_datasetref to reference the table
UPDATE [dbo].[InterventionsIntubation]
SET cb_datasetref = 'YAS-ePR-2019-to-2023-cohort2';


--Add the cb_datasetref column
ALTER TABLE [dbo].[InterventionsPatAdvice]
ADD cb_datasetref VARCHAR(70)

--Update the cb_datasetref to reference the table
UPDATE [dbo].[InterventionsPatAdvice]
SET cb_datasetref = 'YAS-ePR-2019-to-2023-cohort2';



--Add the cb_datasetref column
ALTER TABLE [dbo].[InterventionsResuscitation]
ADD cb_datasetref VARCHAR(70)

--Update the cb_datasetref to reference the table
UPDATE [dbo].[InterventionsResuscitation]
SET cb_datasetref = 'YAS-ePR-2019-to-2023-cohort2';


--Add the cb_datasetref column
ALTER TABLE [dbo].[Mobility]
ADD cb_datasetref VARCHAR(70)

--Update the cb_datasetref to reference the table
UPDATE [dbo].[Mobility]
SET cb_datasetref = 'YAS-ePR-2019-to-2023-cohort2';


--Add the cb_datasetref column
ALTER TABLE [dbo].[Observations]
ADD cb_datasetref VARCHAR(70)

--Update the cb_datasetref to reference the table
UPDATE [dbo].[Observations]
SET cb_datasetref = 'YAS-ePR-2019-to-2023-cohort2';


--Add the cb_datasetref column
ALTER TABLE [dbo].[ObservationsECG]
ADD cb_datasetref VARCHAR(70)

--Update the cb_datasetref to reference the table
UPDATE [dbo].[ObservationsECG]
SET cb_datasetref = 'YAS-ePR-2019-to-2023-cohort2';


--Add the cb_datasetref column
ALTER TABLE [dbo].[ObservationsFAST]
ADD cb_datasetref VARCHAR(70)

--Update the cb_datasetref to reference the table
UPDATE [dbo].[ObservationsFAST]
SET cb_datasetref = 'YAS-ePR-2019-to-2023-cohort2';


--Add the cb_datasetref column
ALTER TABLE [dbo].[ObservationsUTR]
ADD cb_datasetref VARCHAR(70)

--Update the cb_datasetref to reference the table
UPDATE [dbo].[ObservationsUTR]
SET cb_datasetref = 'YAS-ePR-2019-to-2023-cohort2';



--Add the cb_datasetref column
ALTER TABLE [dbo].[PatientOutcome]
ADD cb_datasetref VARCHAR(70)

--Update the cb_datasetref to reference the table
UPDATE [dbo].[PatientOutcome]
SET cb_datasetref = 'YAS-ePR-2019-to-2023-cohort2';


--Add the cb_datasetref column
ALTER TABLE [dbo].[PatientOutcomeNotification]
ADD cb_datasetref VARCHAR(70)

--Update the cb_datasetref to reference the table
UPDATE [dbo].[PatientOutcomeNotification]
SET cb_datasetref = 'YAS-ePR-2019-to-2023-cohort2';


--Add the cb_datasetref column
ALTER TABLE [dbo].[PatientOutcomeReferral]
ADD cb_datasetref VARCHAR(70)

--Update the cb_datasetref to reference the table
UPDATE [dbo].[PatientOutcomeReferral]
SET cb_datasetref = 'YAS-ePR-2019-to-2023-cohort2';


--Add the cb_datasetref column
ALTER TABLE [dbo].[PatientOutcomeRefusal]
ADD cb_datasetref VARCHAR(70)

--Update the cb_datasetref to reference the table
UPDATE [dbo].[PatientOutcomeRefusal]
SET cb_datasetref = 'YAS-ePR-2019-to-2023-cohort2';


--Add the cb_datasetref column
ALTER TABLE [dbo].[PCR]
ADD cb_datasetref VARCHAR(70)

--Update the cb_datasetref to reference the table
UPDATE [dbo].[PCR]
SET cb_datasetref = 'YAS-ePR-2019-to-2023-cohort2';



--Add the cb_datasetref column
ALTER TABLE [dbo].[PrimarySurvey]
ADD cb_datasetref VARCHAR(70)

--Update the cb_datasetref to reference the table
UPDATE [dbo].[PrimarySurvey]
SET cb_datasetref = 'YAS-EPR-2023-04-01-to-2023-04-16';