CREATE VIEW [stg].[view_Expression_SA_OP] AS

SELECT [Exp].DOI as Expression_ExternalID
      ,'KV3' as ExternalSource
      ,[Exp].[DOI]
      ,[Exp].ISSN as ISSN
      ,'' as EISSN
      ,[Exp].[Title]
      ,[Exp].[SubTitle]
      ,[Exp].[ItemType]
      ,[Exp].[Language] as Language_ExternalID
      ,[Exp].[Directorate] as Directorate_ExternalID
      ,[Exp].[Theme] as Theme_ExternalID
      ,[Exp].[IGOId] as IGO_ExternalID
      ,[Exp].[ObjectTypeId] as ObjectType_ExternalID
      ,[Exp].[FirstReleaseDate] as [FirstRelease_Date]
      ,[Exp].[iLibraryURLAlias]
      ,[Exp].[FirstExportDate] as [FirstExportDate]
      ,[Exp].[LatestExportDate] as [LatestExportDate]
      ,[Exp].[LatestDeletionDate] as [LatestDeletionDate]
  FROM [stg].[STG_Expression_OP] [Exp]
