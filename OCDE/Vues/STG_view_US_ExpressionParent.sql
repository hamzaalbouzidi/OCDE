CREATE view [stg].[view_US_ExpressionParent]
as
SELECT
	Child.DOI as ChildDOI,
	KV3_ProductCrossReference.Target as ParentDoi
FROM
	stg.KV3_ProductCrossReference
	INNER JOIN stg.KV3_CrossReferenceType 
		ON KV3_ProductCrossReference.CrossReferenceType = KV3_CrossReferenceType.CrossReferenceType
	INNER JOIN stg.KV3_Product Child
		ON Child.ProductId = KV3_ProductCrossReference.ProductId
WHERE 
	KV3_CrossReferenceType.CrossReferenceType in (10,300)
GROUP BY
Child.DOI,
KV3_ProductCrossReference.Target
GO