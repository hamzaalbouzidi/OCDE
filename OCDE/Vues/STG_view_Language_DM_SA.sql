CREATE view [stg].[view_Language_DM_SA] as

select
 Language_ExternalID collate Latin1_General_CI_AS  as Language_ExternalID,
 ExternalSource collate Latin1_General_CI_AS  as ExternalSource,
 Language_Lib_EN collate Latin1_General_CI_AS  as Language_Lib_EN,
 Language_Lib_FR collate Latin1_General_CI_AS  as Language_Lib_FR,
 [ISOCode] collate Latin1_General_CI_AS  as [ISOCode],
 [ISOCode3] collate Latin1_General_CI_AS  as [ISOCode3]
from 

(
SELECT [Language] AS Language_ExternalID
	  ,'KV3' AS ExternalSource
      ,[EnglishDesc] as Language_Lib_EN
      ,[FrenchDesc] as Language_Lib_FR
	  ,[Language] as [ISOCode] 
	  ,ISO3 as [ISOCode3] 
  FROM [stg].[view_US_Language]) Lang
