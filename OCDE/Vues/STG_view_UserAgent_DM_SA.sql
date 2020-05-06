/*USE [STG_UsageStat]
GO



CREATE view [stg].[view_UserAgent_DM_SA]
AS
SELECT 
      [STG_ILibraryLog_TMP].[UserAgent]
  FROM [stg].[STG_ILibraryLog_TMP]
  LEFT OUTER JOIN [DWH_UsageStat].[dwh].UserAgent_DM ON [DWH_UsageStat].[dwh].UserAgent_DM.UserAgent = [STG_ILibraryLog_TMP].UserAgent
  WHERE  [DWH_UsageStat].[dwh].UserAgent_DM.UserAgent IS NULL
  GROUP BY [STG_ILibraryLog_TMP].[UserAgent]

GO*/



