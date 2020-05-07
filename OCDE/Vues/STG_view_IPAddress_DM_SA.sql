/* USE [STG_UsageStat]
GO

CREATE view [stg].[view_IPAddress_DM_SA]
AS
SELECT 
      [STG_ILibraryLog_TMP].[IPAddress]
  FROM [stg].[STG_ILibraryLog_TMP]
  LEFT OUTER JOIN [DWH_UsageStat].[dwh].IPAddress_DM ON [DWH_UsageStat].[dwh].IPAddress_DM.[IPAddress] = [STG_ILibraryLog_TMP].[IPAddress]
  WHERE  [DWH_UsageStat].[dwh].IPAddress_DM.[IPAddress] IS NULL
  GROUP BY [STG_ILibraryLog_TMP].[IPAddress]
GO
*/
