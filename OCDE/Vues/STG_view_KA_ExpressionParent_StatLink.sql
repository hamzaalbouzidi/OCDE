/*
USE [STG_UsageStat]
GO



CREATE view [stg].[view_KA_ExpressionParent_StatLink] as


SELECT
	V_ExpParent.ParentDoi as ParentDOI,
	RIGHT(Stat.[Identifier],CHARINDEX('/',Reverse(Stat.[Identifier]))-1)  as DOI
FROM
	Kappim.dbo.Statlink Stat
	LEFT OUTER JOIN [KappaV3_Daily].[dbo].[view_US_Expression] V_Exp
		ON V_Exp.ExpressionIdentifier = Stat.ProductCode
	LEFT OUTER JOIN [KappaV3_Daily].[dbo].[view_US_ExpressionParent] V_ExpParent
		ON V_Exp.DOI = V_ExpParent.ChildDOI
WHERE 
	[Metadata-Location] like '%/%.%'
	AND isInKappa = 1
	and ISNULL(V_ExpParent.ParentDoi,'') <>''
GO



*/