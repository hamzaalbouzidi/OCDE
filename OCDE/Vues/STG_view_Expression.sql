﻿CREATE VIEW [stg].[view_Expression] as

SELECT [DOI]
      ,[ProductId]
      ,[ISSN]
      ,[Title]
      ,[Subtitle]
      ,[ItemType]
      ,[Language]
      ,[Theme]
      ,[Directorate]
      ,[IgoId]
      ,[ObjectTypeId]
      ,[FirstReleaseDate]
      ,[FirstExportDate]
      ,[LatestExportDate]
      ,[LatestDeletionDate]
      ,[iLibraryURLAlias]
	  ,[iLibraryAccessTypeId]
   FROM [stg].view_US_Expression
