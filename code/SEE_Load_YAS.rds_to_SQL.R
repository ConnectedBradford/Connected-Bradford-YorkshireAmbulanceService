
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



#Loading ADSItem.rds into SQL

# Load data from RDS file
#point to file path of the RDS file 
#change all cases of \ to /

data <- readRDS("D:/ConnectedBradford/Scripts/SourceFilesIn/YAS/YAS-ePR-2019-to-2023-cohort2/ADSItem.rds")

#set as a dataframe 

ADSItem_frame <- data.frame(data)

# Export data to SQL Server. "ADSItem" is the nname you want the table to have on SQL.

dbWriteTable(bib_ae, "ADSItem", ADSItem_frame, overwrite = TRUE)

