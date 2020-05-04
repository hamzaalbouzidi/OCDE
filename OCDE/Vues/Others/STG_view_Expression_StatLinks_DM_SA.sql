/* CREATE view [dbo].[view_Expression_StatLinks_DM_SA]
AS

SELECT [Expression_ExternalID]
      ,SA.[ExternalSource]
      ,[DOI]
      ,[ISSN] 
      ,CASE WHEN [Title] is null then '' else [Title] END as [Title]
      ,[SubTitle] 
      ,[Language].Language_ID
      ,Directorate.Directorate_ID
      ,Theme.Theme_ID
      ,IGO.[IGO_ID]
      ,119 as [ObjectType_ID]
      ,[FirstRelease_Date]
      ,[iLibraryURLAlias] 
      ,[FirstExportDate]
      ,[LatestExportDate]
      ,[LatestDeletionDate] 


	FROM 
	
			(SELECT CAST([Exp].DOI  as nvarchar(100)) as  Expression_ExternalID  
				  ,'SL' as ExternalSource
				  ,[Exp].[DOI]
				  ,[Exp].ISSN as ISSN 
				  ,[Exp].[Title]
				  ,[Exp].[SubTitle] 
				  ,[Exp].[Language] as Language_ExternalID
				  ,[Exp].[Directorate] as Directorate_ExternalID
				  ,[Exp].[Theme] as Theme_ExternalID
				  ,[Exp].[IGOId] as IGO_ExternalID
				  ,[Exp].[ObjectTypeId] as ObjectType_ExternalID
				  ,[Exp].[FirstReleaseDate] as [FirstRelease_Date]
				  ,[Exp].[FirstExportDate] as [FirstExportDate]
				  ,[Exp].[LatestExportDate] as [LatestExportDate]
				  ,[Exp].[LatestDeletionDate] as [LatestDeletionDate]
				  ,[Exp].[iLibraryURLAlias]
			  FROM  [dbo].[Expression_StatLink_OPKV3]  [Exp]

			)	

	 SA


	INNER JOIN Language_DM [Language]
		ON [Language].Language_ExternalID = (SA.[Language_ExternalID] collate Latin1_General_CI_AS)
		AND [Language].ExternalSource = 'KV3'
		AND [Language].IsCurrent = 1
		AND [Language].NA_Import = 0
	INNER JOIN Directorate_DM Directorate
		ON Directorate.Directorate_ExternalID = (SA.Directorate_ExternalID collate Latin1_General_CI_AS)
		AND Directorate.ExternalSource = 'KV3'
		AND Directorate.IsCurrent = 1 
		AND Directorate.NA_Import = 0
	INNER JOIN Theme_DM Theme
		ON Theme.Theme_ExternalID = (SA.Theme_ExternalID collate Latin1_General_CI_AS)
		AND Theme.ExternalSource  = 'KV3'
		AND Theme.IsCurrent = 1
		AND Theme.NA_Import = 0
	INNER JOIN IGO_DM IGO
		ON IGO.IGO_ExternalID = SA.Igo_ExternalID
		AND IGO.ExternalSource = 'KV3'
		AND IGO.IsCurrent = 1
		AND IGO.NA_Import = 0
	 */