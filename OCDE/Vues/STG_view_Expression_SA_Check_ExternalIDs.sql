

CREATE VIEW [stg].[view_Expression_SA_Check_ExternalIDs]
AS
SELECT   CASE
			WHEN [dwh].Language_DM.Language_ExternalID IS NULL		THEN 'Language_ExternalID not matched'
			WHEN [dwh].Directorate_DM.Directorate_ExternalID IS NULL	THEN 'Directorate_ExternalID not matched'
			WHEN [dwh].Theme_DM.Theme_ExternalID IS NULL				THEN 'Theme_ExternalID not matched'
			WHEN [dwh].Igo_DM.Igo_ExternalID IS NULL					THEN 'Igo_ExternalID not matched'
			WHEN [dwh].ObjectType_DM.ObjectType_ExternalID IS NULL	THEN 'ObjectType_ExternalID not matched'
		 END AS Reason
		,[Expression_ExternalID]
		,[stg].[STG_Expression_SA].[ExternalSource]
		,[DOI]
		,[ISSN]
		,[EISSN]
		,[Title]
		,[SubTitle] 
		,[stg].[STG_Expression_SA].[ItemType]
		,[stg].[STG_Expression_SA].[Language_ExternalID]
		,[stg].[STG_Expression_SA].[Directorate_ExternalID]
		,[stg].[STG_Expression_SA].[Theme_ExternalID]
		,[stg].[STG_Expression_SA].[Igo_ExternalID]
		,[stg].[STG_Expression_SA].[ObjectType_ExternalID]
		,[FirstRelease_Date]
		,[iLibraryURLAlias]
		,[Parent]
		,[TopParent]
	FROM [stg].[STG_Expression_SA]
	LEFT OUTER JOIN [dwh].Language_DM 
		ON [dwh].Language_DM.Language_ExternalID			= [stg].[STG_Expression_SA].[Language_ExternalID]
	LEFT OUTER JOIN [dwh].Directorate_DM 
		ON [dwh].Directorate_DM.Directorate_ExternalID	= [stg].[STG_Expression_SA].[Directorate_ExternalID]
	LEFT OUTER JOIN [dwh].Theme_DM 
		ON [dwh].Theme_DM.Theme_ExternalID				= [stg].[STG_Expression_SA].[Theme_ExternalID]
	LEFT OUTER JOIN [dwh].Igo_DM 
		ON [dwh].Igo_DM.Igo_ExternalID					= [stg].[STG_Expression_SA].[Igo_ExternalID]
	LEFT OUTER JOIN [dwh].ObjectType_DM 
		ON [dwh].ObjectType_DM.ObjectType_ExternalID		= [stg].[STG_Expression_SA].[ObjectType_ExternalID]
	WHERE  Language_DM.Language_ExternalID IS NULL
		OR Directorate_DM.Directorate_ExternalID IS NULL
		OR Theme_DM.Theme_ExternalID IS NULL
		OR Igo_DM.Igo_ExternalID IS NULL
		OR ObjectType_DM.ObjectType_ExternalID IS NULL



