CREATE view [stg].[view_US_Expression] as
SELECT 	
	 P.DOI
	,P.ProductId
	,P.Identifier
	,left(P.Identifier, len(P.Identifier) - charindex('-', reverse(P.Identifier) + '-')) as ExpressionIdentifier
	,P.Issn as ISSN
	,P.Title
	,P.Subtitle
	,KV3_ObjectType.EnglishDesc as ItemType
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
	,P.iLibraryAccessTypeId
FROM 
stg.KV3_Product P
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
	FROM stg.KV3_Product
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
	FROM stg.view_US_Manifestation
	WHERE Medium <> 'FP'
	GROUP BY  DOI
)AS [Dates]
	ON [Dates].DOI = P.DOI
INNER JOIN stg.KV3_ObjectType 
	ON KV3_ObjectType.ObjectTypeId = P.ObjectTypeId
INNER JOIN stg.KV3_ProductTheme
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
	FROM stg.KV3_ProductLanguage
) ProductLanguage ON ProductLanguage.ProductId = P.ProductId	

INNER JOIN stg.KV3_ProductDirectorate
	ON KV3_ProductDirectorate.ProductId = P.ProductId
	AND KV3_ProductDirectorate.Main = 1
WHERE Eligible.ROW = 1 AND ProductLanguage.ROW = 1
