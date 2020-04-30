/* CREATE view [dbo].[view_Theme_DM_SA] as

SELECT [Theme_ExternalID] collate Latin1_General_CI_AS as [Theme_ExternalID]
      ,[ExternalSource] collate Latin1_General_CI_AS as [ExternalSource]
      ,[Theme_Lib_EN] collate Latin1_General_CI_AS as [Theme_Lib_EN]
      ,[Theme_Lib_FR] collate Latin1_General_CI_AS as [Theme_Lib_FR]

	  FROM
	  (		
		SELECT 
			CAST([Theme] as varchar(20)) as  [Theme_ExternalID]
			,'KV3' as ExternalSource
			,[EnglishDesc] as [Theme_Lib_EN]
			,[FrenchDesc] as [Theme_Lib_FR]
		FROM [KappaV3_Daily].[dbo].[view_US_Theme]	
		 
		) SourceThemes
GO */