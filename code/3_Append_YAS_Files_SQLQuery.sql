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
( [ivaType]
      ,[ivaSize]
      ,[ivaSuccess]
      ,[unique_epr_id]
      ,[cb_datasetref])
SELECT  [ivaType]
      ,[ivaSize]
      ,[ivaSuccess]
      ,[unique_epr_id]
      ,[cb_datasetref]
FROM [InterventionsAirway]


--Append InterventionsCannulationt
INSERT INTO [src_StagingDatabase_YAS].[dbo].[InterventionsCannulation] 
(
[icnType]
      ,[icnSucces]
      ,[icnFlushed]
      ,[icnAseptic]
      ,[icnUnableReason]
      ,[unique_epr_id]
      ,[cb_datasetref]
	  )

SELECT [icnType]
      ,[icnSucces]
      ,[icnFlushed]
      ,[icnAseptic]
      ,[icnUnableReason]
      ,[unique_epr_id]
      ,[cb_datasetref]
FROM [InterventionsCannulation]


--Append InterventionsClinicalProc
INSERT INTO [src_StagingDatabase_YAS].[dbo].[InterventionsClinicalProc]
(
[icpCatheterType]
      ,[icpCatheterReplace]
      ,[icpCatheterReplaceSize]
      ,[icpCatheterFirstTime]
      ,[icpCatheterFirstTimeSize]
      ,[icpWoundClosureSteriStrips]
      ,[icpWoundClosureSteriStripsNumUsed]
      ,[icpWoundClosureWoundGlue]
      ,[icpWoundClosureSuture]
      ,[icpWoundClosureSutureNumUsed]
      ,[icpWoundClosureSutureSize]
      ,[icpWoundClosureAdviceGiven]
      ,[icpWoundDressingAdviceGiven]
      ,[icpPregnancyTest]
      ,[icpUrinalysisSampleSent]
      ,[unique_epr_id]
      ,[cb_datasetref]
	  )
SELECT [icpCatheterType]
      ,[icpCatheterReplace]
      ,[icpCatheterReplaceSize]
      ,[icpCatheterFirstTime]
      ,[icpCatheterFirstTimeSize]
      ,[icpWoundClosureSteriStrips]
      ,[icpWoundClosureSteriStripsNumUsed]
      ,[icpWoundClosureWoundGlue]
      ,[icpWoundClosureSuture]
      ,[icpWoundClosureSutureNumUsed]
      ,[icpWoundClosureSutureSize]
      ,[icpWoundClosureAdviceGiven]
      ,[icpWoundDressingAdviceGiven]
      ,[icpPregnancyTest]
      ,[icpUrinalysisSampleSent]
      ,[unique_epr_id]
      ,[cb_datasetref]
FROM [InterventionsClinicalProc]



--Append IInterventionsDrugAdmin
INSERT INTO [src_StagingDatabase_YAS].[dbo].[InterventionsDrugAdmin]
(
[idaDrugName]
      ,[idaStartTime]
      ,[idaEndTime]
      ,[idaRoute]
      ,[idaDosage]
      ,[idaDosageUnit]
      ,[unique_epr_id]
      ,[cb_datasetref]
	  )

SELECT [idaDrugName]
      ,[idaStartTime]
      ,[idaEndTime]
      ,[idaRoute]
      ,[idaDosage]
      ,[idaDosageUnit]
      ,[unique_epr_id]
      ,[cb_datasetref]
FROM [InterventionsDrugAdmin]





--Append InterventionsExtrication
INSERT INTO [src_StagingDatabase_YAS].[dbo].[InterventionsExtrication]
(
[iexType]
      ,[iexTime]
      ,[iexPreDistalPulse]
      ,[iexPreLimbPerfused]
      ,[iexPreDistalSensation]
      ,[iexPostDistalPulse]
      ,[iexPostLimbPerfused]
      ,[iexPostDistalSensation]
      ,[iexDeclinedReason]
      ,[unique_epr_id]
      ,[cb_datasetref]
	  )
SELECT [iexType]
      ,[iexTime]
      ,[iexPreDistalPulse]
      ,[iexPreLimbPerfused]
      ,[iexPreDistalSensation]
      ,[iexPostDistalPulse]
      ,[iexPostLimbPerfused]
      ,[iexPostDistalSensation]
      ,[iexDeclinedReason]
      ,[unique_epr_id]
      ,[cb_datasetref]
FROM [InterventionsExtrication]



