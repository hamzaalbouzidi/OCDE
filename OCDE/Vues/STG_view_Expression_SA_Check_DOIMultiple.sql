/*
CREATE view [stg].[view_Expression_SA_Check_DOIMultiple]
as


SELECT
      'DOI appears ' + cast(DOIMultiple.occurence  as varchar(10)) + ' times' as Reason
	  ,SA.[Expression_ExternalID]
      ,SA.[ExternalSource]
      ,SA.[DOI]
      ,SA.[ISSN]
      ,SA.[EISSN]
      ,SA.[Title]
      ,SA.[SubTitle] 
	  ,SA.[ItemType]
      ,SA.[Language_ExternalID]
      ,SA.[Directorate_ExternalID]
      ,SA.[Theme_ExternalID]
      ,SA.[Igo_ExternalID]
      ,SA.[ObjectType_ExternalID]
      ,SA.[FirstRelease_Date]
      ,SA.[iLibraryURLAlias]
      ,SA.[Parent]
      ,SA.[TopParent]
      ,ROW_NUMBER() OVER (PARTITION BY SA.DOI
							ORDER BY [Expression_ExternalID]) AS Occurence      
FROM [stg].STG_Expression_SA SA
INNER JOIN (
	SELECT
		DOI
		,Count(*) AS occurence
	FROM [stg].STG_Expression_SA
	WHERE ISNULL(DOI,'')<>''
	GROUP BY DOI
	HAVING Count(*)>1
	
)DOIMultiple ON DOIMultiple.DOI = SA.DOI
GO

*/