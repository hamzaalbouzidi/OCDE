CREATE VIEW [stg].[View_StatLink_TMP_SA]
AS

SELECT


       convert(Date,[SL_DATE], 103) as [SL_DATE]	   
      ,cast([SL_TIME] as time(7)) as [SL_TIME]
      ,substring([FILENAME],1,900) as [FILENAME]
      ,substring([IPADDRESS],1,100) as [IPADDRESS]
      ,substring([USERAGENT],1,100) as [USERAGENT]
      ,substring([SOURCE] ,1,900) as [SOURCE]
FROM	
[stg].[STG_Statlink_File_SA]