--Append InterventionsIntubation
INSERT INTO [src_StagingDatabase_YAS].[dbo].[InterventionsIntubation]
(
[ivtCOETTSize]
      ,[ivtCOETTSuccess]
      ,[ivtLengthAtTeeth]
      ,[ivtGradeView]
      ,[ivtCricoid]
      ,[ivtBURP]
      ,[ivtBougie]
      ,[ivtSoilingCords]
      ,[unique_epr_id]
      ,[cb_datasetref]
	  )
select [ivtCOETTSize]
      ,[ivtCOETTSuccess]
      ,[ivtLengthAtTeeth]
      ,[ivtGradeView]
      ,[ivtCricoid]
      ,[ivtBURP]
      ,[ivtBougie]
      ,[ivtSoilingCords]
      ,[unique_epr_id]
      ,[cb_datasetref]
  FROM [InterventionsIntubation]



--Append InterventionsPatAdvice
INSERT INTO [src_StagingDatabase_YAS].[dbo].[InterventionsPatAdvice]
(
[ipaType]
      ,[ipaVerbal]
      ,[ipaWritten]
      ,[unique_epr_id]
      ,[cb_datasetref]
	  ) 
SELECT [ipaType]
      ,[ipaVerbal]
      ,[ipaWritten]
      ,[unique_epr_id]
      ,[cb_datasetref]
FROM [InterventionsPatAdvice]


--Append InterventionsResuscitation
INSERT INTO [src_StagingDatabase_YAS].[dbo].[InterventionsResuscitation]
(
 [ircArrestTime]
      ,[ircCPRTime]
      ,[ircFirstShockTime]
      ,[ircShockCount]
      ,[ircResusAttempts]
      ,[ircInitialArrestRhythm]
      ,[ircFurtherArrestRhythm]
      ,[ircCardiac]
      ,[ircCPAD]
      ,[ircMechCPR]
      ,[ircROSCTime]
      ,[ircROSCRhythmType]
      ,[ircSuspendResus]
      ,[ircSuspendResusTime]
      ,[ircCPRTimeYAS]
      ,[unique_epr_id]
      ,[cb_datasetref]
	  )
SELECT  [ircArrestTime]
      ,[ircCPRTime]
      ,[ircFirstShockTime]
      ,[ircShockCount]
      ,[ircResusAttempts]
      ,[ircInitialArrestRhythm]
      ,[ircFurtherArrestRhythm]
      ,[ircCardiac]
      ,[ircCPAD]
      ,[ircMechCPR]
      ,[ircROSCTime]
      ,[ircROSCRhythmType]
      ,[ircSuspendResus]
      ,[ircSuspendResusTime]
      ,[ircCPRTimeYAS]
      ,[unique_epr_id]
      ,[cb_datasetref]
FROM [InterventionsResuscitation]


--Append Mobility
INSERT INTO [src_StagingDatabase_YAS].[dbo].[Mobility]
(
[mobType]
      ,[mobItemUsed]
      ,[mobItemDecReason]
      ,[unique_epr_id]
      ,[cb_datasetref]
	  )
SELECT [mobType]
      ,[mobItemUsed]
      ,[mobItemDecReason]
      ,[unique_epr_id]
      ,[cb_datasetref]
FROM [Mobility]


----Append Observations
INSERT INTO [src_StagingDatabase_YAS].[dbo].[Observations]
(
[obsObserationType]
      ,[obsRespRate]
      ,[obsSp02Air]
      ,[obsTempDeg]
      ,[obsBPSystolic]
      ,[obsBPDiastolic]
      ,[obsPulseManual]
      ,[obsBloodSugar]
      ,[obsBloodSugarIndicator]
      ,[obsPeakFlow]
      ,[obsEtCo2]
      ,[obsECGMonitored]
      ,[obsBPMeasuredPos]
      ,[obsSupplimentalOxy]
      ,[obsTimeCompletedUser]
      ,[obsAVPU]
      ,[obsGCSScore]
      ,[obsGCSE]
      ,[obsGCSV]
      ,[obsGCSM]
      ,[obsPupilReactionLeftStatus]
      ,[obsPupilReactionRightStatus]
      ,[obsPupilReactionLeftSize]
      ,[obsPupilReactionRightSize]
      ,[obsPupilReactionLeftUTRReason]
      ,[obsPupilReactionRightUTRReason]
      ,[obsCapillaryRefilType]
      ,[obsCapillaryRefilSeconds]
      ,[obsPainScore]
      ,[NEWSScore]
      ,[obsMCAssessmentTime]
      ,[obsMentalCapInDoubtStatus]
      ,[obsMCOver16]
      ,[obsMCPhysicalInjury]
      ,[obsPainScoreUTRReason]
      ,[obsHypercapnicRespFailure]
      ,[obsCapillaryCentral]
      ,[obsCapillaryPeripheral]
      ,[obsDrugsSuspected]
      ,[obsAlcoholSuspected]
      ,[unique_epr_id]
      ,[cb_datasetref]
	  )
