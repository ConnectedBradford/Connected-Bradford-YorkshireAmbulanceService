USE [src_StagingDatabase_YAS]

--Create All Tables 
--ADSItem
GO

/****** Object:  Table [dbo].[ADSItem]    Script Date: 25/04/2024 23:45:57 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ADSItem](
	[ADSMeasure] [varchar](255) NULL,
	[ItemCode] [varchar](255) NULL,
	[ItemDescription] [varchar](255) NULL,
	[unique_epr_id] [varchar](255) NULL,
	[cb_datasetref] [varchar](70) NULL
) ON [PRIMARY]
GO


--Create Assessment Table
GO

/****** Object:  Table [dbo].[Assessment]    Script Date: 26/04/2024 09:13:13 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Assessment](
	[APGARScore] [int] NULL,
	[BBAActivity] [varchar](255) NULL,
	[BBAAppearance] [varchar](255) NULL,
	[BBAGrimace] [varchar](255) NULL,
	[BBAMeconiumPresent] [bit] NULL,
	[BBAMidwifePresent] [bit] NULL,
	[BBAPlacentaDelivered] [bit] NULL,
	[BBAPulse] [varchar](255) NULL,
	[BBARespiration] [varchar](255) NULL,
	[BBATimeOfBirth] [datetime] NULL,
	[BBAType] [varchar](255) NULL,
	[CommsNeeds] [bit] NULL,
	[DetainedMentalHealthAct] [bit] NULL,
	[DNACPR] [bit] NULL,
	[DOLS] [bit] NULL,
	[EmergTreatmentPlan] [bit] NULL,
	[HistoryOfDementia] [bit] NULL,
	[InitialPresentation] [varchar](255) NULL,
	[InitialPresentationID] [int] NULL,
	[LearningDisability] [bit] NULL,
	[PatientAllergies] [varchar](255) NULL,
	[SocialCareInvolment] [bit] NULL,
	[unique_epr_id] [varchar](255) NULL,
	[cb_datasetref] [varchar](70) NULL
) ON [PRIMARY]
GO


--Create InterventionsAirway Table
GO

/****** Object:  Table [dbo].[InterventionsAirway]    Script Date: 26/04/2024 09:22:02 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[InterventionsAirway](
	[ivaSize] [int] NULL,
	[ivaSuccess] [bit] NULL,
	[ivaType] [varchar](255) NULL,
	[unique_epr_id] [varchar](255) NULL,
	[cb_datasetref] [varchar](70) NULL
) ON [PRIMARY]
GO


--Create InterventionsCannulationt
GO

/****** Object:  Table [dbo].[InterventionsCannulationt]    Script Date: 26/04/2024 09:23:12 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[InterventionsCannulationt](
	[icnAseptic] [bit] NULL,
	[icnFlushed] [bit] NULL,
	[icnSucces] [bit] NULL,
	[icnType] [varchar](255) NULL,
	[icnUnableReason] [varchar](255) NULL,
	[unique_epr_id] [varchar](255) NULL,
	[cb_datasetref] [varchar](70) NULL
) ON [PRIMARY]
GO

--Create InterventionsClinicalProc
GO

/****** Object:  Table [dbo].[InterventionsClinicalProc]    Script Date: 26/04/2024 09:24:29 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[InterventionsClinicalProc](
	[icpCatheterFirstTime] [bit] NULL,
	[icpCatheterFirstTimeSize] [varchar](255) NULL,
	[icpCatheterReplace] [bit] NULL,
	[icpCatheterReplaceSize] [varchar](255) NULL,
	[icpCatheterType] [varchar](255) NULL,
	[icpPregnancyTest] [bit] NULL,
	[icpUrinalysisSampleSent] [bit] NULL,
	[icpWoundClosureAdviceGiven] [bit] NULL,
	[icpWoundClosureSteriStrips] [bit] NULL,
	[icpWoundClosureSteriStripsNumUsed] [int] NULL,
	[icpWoundClosureSuture] [bit] NULL,
	[icpWoundClosureSutureNumUsed] [int] NULL,
	[icpWoundClosureSutureSize] [float] NULL,
	[icpWoundClosureWoundGlue] [bit] NULL,
	[icpWoundDressingAdviceGiven] [bit] NULL,
	[unique_epr_id] [varchar](255) NULL,
	[cb_datasetref] [varchar](70) NULL
) ON [PRIMARY]
GO

--Create InterventionsDrugAdmin Table
GO

/****** Object:  Table [dbo].[InterventionsDrugAdmin]    Script Date: 26/04/2024 09:26:30 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[InterventionsDrugAdmin](
	[idaDosage] [varchar](255) NULL,
	[idaDosageUnit] [varchar](255) NULL,
	[idaDrugName] [varchar](255) NULL,
	[idaEndTime] [datetime] NULL,
	[idaRoute] [varchar](255) NULL,
	[idaStartTime] [datetime] NULL,
	[unique_epr_id] [varchar](255) NULL,
	[cb_datasetref] [varchar](70) NULL
) ON [PRIMARY]
GO


--Create interventionExtrication Table 
GO

/****** Object:  Table [dbo].[InterventionsExtrication]    Script Date: 26/04/2024 09:29:21 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[InterventionsExtrication](
	[iexDeclinedReason] [varchar](255) NULL,
	[iexPostDistalPulse] [bit] NULL,
	[iexPostDistalSensation] [bit] NULL,
	[iexPostLimbPerfused] [bit] NULL,
	[iexPreDistalPulse] [bit] NULL,
	[iexPreDistalSensation] [bit] NULL,
	[iexPreLimbPerfused] [bit] NULL,
	[iexTime] [datetime] NULL,
	[iexType] [varchar](255) NULL,
	[unique_epr_id] [varchar](255) NULL,
	[cb_datasetref] [varchar](70) NULL
) ON [PRIMARY]
GO


--Create InterventionsIntubation
GO

/****** Object:  Table [dbo].[InterventionsIntubation]    Script Date: 26/04/2024 09:31:04 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[InterventionsIntubation](
	[ivtBougie] [bit] NULL,
	[ivtBURP] [bit] NULL,
	[ivtCOETTSize] [float] NULL,
	[ivtCOETTSuccess] [bit] NULL,
	[ivtCricoid] [bit] NULL,
	[ivtGradeView] [varchar](255) NULL,
	[ivtLengthAtTeeth] [int] NULL,
	[ivtSoilingCords] [bit] NULL,
	[unique_epr_id] [varchar](255) NULL,
	[cb_datasetref] [varchar](70) NULL
) ON [PRIMARY]
GO


--Create InterventionsPatAdvice
GO

/****** Object:  Table [dbo].[InterventionsPatAdvice]    Script Date: 26/04/2024 09:32:21 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[InterventionsPatAdvice](
	[ipaType] [varchar](255) NULL,
	[ipaVerbal] [bit] NULL,
	[ipaWritten] [bit] NULL,
	[unique_epr_id] [varchar](255) NULL,
	[cb_datasetref] [varchar](70) NULL
) ON [PRIMARY]
GO


--Create  Table InterventionsResuscitation

GO

/****** Object:  Table [dbo].[InterventionsResuscitation]    Script Date: 26/04/2024 09:33:31 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[InterventionsResuscitation](
	[ircArrestTime] [datetime] NULL,
	[ircCardiac] [bit] NULL,
	[ircCPAD] [bit] NULL,
	[ircCPRTime] [varchar](255) NULL,
	[ircCPRTimeYAS] [varchar](255) NULL,
	[ircFirstShockTime] [varchar](255) NULL,
	[ircFurtherArrestRhythm] [varchar](255) NULL,
	[ircInitialArrestRhythm] [varchar](255) NULL,
	[ircMechCPR] [bit] NULL,
	[ircResusAttempts] [varchar](255) NULL,
	[ircROSCRhythmType] [varchar](255) NULL,
	[ircROSCTime] [datetime] NULL,
	[ircShockCount] [int] NULL,
	[ircSuspendResus] [bit] NULL,
	[ircSuspendResusTime] [datetime] NULL,
	[unique_epr_id] [varchar](255) NULL,
	[cb_datasetref] [varchar](70) NULL
) ON [PRIMARY]
GO


--Create Table Mobility
GO

/****** Object:  Table [dbo].[Mobility]    Script Date: 26/04/2024 09:35:25 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Mobility](
	[mobItemDecReason] [varchar](255) NULL,
	[mobItemUsed] [varchar](255) NULL,
	[mobType] [varchar](255) NULL,
	[unique_epr_id] [varchar](255) NULL,
	[cb_datasetref] [varchar](70) NULL
) ON [PRIMARY]
GO


--Create Table Observations
GO

/****** Object:  Table [dbo].[Observations]    Script Date: 26/04/2024 09:36:36 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Observations](
	[NEWSScore] [int] NULL,
	[obsAlcoholSuspected] [bit] NULL,
	[obsAVPU] [varchar](255) NULL,
	[obsBloodSugar] [float] NULL,
	[obsBloodSugarIndicator] [varchar](255) NULL,
	[obsBPDiastolic] [int] NULL,
	[obsBPMeasuredPos] [varchar](255) NULL,
	[obsBPSystolic] [int] NULL,
	[obsCapillaryCentral] [int] NULL,
	[obsCapillaryPeripheral] [int] NULL,
	[obsCapillaryRefilSeconds] [int] NULL,
	[obsCapillaryRefilType] [varchar](255) NULL,
	[obsDrugsSuspected] [bit] NULL,
	[obsECGMonitored] [bit] NULL,
	[obsEtCo2] [float] NULL,
	[obsGCSE] [int] NULL,
	[obsGCSM] [int] NULL,
	[obsGCSScore] [int] NULL,
	[obsGCSV] [int] NULL,
	[obsHypercapnicRespFailure] [varchar](255) NULL,
	[obsMCAssessmentTime] [datetime] NULL,
	[obsMCOver16] [bit] NULL,
	[obsMCPhysicalInjury] [bit] NULL,
	[obsMentalCapInDoubtStatus] [bit] NULL,
	[obsObserationType] [varchar](255) NULL,
	[obsPainScore] [int] NULL,
	[obsPainScoreUTRReason] [varchar](255) NULL,
	[obsPeakFlow] [int] NULL,
	[obsPulseManual] [int] NULL,
	[obsPupilReactionLeftSize] [int] NULL,
	[obsPupilReactionLeftStatus] [varchar](255) NULL,
	[obsPupilReactionLeftUTRReason] [varchar](255) NULL,
	[obsPupilReactionRightSize] [int] NULL,
	[obsPupilReactionRightStatus] [varchar](255) NULL,
	[obsPupilReactionRightUTRReason] [varchar](255) NULL,
	[obsRespRate] [int] NULL,
	[obsSp02Air] [int] NULL,
	[obsSupplimentalOxy] [varchar](255) NULL,
	[obsTempDeg] [float] NULL,
	[obsTimeCompletedUser] [datetime] NULL,
	[unique_epr_id] [varchar](255) NULL,
	[cb_datasetref] [varchar](70) NULL
) ON [PRIMARY]
GO


--Create Table ObservationsECG
GO

/****** Object:  Table [dbo].[ObservationsECG]    Script Date: 26/04/2024 09:37:37 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ObservationsECG](
	[obeAbnormalityType] [varchar](255) NULL,
	[obeContMonitored] [bit] NULL,
	[obeLead] [varchar](255) NULL,
	[obeTimeUser] [datetime] NULL,
	[obeType] [varchar](255) NULL,
	[obeUTRReason] [varchar](255) NULL,
	[unique_epr_id] [varchar](255) NULL,
	[cb_datasetref] [varchar](70) NULL
) ON [PRIMARY]
GO

--Create Table ObservationsFAST
GO

/****** Object:  Table [dbo].[ObservationsFAST]    Script Date: 26/04/2024 09:41:44 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ObservationsFAST](
	[obfArmWeakness] [varchar](255) NULL,
	[obfFacialPalsy] [varchar](255) NULL,
	[obfOtherStrokeBalance] [bit] NULL,
	[obfOtherStrokeConfusion] [bit] NULL,
	[obfOtherStrokeIndicator] [bit] NULL,
	[obfOtherStrokeLeg] [bit] NULL,
	[obfOtherStrokeVision] [bit] NULL,
	[obfPatientUTR] [bit] NULL,
	[obfPatientUTRReason] [varchar](255) NULL,
	[obfSpeechImpairment] [bit] NULL,
	[obfTimeTestCompleted] [datetime] NULL,
	[obfTimeUser] [datetime] NULL,
	[unique_epr_id] [varchar](255) NULL,
	[cb_datasetref] [varchar](70) NULL
) ON [PRIMARY]
GO


--Create Table ObservationsUTR
GO

/****** Object:  Table [dbo].[ObservationsUTR]    Script Date: 26/04/2024 09:43:04 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ObservationsUTR](
	[obuObservationUTRMeasure] [varchar](255) NULL,
	[obuObservationUTRType] [varchar](255) NULL,
	[obuUTRReason] [varchar](255) NULL,
	[unique_epr_id] [varchar](255) NULL,
	[cb_datasetref] [varchar](70) NULL
) ON [PRIMARY]
GO


--Create Table PatientOutcome
GO

/****** Object:  Table [dbo].[PatientOutcome]    Script Date: 26/04/2024 09:43:59 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[PatientOutcome](
	[pocColour] [varchar](255) NULL,
	[pocDepartment] [varchar](255) NULL,
	[pocDestination] [varchar](255) NULL,
	[pocEndCode] [varchar](255) NULL,
	[pocHandoverATMIST] [bit] NULL,
	[pocHandoverECG] [bit] NULL,
	[pocHandoverPatientInfo] [bit] NULL,
	[pocHandoverPatientMeds] [bit] NULL,
	[pocHandoverSBAR] [bit] NULL,
	[pocHandoverTime] [datetime] NULL,
	[pocNonTransportReason] [varchar](255) NULL,
	[pocPrealertATMIST] [bit] NULL,
	[pocPrealertNotRequired] [bit] NULL,
	[pocPrealertSBAR] [bit] NULL,
	[pocPrealertTime] [datetime] NULL,
	[pocTransported] [bit] NULL,
	[pocTreatmentConsent] [bit] NULL,
	[pocType] [varchar](255) NULL,
	[unique_epr_id] [varchar](255) NULL,
	[cb_datasetref] [varchar](70) NULL
) ON [PRIMARY]
GO


--Create Table PatientOutcomeNotification
GO

/****** Object:  Table [dbo].[PatientOutcomeNotification]    Script Date: 26/04/2024 09:45:33 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[PatientOutcomeNotification](
	[ponNotificationType] [varchar](255) NULL,
	[unique_epr_id] [varchar](255) NULL,
	[cb_datasetref] [varchar](70) NULL
) ON [PRIMARY]
GO

--Create Table PatientOutcomeReferral
GO

/****** Object:  Table [dbo].[PatientOutcomeReferral]    Script Date: 26/04/2024 09:48:23 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[PatientOutcomeReferral](
	[porReferralAccepted] [bit] NULL,
	[porReferralType] [varchar](255) NULL,
	[unique_epr_id] [varchar](255) NULL,
	[cb_datasetref] [varchar](70) NULL
) ON [PRIMARY]
GO


--Create Table PatientOutcomeRefusal
GO

/****** Object:  Table [dbo].[PatientOutcomeRefusal]    Script Date: 26/04/2024 09:49:42 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[PatientOutcomeRefusal](
	[preRefusalType] [varchar](255) NULL,
	[unique_epr_id] [varchar](255) NULL,
	[cb_datasetref] [varchar](70) NULL
) ON [PRIMARY]
GO


--Create Table PCR
GO

/****** Object:  Table [dbo].[PCR]    Script Date: 26/04/2024 09:55:24 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[PCR](
	[inc24hour] [bit] NULL,
	[incarrivedestination] [datetime] NULL,
	[incclinician1grade] [varchar](255) NULL,
	[incclinician2grade] [varchar](255) NULL,
	[incclinician3grade] [varchar](255) NULL,
	[incdate] [datetime] NULL,
	[incdcaleftscene] [datetime] NULL,
	[incdcaonscene] [datetime] NULL,
	[inclocationtype] [varchar](255) NULL,
	[incrrvonscene] [datetime] NULL,
	[inctimepatside] [datetime] NULL,
	[pcrage] [int] NULL,
	[pcragetype] [varchar](255) NULL,
	[pcrethnicitytext] [varchar](255) NULL,
	[pcrgender] [varchar](255) NULL,
	[pcrgpodscode] [varchar](255) NULL,
	[nhs] [varchar](255) NULL,
	[unique_epr_id] [varchar](255) NULL,
	[incnumber_hash] [varchar](255) NULL,
	[cb_datasetref] [varchar](70) NULL
) ON [PRIMARY]
GO


---Creatte Table PrimarySurvey
GO

/****** Object:  Table [dbo].[PrimarySurvey]    Script Date: 26/04/2024 12:17:45 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[PrimarySurvey](
	[psyCatHaemCAT] [bit] NULL,
	[psyCatHaemCELOX] [bit] NULL,
	[psyCatHaemDeceased] [bit] NULL,
	[psyCatHaemFluids] [bit] NULL,
	[psyCatHaemPosLArm] [bit] NULL,
	[psyCatHaemPosLLeg] [bit] NULL,
	[psyCatHaemPosOther] [bit] NULL,
	[psyCatHaemPosRArm] [bit] NULL,
	[psyCatHaemPosRLeg] [bit] NULL,
	[psyCatHaemPressureDressing] [bit] NULL,
	[psyCatHaemTXA] [bit] NULL,
	[psyResult] [varchar](255) NULL,
	[psyTime] [datetime] NULL,
	[psyType] [varchar](255) NULL,
	[unique_epr_id] [varchar](255) NULL,
	[cb_datasetref] [varchar](70) NULL
) ON [PRIMARY]
GO



