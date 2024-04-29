#Install the necessary packages 
install.packages(c("tidyverse","odbc", "writexl", "openxlsx", "writexl"))

#Call the libraries 
library(tidyverse)
library(DBI)
library(odbc)
library(writexl)

#Edit to your space CB_MYSPACE_SEE

bib_ae <- dbConnect(odbc::odbc(), 
                    driver = "SQL Server", 
                    server = "BHTS-CONYDEVWD2", 
                    database = "CB_MYSPACE_SEE", 
                    Trusted_Connection = "True")

``
#Loading ADSItem.rds into SQL

# Load data from RDS file
#point to file path of the RDS file 
#change all cases of \ to /

data1 <- readRDS("D:/ConnectedBradford/Scripts/SourceFilesIn/YAS/YAS-ePR-2019-to-2023-cohort2/ADSItem.rds")

#set as dataframe 

ADSItem_frame <- data.frame(data1)

# Export data to SQL Server
dbWriteTable(bib_ae, "ADSItem", ADSItem_frame, overwrite = TRUE)





# Loading InterventionsAirway.rds into SQL

data2 <- readRDS("D:/ConnectedBradford/Scripts/SourceFilesIn/YAS/YAS-ePR-2019-to-2023-cohort2/InterventionsAirway.rds")

#set as dataframe 
InterventionsAirway_frame <- data.frame(data2)

# Export data to SQL Server
dbWriteTable(bib_ae, "InterventionsAirway", InterventionsAirway_frame , overwrite = TRUE)



#Loading Assessment.rds into SQL

# Load data from RDS file
#point to file path of the RDS file 
#change all cases of \ to /

data3 <- readRDS("D:/ConnectedBradford/Scripts/SourceFilesIn/YAS/YAS-ePR-2019-to-2023-cohort2/Assessment.rds")

#set as a dataframe 
Assessment_frame <- data.frame(data3)

# Export data to SQL Server
dbWriteTable(bib_ae, "Assessment", Assessment_frame, overwrite = TRUE)





#Loading InterventionsCannulation.rds into SQL
# Load data from RDS file
#point to file path of the RDS file 
#change all cases of \ to /

data4 <- readRDS("D:/ConnectedBradford/Scripts/SourceFilesIn/YAS/YAS-ePR-2019-to-2023-cohort2/InterventionsCannulation.rds")

#set as a dataframe 
InterventionsCannulation_frame <- data.frame(data4)

# Export data to SQL Server
dbWriteTable(bib_ae, "InterventionsCannulationt", InterventionsCannulation_frame, overwrite = TRUE)






#Loading InterventionsCannulation.rds into SQL
# Load data from RDS file
#point to file path of the RDS file 
#change all cases of \ to /

data5 <- readRDS("D:/ConnectedBradford/Scripts/SourceFilesIn/YAS/YAS-ePR-2019-to-2023-cohort2/InterventionsClinicalProc.rds")

#set as a dataframe 
InterventionsClinicalProc_frame <- data.frame(data5)

# Export data to SQL Server
dbWriteTable(bib_ae, "InterventionsClinicalProc", InterventionsClinicalProc_frame, overwrite = TRUE)





#Loading InterventionsDrugAdmin.rds into SQL
# Load data from RDS file
#point to file path of the RDS file 
#change all cases of \ to /

data6 <- readRDS("D:/ConnectedBradford/Scripts/SourceFilesIn/YAS/YAS-ePR-2019-to-2023-cohort2/InterventionsDrugAdmin.rds")

#set as a dataframe 
InterventionsDrugAdmin_frame <- data.frame(data6)

# Export data to SQL Server
dbWriteTable(bib_ae, "InterventionsDrugAdmin", InterventionsDrugAdmin_frame, overwrite = TRUE)






#Loading InterventionsExtrication.rds into SQL
# Load data from RDS file
#point to file path of the RDS file 
#change all cases of \ to /

data7 <- readRDS("D:/ConnectedBradford/Scripts/SourceFilesIn/YAS/YAS-ePR-2019-to-2023-cohort2/InterventionsExtrication.rds")

#set as a dataframe 
InterventionsExtrication_frame <- data.frame(data7)

