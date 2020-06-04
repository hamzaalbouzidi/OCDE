CREATE VIEW [stg].[view_BrowseItMonthly_SA_TMP]
AS
SELECT     Expression_ID, item,substring([Date],1,4)+'-'+ substring([Date],5,2)+'-01' as [Date], SUM(Downloads) AS Downloads
FROM         (SELECT     TMP.item, TMP.[Date], TMP.Downloads, E.Expression_ID
                       FROM          
					   
(SELECT item,[Date],COUNT(*) AS Downloads
FROM (SELECT     SUBSTRING(item, CHARINDEX('=', item, 0) + 1, LEN(item) - CHARINDEX(item, 'ref=', 0) + 1) AS item,[Date]
FROM         (SELECT     REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(item, CHAR(160), CHAR(32)), CHAR(14), CHAR(32)), CHAR(13), CHAR(32)), 
                                              CHAR(12), CHAR(32)), CHAR(11), CHAR(32)), CHAR(10), CHAR(32)), CHAR(9), CHAR(32)), CHAR(0), CHAR(32)) AS item
											  ,[Date]
                       FROM          stg.STG_BrowseIt_TMP) ImportBrowseIt where item is not null and item<>'' ) CleanedBrowseItList
                       
                       GROUP BY item,[Date]) TMP					   
					   
					   
					   
					    LEFT OUTER JOIN
                                              stg.STG_BrowseIt_OPKV2  LEFT OUTER  JOIN
                                              stg.Manifestation_DM AS M  LEFT OUTER  JOIN
                                              stg.Expression_DM AS E ON E.Expression_ID = M.Expression_ID ON [stg].STG_BrowseIt_OPKV2.ProductId = M.Manifestation_ExternalID ON 
                                              [stg].STG_BrowseIt_OPKV2.DI = TMP.item
                       WHERE      (E.IsCurrent = 1 OR E.IsCurrent IS NULL) AND (M.ExternalSource = 'KV2' OR M.ExternalSource IS NULL ) AND (M.IsCurrent = 1 OR M.IsCurrent IS NULL)
                       ) AS BrowseItDL
GROUP BY Expression_ID, item,[Date]
GO