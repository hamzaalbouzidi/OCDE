CREATE view [stg].[view_Expression_DM_SA]
AS

SELECT [Expression_ExternalID]
      ,SA.[ExternalSource]
      ,[DOI]
      ,[ISSN] 
      ,[Title]
      ,[SubTitle] 
      ,[Language].Language_ID
      ,Directorate.Directorate_ID
      ,Theme.Theme_ID
      ,IGO.[IGO_ID]
      ,ObjectType.[ObjectType_ID]
      ,[FirstRelease_Date]
      ,[iLibraryURLAlias] 
      ,[FirstExportDate]
      ,[LatestExportDate]
      ,[LatestDeletionDate] 

	FROM
		[stg].STG_Expression_DM_SA_OP SA
	INNER JOIN [dwh].Language_DM [Language]
		ON [Language].Language_ExternalID = SA.[Language_ExternalID]
		AND [Language].ExternalSource = SA.ExternalSource
		AND [Language].IsCurrent = 1
		AND [Language].NA_Import = 0
	INNER JOIN [dwh].Directorate_DM Directorate
		ON Directorate.Directorate_ExternalID = SA.Directorate_ExternalID
		AND Directorate.ExternalSource = SA.ExternalSource
		AND Directorate.IsCurrent = 1
		AND Directorate.NA_Import = 0
	INNER JOIN [dwh].Theme_DM Theme
		ON Theme.Theme_ExternalID = SA.Theme_ExternalID
		AND Theme.ExternalSource = SA.ExternalSource
		AND Theme.IsCurrent = 1
		AND Theme.NA_Import = 0
	INNER JOIN [dwh].IGO_DM IGO
		ON IGO.IGO_ExternalID = SA.Igo_ExternalID
		AND IGO.ExternalSource = SA.ExternalSource
		AND IGO.IsCurrent = 1
		AND IGO.NA_Import = 0
	INNER JOIN [dwh].ObjectType_DM ObjectType
		ON ObjectType.ObjectType_ExternalID = CAST(SA.ObjectType_ExternalID as nvarchar(100))
		AND ObjectType.ExternalSource = SA.ExternalSource
		AND ObjectType.IsCurrent = 1
		AND ObjectType.NA_Import = 0