CREATE view [stg].[view_ExpressionParent_StatLink] as

SELECT
	V_ExpParent.ParentDoi as ParentDOI,
	RIGHT(Stat.[Identifier],CHARINDEX('/',Reverse(Stat.[Identifier]))-1)  as DOI
FROM
	stg.Statlink Stat
	LEFT OUTER JOIN [stg].[PS_US_Expression] V_Exp
		ON V_Exp.ExpressionIdentifier = Stat.ProductCode
	LEFT OUTER JOIN [stg].[view_US_ExpressionParent] V_ExpParent
		ON V_Exp.DOI = V_ExpParent.ChildDOI
WHERE 
	[Metadata-Location] like '%/%.%'
	AND isInKappa = 1
	and ISNULL(V_ExpParent.ParentDoi,'') <>''
