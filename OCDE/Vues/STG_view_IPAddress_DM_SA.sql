CREATE view [stg].[view_IPAddress_DM_SA]
AS
SELECT 
      [STG_ILibraryLog_TMP].[IPAddress]
  FROM [stg].[STG_ILibraryLog_TMP]
  LEFT OUTER JOIN [stg].IPAddress_DM ON [stg].IPAddress_DM.[IPAddress] = [STG_ILibraryLog_TMP].[IPAddress]
  WHERE [stg].IPAddress_DM.[IPAddress] IS NULL
  GROUP BY [STG_ILibraryLog_TMP].[IPAddress]

