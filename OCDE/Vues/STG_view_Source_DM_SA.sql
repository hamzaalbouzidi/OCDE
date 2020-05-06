/*
USE [STG_UsageStat]
GO


CREATE  VIEW [stg].[view_Source_DM_SA] AS

SELECT 
       substring([STG_ILibraryLog_TMP].[Source],1,900) as source
      ,1 as SourceLight_ID
  FROM [STG_ILibraryLog_TMP]
  LEFT OUTER JOIN [DWH_UsageStat].[dwh].[Source_DM] ON [STG_ILibraryLog_TMP].[Source] = [DWH_UsageStat].[dwh].[Source_DM].[Source]
  WHERE [DWH_UsageStat].[dwh].[Source_DM].[Source] IS NULL
  GROUP BY [STG_ILibraryLog_TMP].[Source]
GO





*/