CREATE VIEW [stg].[view_DIM_Expression_Metadata] 
--WITH SCHEMABINDING
AS

SELECT
	 Expression_DM.Expression_ID
	,Correspondance.Expression_ID CurExpId 
	,Correspondance.DOI
	,Correspondance.iLibraryURLAlias
	,Correspondance.iLibraryAccessMode
	,Correspondance.FirstRelease_Date	
	,Correspondance.Title +
		CASE 
			WHEN ISNULL(Correspondance.SubTitle,'')<>'' THEN ': ' + Correspondance.SubTitle
			ELSE
			''
		END as FullTitle	
	,Correspondance.FirstExportDate
	,Correspondance.LatestDeletionDate
	,Correspondance.LatestExportDate
	,Correspondance.Directorate_ID
	,Correspondance.Language_ID
	,Correspondance.Theme_ID
	,Correspondance.Igo_ID
	,Correspondance.ObjectType_ID 
	,Correspondance.ISSN
	,Correspondance.TopParent_ID
	,Correspondance.Top2Parent_ID
	,Correspondance.Top3Parent_ID 
	
      ,Correspondance.[HasEpub]
      ,Correspondance.[HasEBook]
      ,Correspondance.[HasRead]
      ,Correspondance.[HasHTML]
      ,Correspondance.[HasExcel]

FROM [stg].Expression_DM

INNER JOIN (SELECT t.* from  (SELECT * ,RANK() OVER (PARTITION BY  DOI ORDER BY expression_id desc   ) AS RankExp  FROM [stg].[Expression_DM] where doi is not null and doi<>'') t where t.RankExp=1) Correspondance

ON Expression_DM.DOI=Correspondance.DOI

 UNION
 
SELECT
	 Expression_DM.Expression_ID
	,Expression_DM.Expression_ID as CurExpId 
	,Expression_DM.DOI
	,Expression_DM.iLibraryURLAlias
	,Expression_DM.iLibraryAccessMode
	,Expression_DM.FirstRelease_Date	
	,Expression_DM.Title +
		CASE 
			WHEN ISNULL(Expression_DM.SubTitle,'')<>'' THEN ': ' + Expression_DM.SubTitle
			ELSE
			''
		END as FullTitle	
	,Expression_DM.FirstExportDate
	,Expression_DM.LatestDeletionDate
	,Expression_DM.LatestExportDate
	,Expression_DM.Directorate_ID
	,Expression_DM.Language_ID
	,Expression_DM.Theme_ID
	,Expression_DM.Igo_ID
	,Expression_DM.ObjectType_ID 
	,Expression_DM.ISSN
	,Expression_DM.TopParent_ID
	,Expression_DM.Top2Parent_ID
	,Expression_DM.Top3Parent_ID 
	
	
      ,Expression_DM.[HasEpub]
      ,Expression_DM.[HasEBook]
      ,Expression_DM.[HasRead]
      ,Expression_DM.[HasHTML]
      ,Expression_DM.[HasExcel]

FROM [stg].Expression_DM

LEFT OUTER JOIN (SELECT t.* from  (SELECT * ,RANK() OVER (PARTITION BY  DOI ORDER BY expression_id desc   ) AS RankExp  FROM [stg].[Expression_DM] where doi is not null and doi<>'') t where t.RankExp=1) Correspondance

ON Expression_DM.DOI=Correspondance.DOI where Correspondance.Expression_ID is null
GO