/* CREATE view [dbo].[view_Expression_DM_SA_OPKV3]
AS

SELECT CAST([Exp].DOI  as nvarchar(100)) collate Latin1_General_CI_AS as  Expression_ExternalID  
	  ,'KV3' collate Latin1_General_CI_AS  as ExternalSource
	  ,[Exp].[DOI] collate Latin1_General_CI_AS as DOI
	  ,[Exp].ISSN collate Latin1_General_CI_AS	as ISSN 
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
				,KV3_ProductTheme.Theme
				,KV3_ProductDirectorate.Directorate
				,P.IgoId
				,P.ObjectTypeId
				,Dates.FirstReleaseDate
				,Dates.FirstExportDate
				,Dates.LatestDeletionDate
				,Dates.LatestExportDate
				,P.iLibraryURLAlias
			FROM 
			 [KappaV3_Daily].dbo.KV3_Product P
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
				FROM  [KappaV3_Daily].dbo.KV3_Product
			) Eligible ON Eligible.ProductId = P.ProductId
			LEFT OUTER JOIN 
			(
				/*** Récupération de FirstReleaseDate pour chaque expression 
				FirstReleaseDate est égale à FirstReleaseDate de la 1ère manifestation publiée ***/
				SELECT
					 DOI
					,MIN(FirstReleaseDate)	as FirstReleaseDate
				  ,MIN(FirstExportDate) as FirstExportDate
				  ,MAX(LatestDeletionDate) as LatestDeletionDate
				  ,MAX(LatestExportDate) as LatestExportDate
				FROM [KappaV3_Daily].dbo.view_US_Manifestation
				WHERE Medium <> 'FP'
				GROUP BY  DOI
			)AS [Dates]
				ON [Dates].DOI = P.DOI
			INNER JOIN [KappaV3_Daily].dbo.KV3_ObjectType 
				ON KV3_ObjectType.ObjectTypeId = P.ObjectTypeId
			INNER JOIN [KappaV3_Daily].dbo.KV3_ProductTheme
				ON KV3_ProductTheme.ProductId = P.ProductId
				AND KV3_ProductTheme.Main = 1
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
				FROM  [KappaV3_Daily].dbo.KV3_ProductLanguage
			) ProductLanguage ON ProductLanguage.ProductId = P.ProductId	

			INNER JOIN  [KappaV3_Daily].dbo.KV3_ProductDirectorate
				ON KV3_ProductDirectorate.ProductId = P.ProductId
				AND KV3_ProductDirectorate.Main = 1
			WHERE Eligible.ROW = 1 AND ProductLanguage.ROW = 1)
  
			  [Exp]
GO
 */