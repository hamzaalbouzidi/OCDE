/*
CREATE VIEW [stg].[view_Expression_SA_Check_ExternalIDs]
AS
SELECT   CASE
			WHEN Language_DM.Language_ExternalID IS NULL		THEN 'Language_ExternalID not matched'
			WHEN Directorate_DM.Directorate_ExternalID IS NULL	THEN 'Directorate_ExternalID not matched'
			WHEN Theme_DM.Theme_ExternalID IS NULL				THEN 'Theme_ExternalID not matched'
			WHEN Igo_DM.Igo_ExternalID IS NULL					THEN 'Igo_ExternalID not matched'
			WHEN ObjectType_DM.ObjectType_ExternalID IS NULL	THEN 'ObjectType_ExternalID not matched'
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
	LEFT OUTER JOIN [DWH_UsageStat].[dwh].Language_DM 
		ON [DWH_UsageStat].[dwh].Language_DM.Language_ExternalID			= [stg].[STG_Expression_SA].[Language_ExternalID]
	LEFT OUTER JOIN [DWH_UsageStat].[dwh].Directorate_DM 
		ON [DWH_UsageStat].[dwh].Directorate_DM.Directorate_ExternalID	= [stg].[STG_Expression_SA].[Directorate_ExternalID]
	LEFT OUTER JOIN [DWH_UsageStat].[dwh].Theme_DM 
		ON [DWH_UsageStat].[dwh].Theme_DM.Theme_ExternalID				= [stg].[STG_Expression_SA].[Theme_ExternalID]
	LEFT OUTER JOIN [DWH_UsageStat].[dwh].Igo_DM 
		ON [DWH_UsageStat].[dwh].Igo_DM.Igo_ExternalID					= [stg].[STG_Expression_SA].[Igo_ExternalID]
	LEFT OUTER JOIN [DWH_UsageStat].[dwh].ObjectType_DM 
		ON [DWH_UsageStat].[dwh].ObjectType_DM.ObjectType_ExternalID		= [stg].[STG_Expression_SA].[ObjectType_ExternalID]
	WHERE  Language_DM.Language_ExternalID IS NULL
		OR Directorate_DM.Directorate_ExternalID IS NULL
		OR Theme_DM.Theme_ExternalID IS NULL
		OR Igo_DM.Igo_ExternalID IS NULL
		OR ObjectType_DM.ObjectType_ExternalID IS NULL
GO
*/