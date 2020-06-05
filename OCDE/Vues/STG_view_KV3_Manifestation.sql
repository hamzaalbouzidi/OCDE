create view [stg].[view_KV3_Manifestation] as

SELECT [ProductId]
      ,[DOI]
      ,[Medium]
      ,[FirstReleaseDate]
  FROM [stg].[view_US_Manifestation]
