CREATE VIEW [stg].[view_Manifestation_SA_Check_ExternalIDs]
AS
SELECT   
		CASE
			WHEN expr.[Expression_ExternalID]	IS NULL		THEN 'Expression_ExternalID not matched'
			WHEN form.[Format_ExternalID]			IS NULL		THEN 'Format_ExternalID not matched'			
		 END AS Reason
	  ,[Manifestation_ExternalID]
      ,[STG_Manifestation_SA].[ExternalSource]
      ,[STG_Manifestation_SA].[Expression_ExternalID]
      ,[STG_Manifestation_SA].[Format_ExternalID]
      ,[STG_Manifestation_SA].[FirstRelease_Date]
	FROM [stg].[STG_Manifestation_SA] 
	LEFT OUTER JOIN (select [Expression_ExternalID] from [stg].Expression_DM ) expr
		ON expr.[Expression_ExternalID]	= [stg].[STG_Manifestation_SA].[Expression_ExternalID]
	LEFT OUTER JOIN (select [Format_ExternalID] from [stg].Format_DM ) form
		ON form.[Format_ExternalID]			= [stg].[STG_Manifestation_SA].[Format_ExternalID]	
	WHERE  expr.[Expression_ExternalID] IS NULL
		OR form.[Format_ExternalID]		 IS NULL
