CREATE view [stg].[view_UserAgent_DM_SA]
AS
SELECT 
      [STG_ILibraryLog_TMP].[UserAgent]
  FROM [stg].[STG_ILibraryLog_TMP]
  LEFT OUTER JOIN (select [UserAgent] from [stg].UserAgent_DM) UserAgent_DM ON UserAgent_DM.UserAgent = [STG_ILibraryLog_TMP].UserAgent
  WHERE  UserAgent_DM.UserAgent IS NULL
  GROUP BY [STG_ILibraryLog_TMP].[UserAgent]