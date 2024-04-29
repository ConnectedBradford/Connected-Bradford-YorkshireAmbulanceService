#Install the necessary packages 
install.packages(c("tidyverse","odbc", "writexl", "openxlsx", "writexl"))

#Call the libraries 
library(tidyverse)
library(DBI)
library(odbc)
library(writexl)

bib_ae <- dbConnect(odbc::odbc(), 
                    driver = "SQL Server", 
                    server = "BHTS-CONYDEVWD2", 
                    database = "CB_MYSPACE_SEE", 
                    Trusted_Connection = "True")


#RDS files can be converted to a CSV
# lets convert ADSItem
#point to file path of the RDS file 
#change all cases of \ to /

data <- readRDS("D:/ConnectedBradford/Scripts/SourceFilesIn/YAS/YAS-ePR-2019-to-2023-cohort2/ADSItem.rds")

#set as a dataframe 

ADSItem_frame <- data.frame(data)

#Convert to CSV

write.csv(ADSItem_frame, "ADSItem.csv", row.names = FALSE)
