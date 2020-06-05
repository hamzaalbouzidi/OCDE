CREATE view [stg].[view_Format_DM_SA] as

SELECT 
	M.Medium collate Latin1_General_CI_AS as Format_ExternalID
	,'KV3' collate Latin1_General_CI_AS as ExternalSource
	,M.MimeType collate Latin1_General_CI_AS as MimeType
	,M.EnglishDesc collate Latin1_General_CI_AS as Format_Lib_EN
	,M.FrenchDesc collate Latin1_General_CI_AS as Format_Lib_FR
FROM 
(
SELECT [Medium]
      ,[EnglishDesc]
      ,[FrenchDesc]
      ,[Medium_KV3]
      ,[MimeType]
  FROM [stg].[view_US_Medium] WHERE MimeType IS NOT NULL ) M
