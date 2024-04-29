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
