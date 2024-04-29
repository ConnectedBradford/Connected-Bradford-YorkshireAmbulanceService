use [CB_MYSPACE_SEE]

--ResizeColumnsBasedONMaxDataLength2--

IF OBJECT_ID('tempdb..#space') IS NOT NULL DROP TABLE #space

DECLARE @TABLE_SCHEMA NVARCHAR(128);

DECLARE @TABLE_NAME NVARCHAR(128);

DECLARE @COLUMN_NAME NVARCHAR(128);

DECLARE @PARMS NVARCHAR(100);

DECLARE @DATA_TYPE NVARCHAR(128);

DECLARE @CHARACTER_MAXIMUM_LENGTH INT;

DECLARE @MAX_LEN NVARCHAR(10);

DECLARE @TSQL NVARCHAR(4000);

 

DECLARE DDLCursor CURSOR FAST_FORWARD FOR

SELECT TABLE_SCHEMA, TABLE_NAME, COLUMN_NAME, DATA_TYPE, case when CHARACTER_MAXIMUM_LENGTH = '-1' then '4000' else CHARACTER_MAXIMUM_LENGTH end
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME IN
-- (SELECT TABLE_NAME FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_TYPE = 'BASE TABLE' and TABLE_NAME like '%Cal%') -- use me for individual tables
 (SELECT TABLE_NAME FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_TYPE = 'BASE TABLE' ) -- use me for all tables in database
AND DATA_TYPE IN ('char','nchar','varchar','nvarchar')
AND (CHARACTER_MAXIMUM_LENGTH > 1 or CHARACTER_MAXIMUM_LENGTH <0)

OPEN DDLCursor;

 

SET @PARMS = N'@MAX_LENout nvarchar(10) OUTPUT';

 

CREATE TABLE #space (

     TABLE_SCHEMA NVARCHAR(128) NOT NULL

   , TABLE_NAME NVARCHAR(128) NOT NULL

   , COLUMN_NAME NVARCHAR(128) NOT NULL

   , DATA_TYPE NVARCHAR(128) NOT NULL

   , CHARACTER_MAXIMUM_LENGTH INT NOT NULL

   , ACTUAL_MAXIMUM_LENGTH INT NOT NULL

);


 

-- Perform the first fetch.

FETCH NEXT FROM DDLCursor

INTO @TABLE_SCHEMA, @TABLE_NAME, @COLUMN_NAME, @DATA_TYPE, @CHARACTER_MAXIMUM_LENGTH;

-- Check @@FETCH_STATUS to see if there are any more rows to fetch.

WHILE @@FETCH_STATUS = 0

BEGIN

   SET @tsql = 'select @MAX_LENout = cast(max(len(isnull('

             + QUOTENAME(@COLUMN_NAME) + ',''''))) as nvarchar(10)) from '

             + QUOTENAME(@TABLE_SCHEMA) + '.' + QUOTENAME(@TABLE_NAME);

  


   EXEC sp_executesql @tsql, @PARMS, @MAX_LENout = @MAX_LEN OUTPUT;

 -- ensures min col size = 1 --
     IF @MAX_LEN <1 set @MAX_LEN = 1 
  
   -- print @MAX_LEN
      

      

   IF CAST(@MAX_LEN as int) < @CHARACTER_MAXIMUM_LENGTH  -- not interested if lengths match

   BEGIN

       SET @tsql = 'alter table ['
                 + @TABLE_NAME 
				 +'] alter column ['
				 + @COLUMN_NAME + '] varchar('
				 +  @MAX_LEN + ')';

		begin tran
       EXEC sp_executesql @tsql;
		commit tran

	   print @tsql
   END;

   -- This is executed as long as the previous fetch succeeds.

   FETCH NEXT FROM DDLCursor INTO @TABLE_SCHEMA, @TABLE_NAME, @COLUMN_NAME, @DATA_TYPE, @CHARACTER_MAXIMUM_LENGTH;

END;

CLOSE DDLCursor;

DEALLOCATE DDLCursor;

-- rem me in or out depending on objectives --

--DBCC Shrinkdatabase (TRANS_BHTS835, 10);
--Go


-- Remember to rebuild any indexes disabled --



 
--  Exec msdb.dbo.sp_send_dbmail 
--@profile_name = 'ConyDev2016Mail',
--@from_address = 'BHTS-CONYDEVWD2@bthft.nhs.uk',
--@recipients = '07874650253@sms.bradfordhospitals.int',
--@body = 'Resizer ',
--@Subject = 'Resizer finished';