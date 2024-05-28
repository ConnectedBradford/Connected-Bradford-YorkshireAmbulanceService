use CB_MYSPACE_JDB

declare @table varchar(45)
declare @datasetref varchar(70) 

-- Amend this line to both add the cb_datasetref to any tables in your space that haven't got it.
-- and add this as the text in cb_datasetref
-- this shoudl be set for thise files where the zipfile identifies the date range.
-- eg for the .rds files 
set @datasetref = 'YAS-ePR-2024-05-13-to-2024-05-19'

-- amend the cursor below before you run this script 
 
 declare tablex cursor for 
  select table_name from INFORMATION_SCHEMA.TABLES 
 where table_name not in (select distinct table_name from INFORMATION_SCHEMA.COLUMNS where column_name ='cb_datasetref') 
 
 
 -- START OF THE CURSOR --

open tablex
fetch next from tablex into @table

while (@@fetch_status = 0) 
begin

declare @sql1 nvarchar(400)
declare @sql2 nvarchar(400)

begin tran

set @sql1 = 'Alter table [' +  @table + '] add cb_datasetref varchar(70) ';
--print(@sql1) 
exec (@sql1);



set @sql2 = 'update ' +  @table + ' set cb_datasetref = ''' + @datasetref + '''';

--print(@sql2) 
exec (@sql2);

commit tran

print '-' + @table + ' updated '

 fetch next from tablex into @table

end

close tablex
deallocate tablex

-- END OF THE CURSOR ---