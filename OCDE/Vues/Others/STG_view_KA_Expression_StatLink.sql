/* CREATE view [dbo].[view_KA_Expression_StatLink] as


SELECT 
	DOI_Item.ExpressionId,
	DOI_Item.[Identifier] as DOI,
	Null as ISSN,
	DOI_Item.[Metadata-Title] as Title,
	Null as SubTitle,
	Parent_Item.[Language],
	Parent_Item.[Directorate],	
	Parent_Item.[Theme]
	,Parent_Item.[IGOId]
	,0 as [ObjectTypeId]
	,Parent_Item.[FirstReleaseDate]
	,DOI_Item.Item as[iLibraryURLAlias]
	,Parent_Item.[FirstExportDate]
	,Parent_Item.[LatestExportDate]
	,Parent_Item.[LatestDeletionDate]


FROM (
	SELECT
		RIGHT([Metadata-Location],CHARINDEX('/',Reverse([metadata-Location]))-1) as Item,
		V_Exp.DOI,
		RIGHT(Stat.[Identifier],CHARINDEX('/',Reverse(Stat.[Identifier]))-1)  as [Identifier],
		[Metadata-Title],
		V_Exp.ExpressionIdentifier as ExpressionId
	FROM 
	Kappim.dbo.Statlink Stat
	LEFT OUTER JOIN [KappaV3_Daily].[dbo].[view_US_Expression] V_Exp
		ON V_Exp.ExpressionIdentifier = Stat.ProductCode	
	WHERE 
	[Metadata-Location] like '%/%.%'
	AND isInKappa = 1
) DOI_Item 
LEFT OUTER JOIN [KappaV3_Daily].[dbo].[view_US_ExpressionParent] Parent_Exp
	ON DOI_Item.DOI= Parent_Exp.ChildDOI
LEFT OUTER JOIN [KappaV3_Daily].[dbo].[view_US_Expression] Parent_Item 
	ON Parent_Item.DOI= Parent_Exp.ParentDoi
WHERE 
ISNULL(Parent_Item.DOI,'') <>''
 */
