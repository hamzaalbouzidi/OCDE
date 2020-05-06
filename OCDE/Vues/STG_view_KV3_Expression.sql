/*
USE [STG_UsageStat]
GO



CREATE VIEW [stg].[view_KV3_Expression] as

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
  FROM [KappaV3_Daily].[dbo].[view_US_Expression]


GO



*/