/*create view [dbo].[view_KV3_IGO] as

SELECT [IGOId]
      ,[EnglishDesc] as [EnglishDescription]
      ,ISNULL([FrenchDesc], [EnglishDesc]) as [FrenchDescription]
      ,[EnglishDesc] as [EnglishAcronym]
      ,ISNULL([FrenchDesc], [EnglishDesc]) as [FrenchAcronym]
      ,[DOIPrefix]
      ,NULL as [iLibraryLogoFile]
  FROM [KappaV3_Daily].[dbo].[KV3_IGO]
GO*/