rem  export section
rem 111
rem sqlcmd -S bhts-conydevwd2 -d src_StagingDatabase_YAS -E -Q "set nocount on; select  * from [src_YAS_111_v3] " -o "src_YAS_111.csv" -W -u -s"|"

rem 999
rem sqlcmd -S bhts-conydevwd2 -d src_StagingDatabase_YAS -E -Q "set nocount on; select * from [src_YAS_999_v3] " -o "src_YAS_999.csv" -W -u -s"|"

rem CAD
rem sqlcmd -S bhts-conydevwd2 -d src_StagingDatabase_YAS -E -Q "set nocount on; select * from [src_YAS_CAD_v3] " -o "src_YAS_CAD.csv" -W -u -s"|"

rem IUC
rem sqlcmd -S bhts-conydevwd2 -d src_StagingDatabase_YAS -E -Q "set nocount on; select  * from [src_YAS_IUC_v4] " -o "src_YAS_IUC.csv" -W -u -s"|"

rem PTS
rem sqlcmd -S bhts-conydevwd2 -d src_StagingDatabase_YAS -E -Q "set nocount on; select * from [src_YAS_PTS_v3] " -o "src_YAS_PTS.csv" -W -u -s"~"

rem EPR
rem sqlcmd -S bhts-conydevwd2 -d src_StagingDatabase_YAS -E -Q "set nocount on; SELECT * FROM src_YAS_EPR_v3 " -o "src_YAS_EPR.csv" -W -u -s"|"

rem EPR
rem sqlcmd -S bhts-conydevwd2 -d src_StagingDatabase_YAS -E -Q "set nocount on; SELECT * FROM src_abandoned_calls" -o "src_abandoned_calls.csv" -W -u -s"|"

src_abandoned_calls


rem type src_YAS_111.csv > src_YAS_111.txt
rem type src_YAS_999.csv > src_YAS_999.txt
rem type src_YAS_IUC.csv > src_YAS_IUC.txt
rem type src_YAS_CAD.csv > src_YAS_CAD.txt
rem type src_YAS_PTS.csv > src_YAS_PTS.txt
rem type src_YAS_EPR.csv > src_YAS_EPR.txt
rem type src_abandoned_calls.csv > src_abandoned_calls.txt


del src_*.csv 

rem rename src_YAS_111.txt src_YAS_111.csv
rem rename src_YAS_999.txt src_YAS_999.csv
rem rename src_YAS_IUC.txt src_YAS_IUC.csv
rem rename src_YAS_CAD.txt src_YAS_CAD.csv
rem rename src_YAS_PTS.txt src_YAS_PTS.csv
rem rename src_YAS_EPR.txt src_YAS_EPR.csv
rem rename src_abandoned_calls.txt src_abandoned_calls.csv

rem now replace nulls 

Powershell.exe -executionpolicy remotesigned -File D:\JDB\Scripts\src_StagingDatabase\changer0.ps1


rem update main records section

sqlcmd -S bhts-conydevwd2 -d src_StagingDatabase_YAS -E -Q "update [src_YAS_111_v3] set LoadedToGCP = GetDate() where LoadedToGCP is null  "
sqlcmd -S bhts-conydevwd2 -d src_StagingDatabase_YAS -E -Q "update [src_YAS_999_v3] set LoadedToGCP = GetDate() where LoadedToGCP is null  "
sqlcmd -S bhts-conydevwd2 -d src_StagingDatabase_YAS -E -Q "update [src_YAS_CAD_v3] set LoadedToGCP = GetDate() where LoadedToGCP is null  "
sqlcmd -S bhts-conydevwd2 -d src_StagingDatabase_YAS -E -Q "update [src_YAS_IUC_v3] set LoadedToGCP = GetDate() where LoadedToGCP is null  "
sqlcmd -S bhts-conydevwd2 -d src_StagingDatabase_YAS -E -Q "update [src_YAS_PTS_v3] set LoadedToGCP = GetDate() where LoadedToGCP is null  "
sqlcmd -S bhts-conydevwd2 -d src_StagingDatabase_YAS -E -Q "update [src_YAS_EPR_v3] set LoadedToGCP = GetDate() where LoadedToGCP is null  "
sqlcmd -S bhts-conydevwd2 -d src_StagingDatabase_YAS -E -Q "update [src_abandoned_calls] set LoadedToGCP = GetDate() where LoadedToGCP is null  "



