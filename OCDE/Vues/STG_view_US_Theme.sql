create view [stg].[view_US_Theme] as 

SELECT [Theme]
      ,[EnglishDesc]
      ,[FrenchDesc]
  FROM [stg].[KV3_Theme]