SELECT [obsObserationType]
      ,[obsRespRate]
      ,[obsSp02Air]
      ,[obsTempDeg]
      ,[obsBPSystolic]
      ,[obsBPDiastolic]
      ,[obsPulseManual]
      ,[obsBloodSugar]
      ,[obsBloodSugarIndicator]
      ,[obsPeakFlow]
      ,[obsEtCo2]
      ,[obsECGMonitored]
      ,[obsBPMeasuredPos]
      ,[obsSupplimentalOxy]
      ,[obsTimeCompletedUser]
      ,[obsAVPU]
      ,[obsGCSScore]
      ,[obsGCSE]
      ,[obsGCSV]
      ,[obsGCSM]
      ,[obsPupilReactionLeftStatus]
      ,[obsPupilReactionRightStatus]
      ,[obsPupilReactionLeftSize]
      ,[obsPupilReactionRightSize]
      ,[obsPupilReactionLeftUTRReason]
      ,[obsPupilReactionRightUTRReason]
      ,[obsCapillaryRefilType]
      ,[obsCapillaryRefilSeconds]
      ,[obsPainScore]
      ,[NEWSScore]
      ,[obsMCAssessmentTime]
      ,[obsMentalCapInDoubtStatus]
      ,[obsMCOver16]
      ,[obsMCPhysicalInjury]
      ,[obsPainScoreUTRReason]
      ,[obsHypercapnicRespFailure]
      ,[obsCapillaryCentral]
      ,[obsCapillaryPeripheral]
      ,[obsDrugsSuspected]
      ,[obsAlcoholSuspected]
      ,[unique_epr_id]
      ,[cb_datasetref]
FROM [Observations]


----Append ObservationsECG
INSERT INTO [src_StagingDatabase_YAS].[dbo].[ObservationsECG](
[obeType]
      ,[obeTimeUser]
      ,[obeLead]
      ,[obeAbnormalityType]
      ,[obeUTRReason]
      ,[obeContMonitored]
      ,[unique_epr_id]
      ,[cb_datasetref]
)
SELECT [obeType]
      ,[obeTimeUser]
      ,[obeLead]
      ,[obeAbnormalityType]
      ,[obeUTRReason]
      ,[obeContMonitored]
      ,[unique_epr_id]
      ,[cb_datasetref]
FROM [ObservationsECG]



----Append ObservationsFAST
INSERT INTO [src_StagingDatabase_YAS].[dbo].[ObservationsFAST]
(
[obfTimeUser]
      ,[obfFacialPalsy]
      ,[obfArmWeakness]
      ,[obfSpeechImpairment]
      ,[obfOtherStrokeIndicator]
      ,[obfPatientUTR]
      ,[obfPatientUTRReason]
      ,[obfTimeTestCompleted]
      ,[obfOtherStrokeLeg]
      ,[obfOtherStrokeConfusion]
      ,[obfOtherStrokeVision]
      ,[obfOtherStrokeBalance]
      ,[unique_epr_id]
      ,[cb_datasetref]
	  )

SELECT [obfTimeUser]
      ,[obfFacialPalsy]
      ,[obfArmWeakness]
      ,[obfSpeechImpairment]
      ,[obfOtherStrokeIndicator]
      ,[obfPatientUTR]
      ,[obfPatientUTRReason]
      ,[obfTimeTestCompleted]
      ,[obfOtherStrokeLeg]
      ,[obfOtherStrokeConfusion]
      ,[obfOtherStrokeVision]
      ,[obfOtherStrokeBalance]
      ,[unique_epr_id]
      ,[cb_datasetref]
FROM [ObservationsFAST]



----Append ObservationsUTR
INSERT INTO [src_StagingDatabase_YAS].[dbo].[ObservationsUTR](
[obuObservationUTRMeasure]
      ,[obuObservationUTRType]
      ,[obuUTRReason]
      ,[unique_epr_id]
      ,[cb_datasetref]
)
SELECT [obuObservationUTRMeasure]
      ,[obuObservationUTRType]
      ,[obuUTRReason]
      ,[unique_epr_id]
      ,[cb_datasetref]
FROM [ObservationsUTR]


