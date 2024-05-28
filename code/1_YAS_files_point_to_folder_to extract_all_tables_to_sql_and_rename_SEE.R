#install.packages("DBI")
#install.packages("odbc")
#install.packages("dplyr")

library(DBI)
library(odbc)
library(dplyr)

# REMEMBER TO CHANGE THE DATABASE AND THE FOLDERNAME ! 

bib_ae <- dbConnect(odbc::odbc(), 
                    driver = "SQL Server", 
                    server = "BHTS-CONYDEVWD2", 
                    database = "CB_MYSPACE_JDB", 
                    Trusted_Connection = "True")


#This function extract and rename the table names in a directory
# Function to process all RDS files in a directory
process_rds_files <- function(directory, bib_ae ) {
  # List all RDS files in the directory
  rds_files <- list.files(directory, pattern = "\\.rds$", full.names = TRUE)
  
  # Loop over each RDS file
  for (rds_file in rds_files) {
    # Extract the base name of the file (without extension)
    table_name <- tools::file_path_sans_ext(basename(rds_file))
    
    # Replace any invalid characters for SQL table names if needed
    table_name <- gsub("[^a-zA-Z0-9]", "_", table_name)
    
    # Load data from RDS file
    data <- readRDS(rds_file)
    
    # Convert to data frame
    data_frame <- data.frame(data)
    
    # Export data to SQL Server
    dbWriteTable(bib_ae, table_name, data_frame, overwrite = TRUE)
    
    # Print status
    message(paste("Successfully exported", table_name, "to SQL Server"))
  }
}


# Specify the directory containing your RDS files
rds_directory <- ("D:\\ConnectedBradford\\Scripts\\SourceFilesIn\\YAS\\YAS-ePR-2024-05-13-to-2024-05-19")

# Call the function to process and export all RDS files
process_rds_files(rds_directory, bib_ae)
