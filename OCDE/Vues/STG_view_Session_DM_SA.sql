CREATE view [stg].[view_Session_DM_SA]
AS
SELECT 
      [STG_ILibraryLog_TMP].[Sessionid] as [Session]
  FROM [stg].[STG_ILibraryLog_TMP]
  LEFT OUTER JOIN [stg].Session_DM ON [stg].Session_DM.[Session] = [STG_ILibraryLog_TMP].[Sessionid]
  WHERE  [stg].Session_DM.[Session] IS NULL
  GROUP BY [STG_ILibraryLog_TMP].[Sessionid]
