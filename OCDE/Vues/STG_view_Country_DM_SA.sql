CREATE view [stg].[view_Country_DM_SA] as

SELECT 
	dbo.fn_asciiCodeInteger(convert(varchar(4),([Country]))) as Country_ExternalID
	,
	'KV3'  collate Latin1_General_CI_AS as ExternalSource
	,[Country] collate Latin1_General_CI_AS as Country_Code
	,LEFT([EnglishDesc],150) collate Latin1_General_CI_AS as Country_Lib_EN
	,LEFT([FrenchDesc],150) collate Latin1_General_CI_AS as Country_Lib_FR
	,LEFT([ISO2],10) collate Latin1_General_CI_AS as Country_ISO2Code 
  FROM [stg].[KV3_Country]
