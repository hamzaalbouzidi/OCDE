/*
CREATE VIEW [stg].[view_Expression_SA_Check_Required]
AS
SELECT [Expression_ExternalID]
      ,[ExternalSource]
      ,[DOI]
      ,[ISSN]
      ,[EISSN]
      ,[Title]
      ,[SubTitle]
	  ,[ItemType]
      ,[Language_ExternalID]
      ,[Directorate_ExternalID]
      ,[Theme_ExternalID]
      ,[Igo_ExternalID]
      ,[ObjectType_ExternalID]
      ,[FirstRelease_Date]
      ,[iLibraryURLAlias]
      ,[Parent]
      ,[TopParent]
  FROM [stg].[STG_Expression_SA]
  WHERE ISNULL(Title,'') = ''
	  OR ISNULL ([ItemType],'') = ''
	  OR ISNULL ([Language_ExternalID],'') = ''
	  OR ISNULL ([Directorate_ExternalID],'') = ''
	  OR ISNULL ([Theme_ExternalID],'') = ''
	  OR ISNULL ([Igo_ExternalID],'') = ''
	  OR ISNULL ([ObjectType_ExternalID],'') = ''
GO

*/