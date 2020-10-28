CREATE  VIEW [stg].[view_Source_DM_SA] AS

SELECT 
       substring([STG_ILibraryLog_TMP].[Source],1,900) as source
      ,1 as SourceLight_ID
  FROM stg.[STG_ILibraryLog_TMP]
  LEFT OUTER JOIN [dwh].[Source_DM] ON [STG_ILibraryLog_TMP].[Source] = [dwh].[Source_DM].[Source]
  WHERE [dwh].[Source_DM].[Source] IS NULL
  GROUP BY [STG_ILibraryLog_TMP].[Source]
