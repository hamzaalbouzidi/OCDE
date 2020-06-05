create view [stg].[view_KV3_IGO] as

SELECT [IGOId]
      ,[EnglishDesc] as [EnglishDescription]
      ,ISNULL([FrenchDesc], [EnglishDesc]) as [FrenchDescription]
      ,[EnglishDesc] as [EnglishAcronym]
      ,ISNULL([FrenchDesc], [EnglishDesc]) as [FrenchAcronym]
      ,[DOIPrefix]
      ,NULL as [iLibraryLogoFile]
  FROM [stg].[KV3_IGO]
