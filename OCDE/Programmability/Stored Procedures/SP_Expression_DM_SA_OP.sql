﻿/* CREATE PROCEDURE [stg].[SP_Expression_DM_SA_OP]
AS
TRUNCATE TABLE [stg].[PS_Expression_DM_SA_OP]
SELECT [ProductId] ,
   [Directorate] ,
    [Main]  
INTO stg.#KV3_ProductDirectorate2 from stg.KV3_ProductDirectorate 
  
CREATE CLUSTERED INDEX CCI_ProductDirectorate ON stg.#KV3_ProductDirectorate2([ProductId]); 

 


SELECT [ObjectTypeId]
     ,[EnglishDesc]
      ,[FrenchDesc] 
INTO stg.#KV3_ObjectType2 from stg.KV3_ObjectType 
  
CREATE CLUSTERED INDEX CCI_ObjectType ON stg.#KV3_ObjectType2([ObjectTypeId]); 

 


SELECT [ProductId]
     ,[Theme]
     ,[Main]
INTO stg.#KV3_ProductTheme2 from stg.KV3_ProductTheme 
  
CREATE CLUSTERED INDEX CCI_ProductTheme ON stg.#KV3_ProductTheme2([ProductId]); 

 


SELECT [ProductId]
      ,[Language]
     ,[Title]
      ,[Subtitle]
      ,[Abstract]
      ,[ShortAbstract]
INTO stg.#KV3_ProductLanguage2 from stg.KV3_ProductLanguage 
  
CREATE CLUSTERED INDEX CCI_ProductLanguage ON stg.#KV3_ProductLanguage2([ProductId]);

 


SELECT [ProductId],[UserCode],[Medium],[ProductDate],[EmbargoDate]
     ,[Availability],[DOI],[iLibraryURLAlias],[ObjectTypeId],[ProductType],[Title],[Subtitle],[Abstract],[ShortAbstract],[IgoId],[Issn]
      ,[iLibraryAccessTypeId],[Isbn10],[Isbn13],[Di],[ProductCode],[PageNumber],[PageSize],[ColorNumber],[EditionYear],[EditionNumber],[OpenData]
     ,[OecdDotstatCode],[OecdDotstatQueryId],[TimeRange],[Identifier],[Volume],[Issue],[Supplement],[CoverGroupId],[WorkId],[ExpressionId]  
INTO stg.#KV3_Product2 from stg.KV3_Product 
  
CREATE CLUSTERED INDEX CCI_Product ON stg.#KV3_Product2([ProductId]);  

 
 INSERT INTO stg.PS_Expression_DM_SA_OP
SELECT CAST([Exp].DOI  as nvarchar(100)) collate Latin1_General_CI_AS as  Expression_ExternalID  
      ,'KV3' collate Latin1_General_CI_AS  as ExternalSource
      ,[Exp].[DOI] collate Latin1_General_CI_AS as DOI
      ,[Exp].ISSN collate Latin1_General_CI_AS    as ISSN 
      ,[Exp].[Title] collate Latin1_General_CI_AS as [Title]
      ,[Exp].[SubTitle] collate Latin1_General_CI_AS as [SubTitle]
      ,[Exp].[Language] collate Latin1_General_CI_AS  as Language_ExternalID
      ,[Exp].[Directorate] collate Latin1_General_CI_AS  as Directorate_ExternalID
      ,[Exp].[Theme] collate Latin1_General_CI_AS  as Theme_ExternalID
      ,[Exp].[IGOId] as IGO_ExternalID
      ,[Exp].[ObjectTypeId] as ObjectType_ExternalID
      ,[Exp].[FirstReleaseDate] as [FirstRelease_Date]
      ,[Exp].[FirstExportDate] as [FirstExportDate]
      ,[Exp].[LatestExportDate] as [LatestExportDate]
      ,[Exp].[LatestDeletionDate] as [LatestDeletionDate]
      ,[Exp].[iLibraryURLAlias]
  FROM 
              (
            SELECT     
                 P.DOI
                ,P.ProductId
                ,P.Issn as ISSN
                ,P.Title
                ,P.Subtitle 
                ,ProductLanguage.Language
                ,#KV3_ProductTheme2.Theme
                ,#KV3_ProductDirectorate2.Directorate
                ,P.IgoId
                ,P.ObjectTypeId
                ,Dates.FirstReleaseDate
                ,Dates.FirstExportDate
                ,Dates.LatestDeletionDate
                ,Dates.LatestExportDate
                ,P.iLibraryURLAlias
            FROM 
             stg.#KV3_Product2 P
            INNER JOIN 
            (
                SELECT 
                    DOI
                    ,ProductId
                    ,ROW_NUMBER() OVER (PARTITION BY DOI 
                                        ORDER BY   
                                        CASE Medium
                                            WHEN 'e' THEN 1
                                            WHEN 'k' THEN 2
                                            ELSE ASCII(Medium) END ASC) ROW
                FROM  stg.#KV3_Product2
            ) Eligible ON Eligible.ProductId = P.ProductId
            LEFT OUTER JOIN 
            (
                /*** Récupération de FirstReleaseDate pour chaque expression 
                FirstReleaseDate est égale à FirstReleaseDate de la 1ère manifestation publiée ***/
                SELECT
                     DOI
                    ,MIN(FirstReleaseDate)    as FirstReleaseDate
                  ,MIN(FirstExportDate) as FirstExportDate
                  ,MAX(LatestDeletionDate) as LatestDeletionDate
                  ,MAX(LatestExportDate) as LatestExportDate
                FROM stg.view_US_Manifestation
                WHERE Medium <> 'FP'
                GROUP BY  DOI
            )AS [Dates]
                ON [Dates].DOI = P.DOI
            INNER JOIN stg.#KV3_ObjectType2 
                ON #KV3_ObjectType2.ObjectTypeId = P.ObjectTypeId
            INNER JOIN stg.#KV3_ProductTheme2
                ON #KV3_ProductTheme2.ProductId = P.ProductId
                AND #KV3_ProductTheme2.Main = 1
            INNER JOIN    
            (
                SELECT 
                    [Language]
                    ,ProductId
                    ,ROW_NUMBER() OVER (PARTITION BY ProductId 
                                        ORDER BY   
                                        CASE [Language]
                                            WHEN 'en' THEN 1
                                            ELSE ASCII([Language]) END ASC) ROW
                FROM  stg.#KV3_ProductLanguage2
            ) ProductLanguage ON ProductLanguage.ProductId = P.ProductId    

 

            INNER JOIN  stg.#KV3_ProductDirectorate2
                ON #KV3_ProductDirectorate2.ProductId = P.ProductId
                AND #KV3_ProductDirectorate2.Main = 1
            WHERE Eligible.ROW = 1 AND ProductLanguage.ROW = 1)
  
              [Exp]

RETURN 0

*/