create view [stg].[view_ILibraryLog_SA_Rejected]
as

SELECT TMP.[EVENTLOGID]
      ,[IDENTITYID]
      ,[EVENT_TIME]
      ,[SESSIONID]
      ,[IPADDRESS]
      ,[USERAGENT]
      ,[ITEMID]
      ,[MIME_TYPE]
      ,[LICENCE_TYPE]
      ,[SOURCE]
      ,[DOI]
	  ,[Manifestation_ID]
      ,[Registration_ID]
      ,[File_Date]
      ,[Import_Date]
  FROM [stg].[STG_ILibraryLog_TMP] TMP 
  LEFT  OUTER JOIN [stg].[STG_iLibraryLog_SA] SA ON TMP.EVENTLOGID=SA.EventLogID where [Registration_ID] is null or [Manifestation_ID] is null