# Export data to SQL Server
dbWriteTable(bib_ae, "InterventionsExtrication", InterventionsExtrication_frame, overwrite = TRUE)






#Loading InterventionsIntubation.rds into SQL
# Load data from RDS file
#point to file path of the RDS file 
#change all cases of \ to /

data8 <- readRDS("D:/ConnectedBradford/Scripts/SourceFilesIn/YAS/YAS-ePR-2019-to-2023-cohort2/InterventionsIntubation.rds")

#set as a dataframe 

InterventionsIntubation_frame <- data.frame(data8)

# Export data to SQL Server
dbWriteTable(bib_ae, "InterventionsIntubation", InterventionsIntubation_frame, overwrite = TRUE)





#Loading InterventionsPatAdvice.rds into SQL
# Load data from RDS file
#point to file path of the RDS file 
#change all cases of \ to /

data9 <- readRDS("D:/ConnectedBradford/Scripts/SourceFilesIn/YAS/YAS-ePR-2019-to-2023-cohort2/InterventionsPatAdvice.rds")

#set as a dataframe 
InterventionsPatAdvice_frame <- data.frame(data9)

# Export data to SQL Server
dbWriteTable(bib_ae, "InterventionsPatAdvice", InterventionsPatAdvice_frame, overwrite = TRUE)






#Loading InterventionsResuscitation.rds into SQL
# Load data from RDS file
#point to file path of the RDS file 
#change all cases of \ to /

data10 <- readRDS("D:/ConnectedBradford/Scripts/SourceFilesIn/YAS/YAS-ePR-2019-to-2023-cohort2/InterventionsResuscitation.rds")

#set as a dataframe 

InterventionsResuscitation_frame <- data.frame(data10)

# Export data to SQL Server
dbWriteTable(bib_ae, "InterventionsResuscitation", InterventionsResuscitation_frame, overwrite = TRUE)






#Loading Mobility.rds into SQL
# Load data from RDS file
#point to file path of the RDS file 
#change all cases of \ to /

data11 <- readRDS("D:/ConnectedBradford/Scripts/SourceFilesIn/YAS/YAS-ePR-2019-to-2023-cohort2/Mobility.rds")

#set as a dataframe 

Mobility_frame <- data.frame(data11)

# Export data to SQL Server
dbWriteTable(bib_ae, "Mobility", Mobility_frame, overwrite = TRUE)



#Loading Observations.rds into SQL
# Load data from RDS file
#point to file path of the RDS file 
#change all cases of \ to /

data12 <- readRDS("D:/ConnectedBradford/Scripts/SourceFilesIn/YAS/YAS-ePR-2019-to-2023-cohort2/Observations.rds")

#set as a dataframe 

Observations_frame <- data.frame(data12)

# Export data to SQL Server
dbWriteTable(bib_ae, "Observations", Observations_frame, overwrite = TRUE)




#Loading ObservationsECG.rds into SQL
# Load data from RDS file
#point to file path of the RDS file 
#change all cases of \ to /

data13 <- readRDS("D:/ConnectedBradford/Scripts/SourceFilesIn/YAS/YAS-ePR-2019-to-2023-cohort2/ObservationsECG.rds")

#set as a dataframe 

ObservationsECG_frame <- data.frame(data13)

# Export data to SQL Server
dbWriteTable(bib_ae, "ObservationsECG", ObservationsECG_frame, overwrite = TRUE)



#Loading ObservationsFAST.rds into SQL
# Load data from RDS file
#point to file path of the RDS file 
#change all cases of \ to /

data14 <- readRDS("D:/ConnectedBradford/Scripts/SourceFilesIn/YAS/YAS-ePR-2019-to-2023-cohort2/ObservationsFAST.rds")

#set as a dataframe 

ObservationsFAST_frame <- data.frame(data14)

# Export data to SQL Server
dbWriteTable(bib_ae, "ObservationsFAST", ObservationsFAST_frame, overwrite = TRUE)




#Loading ObservationsUTR.rds into SQL
# Load data from RDS file
#point to file path of the RDS file 
#change all cases of \ to /

