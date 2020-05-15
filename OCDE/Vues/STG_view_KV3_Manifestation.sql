/*
create view [stg].[view_KV3_Manifestation] as

SELECT [ProductId]
      ,[DOI]
      ,[Medium]
      ,[FirstReleaseDate]
  FROM [KappaV3_Daily].[dbo].[view_US_Manifestation]
GO
*/