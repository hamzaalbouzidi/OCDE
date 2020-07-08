CREATE view [stg].[view_Manifestation_DM_SA]
AS

--MANIFESTATION FROM KAPPA
SELECT 
	SA.[Manifestation_ExternalID]
	,SA.[ExternalSource]
	,Expression.Expression_ID
	,Format.Format_ID 
	,SA.[FirstReleaseDate] as FirstRelease_Date
	,SA.ISBN13	

FROM 
(  
	SELECT   CAST([ProductId] AS nvarchar(100)) collate Latin1_General_CI_AS  AS Manifestation_ExternalID
		,'KV3' AS ExternalSource
		,CAST(DOI AS nvarchar(100)) collate Latin1_General_CI_AS AS Expression_ExternalID 
		,[Medium]  collate Latin1_General_CI_AS AS Format_ExternalID	
		, ISBN13		
		,CAST([FirstReleaseDate] as date) as  [FirstReleaseDate]

  FROM 

  (

		SELECT 
			 ProductId
			,DOI
			,Medium
			,FirstReleaseDate
			,FirstExportDate
			,LatestDeletionDate
			,LatestExportDate
			,RankManif
			,Isbn13
			from (
		SELECT 
			 P.ProductId
			,P.DOI
			,P.Medium
			,P.Isbn13
			,(
				SELECT MAX(ED) FROM (
					VALUES (EmbargoDate)				
						,(P.ProductDate )
				) AS TMP(ED)
			) as FirstReleaseDate
			,PEC.FirstExportDate
			,PEC.LatestDeletionDate
			,PEC.LatestExportDate
			,RANK() OVER (PARTITION BY   P.DOI,P.Medium ORDER BY P.ProductId desc  ) AS RankManif
		FROM 
		stg.KV3_Product P
		INNER JOIN stg.KV3_ProductExportChannel PEC
			ON P.ProductId = PEC.ProductId
	
		WHERE PEC.ExportChannelId = 1 ) Manif where Manif.RankManif=1
  ) KV3 

) SA
INNER JOIN [stg].Expression_DM Expression
	ON Expression.Expression_ExternalID = SA.Expression_ExternalID
	AND Expression.ExternalSource = SA.ExternalSource
	AND Expression.IsCurrent = 1
	AND Expression.NA_Import = 0
INNER JOIN [stg].Format_DM Format
	ON Format.Format_ExternalID = SA.Format_ExternalID
	AND Format.ExternalSource = SA.ExternalSource
	AND Format.IsCurrent = 1
	AND Format.NA_Import = 0
GROUP BY
	SA.[Manifestation_ExternalID]
	,SA.[ExternalSource]
	,SA.Format_ExternalID
	,Expression.Expression_ID
	,Format.Format_ID 
	,SA.[FirstReleaseDate]
	,SA.ISBN13	


UNION
--FREEPREVIEW AUTO GENERATED MANIFESTATION


SELECT  

	SA.[Manifestation_ExternalID]
	,'FP' AS [ExternalSource]
	,Expression.Expression_ID
	, 53 as Format_ID 
	,SA.[FirstReleaseDate] as FirstRelease_Date
	,SA.ISBN13	

FROM 
(  

	SELECT   CAST([ProductId] AS nvarchar(100)) collate Latin1_General_CI_AS AS Manifestation_ExternalID
		,'KV3' AS ExternalSource
		,CAST(DOI AS nvarchar(100))collate Latin1_General_CI_AS  AS Expression_ExternalID 
		,[Medium] collate Latin1_General_CI_AS AS Format_ExternalID	
		, ISBN13		
		,CAST([FirstReleaseDate] as date) as  [FirstReleaseDate]

  FROM 

  (

		SELECT 
			 ProductId
			,DOI
			,Medium
			,FirstReleaseDate
			,FirstExportDate
			,LatestDeletionDate
			,LatestExportDate
			,Isbn13
			,RankManif from (
		SELECT 
			 P.ProductId
			,P.DOI
			,P.Medium
			,P.Isbn13
			,(
				SELECT MAX(ED) FROM (
					VALUES (EmbargoDate)				
						,(P.ProductDate )
				) AS TMP(ED)
			) as FirstReleaseDate
			,PEC.FirstExportDate
			,PEC.LatestDeletionDate
			,PEC.LatestExportDate
			,RANK() OVER (PARTITION BY   P.DOI,P.Medium ORDER BY P.ProductId desc  ) AS RankManif
		FROM 
		stg.KV3_Product P
		INNER JOIN stg.KV3_ProductExportChannel PEC
			ON P.ProductId = PEC.ProductId
	
		WHERE PEC.ExportChannelId = 1 ) Manif where Manif.RankManif=1
  ) KV3 

 ) SA
INNER JOIN [stg].Expression_DM Expression
	ON Expression.Expression_ExternalID = SA.Expression_ExternalID
	AND Expression.ExternalSource = SA.ExternalSource
	AND Expression.IsCurrent = 1
	AND Expression.NA_Import = 0
INNER JOIN [stg].Format_DM Format
	ON Format.Format_ExternalID = SA.Format_ExternalID
	AND Format.ExternalSource = SA.ExternalSource
	AND Format.IsCurrent = 1
	AND Format.NA_Import = 0
WHERE   Format.format_id in (11,36,41,44) or (Format.format_id in (35,48) and Expression.HasEBook=0)
GROUP BY
	SA.[Manifestation_ExternalID]
	,SA.[ExternalSource]
	,SA.Format_ExternalID
	,Expression.Expression_ID
	,Format.Format_ID 
	,SA.[FirstReleaseDate]
	,SA.ISBN13
GO

