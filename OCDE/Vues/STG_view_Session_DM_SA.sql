/*
USE [STG_UsageStat]
GO

CREATE view [stg].[view_Session_DM_SA]
AS
SELECT 
      [STG_ILibraryLog_TMP].[Sessionid] as [Session]
  FROM [stg].[STG_ILibraryLog_TMP]
  LEFT OUTER JOIN [DWH_UsageStat].[dwh].Session_DM ON [DWH_UsageStat].[dwh].Session_DM.[Session] = [STG_ILibraryLog_TMP].[Sessionid]
  WHERE  [DWH_UsageStat].[dwh].Session_DM.[Session] IS NULL
  GROUP BY [STG_ILibraryLog_TMP].[Sessionid]
GO

*/
