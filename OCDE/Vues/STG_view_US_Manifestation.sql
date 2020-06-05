CREATE view [stg].[view_US_Manifestation] as

SELECT * from (
SELECT 
	 P.ProductId
	,P.DOI
	,P.Medium
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
INNER JOIN KV3_ProductExportChannel PEC
	ON P.ProductId = PEC.ProductId
	
WHERE PEC.ExportChannelId = 1 ) Manif where Manif.RankManif=1