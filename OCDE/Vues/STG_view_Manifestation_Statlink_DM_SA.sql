CREATE view [stg].[view_Manifestation_Statlink_DM_SA]
AS
SELECT  

	[DOI] as [Manifestation_ExternalID]
	,[ExternalSource]
	,Expression_ID
	--,51 as Format_ID 
	,(SELECT TOP 1 Format_ID
                                FROM [dwh].Format_DM
                                WHERE Format_ExternalID = 'StatLink'
                                AND IsCurrent = 1
                                AND  NA_Import = 0) as Format_ID
	,FirstRelease_Date
	,null as ISBN13	

FROM [dwh].[Expression_DM]
where [ExternalSource]='SL' and IsCurrent=1