----Append [PatientOutcome]
INSERT INTO [src_StagingDatabase_YAS].[dbo].[PatientOutcome]
(
[pocType]
      ,[pocColour]
      ,[pocTransported]
      ,[pocNonTransportReason]
      ,[pocDestination]
      ,[pocDepartment]
      ,[pocTreatmentConsent]
      ,[pocEndCode]
      ,[pocPrealertSBAR]
      ,[pocPrealertATMIST]
      ,[pocPrealertTime]
      ,[pocHandoverSBAR]
      ,[pocHandoverATMIST]
      ,[pocHandoverPatientInfo]
      ,[pocHandoverPatientMeds]
      ,[pocHandoverECG]
      ,[pocHandoverTime]
      ,[pocPrealertNotRequired]
      ,[unique_epr_id]
      ,[cb_datasetref]
	  )
SELECT [pocType]
      ,[pocColour]
      ,[pocTransported]
      ,[pocNonTransportReason]
      ,[pocDestination]
      ,[pocDepartment]
      ,[pocTreatmentConsent]
      ,[pocEndCode]
      ,[pocPrealertSBAR]
      ,[pocPrealertATMIST]
      ,[pocPrealertTime]
      ,[pocHandoverSBAR]
      ,[pocHandoverATMIST]
      ,[pocHandoverPatientInfo]
      ,[pocHandoverPatientMeds]
      ,[pocHandoverECG]
      ,[pocHandoverTime]
      ,[pocPrealertNotRequired]
      ,[unique_epr_id]
      ,[cb_datasetref]
FROM [PatientOutcome]



----Append PatientOutcomeNotification
INSERT INTO [src_StagingDatabase_YAS].[dbo].[PatientOutcomeNotification]
(
[ponNotificationType]
      ,[unique_epr_id]
      ,[cb_datasetref]
	  )
SELECT [ponNotificationType]
      ,[unique_epr_id]
      ,[cb_datasetref]
FROM [PatientOutcomeNotification]


----Append PatientOutcomeReferral
INSERT INTO [src_StagingDatabase_YAS].[dbo].[PatientOutcomeReferral]
(
[porReferralType]
      ,[porReferralAccepted]
      ,[unique_epr_id]
      ,[cb_datasetref]
	  )
SELECT [porReferralType]
      ,[porReferralAccepted]
      ,[unique_epr_id]
      ,[cb_datasetref]
FROM [PatientOutcomeReferral]


----Append PatientOutcomeRefusal
INSERT INTO [src_StagingDatabase_YAS].[dbo].[PatientOutcomeRefusal]
(
 [preRefusalType]
      ,[unique_epr_id]
      ,[cb_datasetref]
	  )
SELECT  [preRefusalType]
      ,[unique_epr_id]
      ,[cb_datasetref]
FROM [PatientOutcomeRefusal]


----Append PCR
INSERT INTO [src_StagingDatabase_YAS].[dbo].[PCR]
(
[incdate]
      ,[pcrage]
      ,[pcragetype]
      ,[pcrethnicitytext]
      ,[pcrgender]
      ,[pcrgpodscode]
      ,[nhs]
      ,[unique_epr_id]
      ,[incnumber_hash]
      ,[cb_datasetref]
	  )
SELECT [incdate]
      ,[pcrage]
      ,[pcragetype]
      ,[pcrethnicitytext]
      ,[pcrgender]
      ,[pcrgpodscode]
      ,[nhs]
      ,[unique_epr_id]
      ,[incnumber_hash]
      ,[cb_datasetref]
FROM [PCR]


----Append PrimarySurvey
INSERT INTO [src_StagingDatabase_YAS].[dbo].[PrimarySurvey]
(
[psyType]
      ,[psyResult]
      ,[psyCatHaemCAT]
      ,[psyCatHaemCELOX]
      ,[psyCatHaemTXA]
      ,[psyCatHaemPressureDressing]
      ,[psyCatHaemFluids]
      ,[psyCatHaemDeceased]
      ,[psyCatHaemPosRArm]
      ,[psyCatHaemPosLArm]
      ,[psyCatHaemPosRLeg]
      ,[psyCatHaemPosLLeg]
      ,[psyCatHaemPosOther]
      ,[psyTime]
      ,[unique_epr_id]
      ,[cb_datasetref]
	  )

SELECT [psyType]
      ,[psyResult]
      ,[psyCatHaemCAT]
      ,[psyCatHaemCELOX]
      ,[psyCatHaemTXA]
      ,[psyCatHaemPressureDressing]
      ,[psyCatHaemFluids]
      ,[psyCatHaemDeceased]
      ,[psyCatHaemPosRArm]
      ,[psyCatHaemPosLArm]
      ,[psyCatHaemPosRLeg]
      ,[psyCatHaemPosLLeg]
      ,[psyCatHaemPosOther]
      ,[psyTime]
      ,[unique_epr_id]
      ,[cb_datasetref]
FROM [PrimarySurvey]


