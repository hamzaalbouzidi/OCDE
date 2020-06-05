CREATE view [stg].[view_UserAgent_DM_SA]
AS
SELECT 
      [STG_ILibraryLog_TMP].[UserAgent]
  FROM [stg].[STG_ILibraryLog_TMP]
  LEFT OUTER JOIN [stg].UserAgent_DM ON [stg].UserAgent_DM.UserAgent = [STG_ILibraryLog_TMP].UserAgent
  WHERE  [stg].UserAgent_DM.UserAgent IS NULL
  GROUP BY [STG_ILibraryLog_TMP].[UserAgent]