data15 <- readRDS("D:/ConnectedBradford/Scripts/SourceFilesIn/YAS/YAS-ePR-2019-to-2023-cohort2/ObservationsUTR.rds")

#set as a dataframe 

ObservationsUTR_frame <- data.frame(data15)

# Export data to SQL Server
dbWriteTable(bib_ae, "ObservationsUTR", ObservationsUTR_frame, overwrite = TRUE)





#Loading PatientOutcome.rds into SQL
# Load data from RDS file
#point to file path of the RDS file 
#change all cases of \ to /

data16 <- readRDS("D:/ConnectedBradford/Scripts/SourceFilesIn/YAS/YAS-ePR-2019-to-2023-cohort2/PatientOutcome.rds")

#set as a dataframe 
PatientOutcome_frame <- data.frame(data16)

# Export data to SQL Server
dbWriteTable(bib_ae, "PatientOutcome", PatientOutcome_frame, overwrite = TRUE)





#Loading PatientOutcomeNotification.rds into SQL
# Load data from RDS file
#point to file path of the RDS file 
#change all cases of \ to /

data17 <- readRDS("D:/ConnectedBradford/Scripts/SourceFilesIn/YAS/YAS-ePR-2019-to-2023-cohort2/PatientOutcomeNotification.rds")

#set as a dataframe 
PatientOutcomeNotification_frame <- data.frame(data17)

# Export data to SQL Server
dbWriteTable(bib_ae, "PatientOutcomeNotification", PatientOutcomeNotification_frame, overwrite = TRUE)



#Loading PatientOutcomeReferral.rds into SQL
# Load data from RDS file
#point to file path of the RDS file 
#change all cases of \ to /

data18 <- readRDS("D:/ConnectedBradford/Scripts/SourceFilesIn/YAS/YAS-ePR-2019-to-2023-cohort2/PatientOutcomeReferral.rds")

#set as a dataframe 
PatientOutcomeReferral_frame <- data.frame(data18)

# Export data to SQL Server
dbWriteTable(bib_ae, "PatientOutcomeReferral", PatientOutcomeReferral_frame, overwrite = TRUE)





#Loading PatientOutcomeRefusal.rds into SQL
# Load data from RDS file
#point to file path of the RDS file 
#change all cases of \ to /

data19 <- readRDS("D:/ConnectedBradford/Scripts/SourceFilesIn/YAS/YAS-ePR-2019-to-2023-cohort2/PatientOutcomeRefusal.rds")

#set as a dataframe 
PatientOutcomeRefusal_frame <- data.frame(data19)

# Export data to SQL Server

dbWriteTable(bib_ae, "PatientOutcomeRefusal", PatientOutcomeRefusal_frame, overwrite = TRUE)





#Loading PCR.rds into SQL
# Load data from RDS file
#point to file path of the RDS file 
#change all cases of \ to /

data20 <- readRDS("D:/ConnectedBradford/Scripts/SourceFilesIn/YAS/YAS-ePR-2019-to-2023-cohort2/PCR.rds")

#set as a dataframe 
PCR_frame <- data.frame(data20)

# Export data to SQL Server
dbWriteTable(bib_ae, "PCR", PCR_frame, overwrite = TRUE)





#Loading PCR.rds into SQL
# Load data from RDS file
#point to file path of the RDS file 
#change all cases of \ to /

data20 <- readRDS("D:/ConnectedBradford/Scripts/SourceFilesIn/YAS/YAS-ePR-2019-to-2023-cohort2/PCR.rds")

#set as a dataframe 

PCR_frame <- data.frame(data20)

# Export data to SQL Server
dbWriteTable(bib_ae, "PCR", PCR_frame, overwrite = TRUE)




#Loading PrimarySurvey.rds into SQL
# Load data from RDS file
#point to file path of the RDS file 
#change all cases of \ to /

data21 <- readRDS("D:/ConnectedBradford/Scripts/SourceFilesIn/YAS/YAS-ePR-2019-to-2023-cohort2/PrimarySurvey.rds")

#set as a dataframe 
PrimarySurvey_frame <- data.frame(data21)

# Export data to SQL Server
dbWriteTable(bib_ae, "PrimarySurvey", PrimarySurvey_frame, overwrite = TRUE)















