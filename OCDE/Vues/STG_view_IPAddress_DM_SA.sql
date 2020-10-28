CREATE view [stg].[view_IPAddress_DM_SA]
AS
SELECT 
      stg.[STG_ILibraryLog_TMP].[IPAddress]
  FROM [stg].[STG_ILibraryLog_TMP]
  LEFT OUTER JOIN [dwh].IPAddress_DM ON [dwh].IPAddress_DM.[IPAddress] = [STG_ILibraryLog_TMP].[IPAddress]
  WHERE [dwh].IPAddress_DM.[IPAddress] IS NULL
  GROUP BY [STG_ILibraryLog_TMP].[IPAddress]