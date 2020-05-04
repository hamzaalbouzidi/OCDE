/*
USE [STG_UsageStat]
GO


CREATE  VIEW [stg].[view_Source_DM_SA] AS

SELECT 
       substring([ILibraryLog_TMP].[Source],1,900) as source
      ,1 as SourceLight_ID
  FROM [DWH_UsageStat].[dwh].[ILibraryLog_TMP]
  LEFT OUTER JOIN [DWH_UsageStat].[dwh].[Source_DM] ON [ILibraryLog_TMP].[Source] = [Source_DM].[Source]
  WHERE [Source_DM].[Source] IS NULL
  GROUP BY [ILibraryLog_TMP].[Source]
GO


*/