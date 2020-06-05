create view [stg].[view_US_Language] as 

SELECT [Language]
      ,[EnglishDesc]
      ,[FrenchDesc]
      ,[ISO3]
  FROM [stg].[KV3_Language]