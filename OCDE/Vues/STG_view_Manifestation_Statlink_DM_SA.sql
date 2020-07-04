CREATE view [stg].[view_Manifestation_Statlink_DM_SA]
AS
SELECT  

	[DOI] as [Manifestation_ExternalID]
	,[ExternalSource]
	,Expression_ID
	,51 as Format_ID 
	,FirstRelease_Date
	,null as ISBN13	

FROM [stg].[Expression_DM]
where [ExternalSource]='SL' and IsCurrent=1
