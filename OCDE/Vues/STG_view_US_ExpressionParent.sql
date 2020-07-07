CREATE view [stg].[view_US_ExpressionParent]
as
SELECT
	Child.DOI as ChildDOI,
	Parent.DOI as ParentDoi
FROM
	stg.KV3_Product Parent
	INNER JOIN stg.KV3_ExpressionCrossReference ECF
		ON Parent.ExpressionId = ECF.TargetExpressionId
	INNER JOIN stg.KV3_CrossReferenceType  CF
		ON ECF.CrossReferenceType = CF.CrossReferenceType
	INNER JOIN stg.KV3_Product Child
		ON Child.ExpressionId = ECF.ExpressionId
WHERE 
	-- all kind of includes link : Included in this product, Is archive Of, Has for complete version
	CF.CrossReferenceType in (10,300,6)	
	-- special cases exclusion
	AND NOT(
		-- exclude links from and to: Component group, Dataset Group and KeyTable : they don't have a dedicated page on iLibrary
		 Parent.ObjectTypeId IN (1005, 1004, 1206)
		 OR
		 Child.ObjectTypeId IN (1005, 1004, 1206)
		 OR
		-- Links from Chap to T/G
		(Parent.ObjectTypeId = 1401 AND Child.ObjectTypeId IN (1403, 1404))
	)
GROUP BY
Child.DOI,
Parent.DOI
GO